//
//  EncryptedMessageTests.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import XCTest
@testable import TerminalAPIKit
import CryptoKit

final class EncryptedMessageTests: XCTestCase {
    
    func generateTestKey() -> EncryptionKey {
        let hmacKey = SymmetricKey(size: .bits256)
        let aesKey = SymmetricKey(size: .bits256)
        let nonce = Data(secureRandomBytesWithCount: 16)!
        var data = Data(capacity: 80)
        
        hmacKey.withUnsafeBytes { hmacPointer in
            aesKey.withUnsafeBytes { aesPointer in
                let hmacBytes: [UInt8] = Array(hmacPointer[0..<32])
                data.append(contentsOf: hmacBytes)
                let aesBytes: [UInt8] = Array(aesPointer[0..<32])
                data.append(contentsOf: aesBytes)
            }
        }
        
        data.append(nonce)
        
        return .init(identifier: "TestKey", version: 0, data: data)
    }
    
    func deriveTestKey() throws -> EncryptionKey {
        let passphrase = "Some passpharse"
        let keyIdentifier = "Some key identifier"
        let keyVersion: UInt = 0
        
        return try .init(
            passphrase: passphrase,
            identifier: keyIdentifier,
            version: keyVersion
        )
    }
    
    func createPaymentRequest() throws -> Message<PaymentRequest> {
        let request: PaymentRequest = .init(
            saleData: .init(
                saleTransactionIdentifier: .init(
                    transactionIdentifier: UUID().uuidString,
                    date: Date()
                )
            ),
            paymentTransaction: .init(
                amounts: .init(
                    currency: "USD",
                    requestedAmount: 20.00
                )
            )
        )
        
        return .init(
            header: .init(
                for: request,
                saleIdentifier: UUID().uuidString,
                poiIdentifier: UUID().uuidString
            ),
            body: request
        )
    }
    
    func validateMessageEncryption(using key: EncryptionKey) throws {
        let initialMessage = try createPaymentRequest()
        let encoder = JSONEncoder()
        encoder.outputFormatting = .sortedKeys
        encoder.dateEncodingStrategy = .custom { date, encoder in
            var container = encoder.singleValueContainer()
            let seconds = Int(date.timeIntervalSince1970)
            try container.encode(seconds)
        }

        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .custom { decoder in
            let container = try decoder.singleValueContainer()
            let seconds = try container.decode(Int.self)
            return Date(timeIntervalSince1970: TimeInterval(seconds))
        }

        let encodedInitialMessage = try encoder.encode(initialMessage)
        let encryptedMessage: EncryptedMessage = try initialMessage.encrypt(using: key)
        let encodedEncryptedMessage: Data = try encoder.encode(encryptedMessage)
        let decodedEncryptedMessage: EncryptedMessage = try decoder.decode(EncryptedMessage.self, from: encodedEncryptedMessage)
        let decryptedMessage = try decodedEncryptedMessage.decrypt(PaymentRequest.self, using: key)
        let encodedDecryptedMessage = try encoder.encode(decryptedMessage)

        XCTAssertEqual(encodedInitialMessage, encodedDecryptedMessage)
    }

    func testMessageEncryptionDecryptionWithGeneratedKey() throws {
        try validateMessageEncryption(using: generateTestKey())
    }
    
    func testMessageEncryptionDecryptionWithDerivedKey() throws {
        try validateMessageEncryption(using: try deriveTestKey())
    }

}
