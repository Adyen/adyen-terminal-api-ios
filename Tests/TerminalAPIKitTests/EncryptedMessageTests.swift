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
        let hmacKey: ContiguousBytes
        let aesKey: ContiguousBytes
        if #available(iOS 13.0, *) {
            hmacKey = SymmetricKey(size: .bits256)
            aesKey = SymmetricKey(size: .bits256)
        } else {
            hmacKey = Data(count: 256 / 8)
            aesKey = Data(count: 256 / 8)
        }
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
        let encodedInitialMessage = try Coder.encode(initialMessage)
        let encryptedMessage: EncryptedMessage = try initialMessage.encrypt(using: key)
        let encodedEncryptedMessage: Data = try Coder.encode(encryptedMessage)
        let decodedEncryptedMessage: EncryptedMessage = try Coder.decode(EncryptedMessage.self, from: encodedEncryptedMessage)
        let decryptedMessage = try decodedEncryptedMessage.decrypt(PaymentRequest.self, using: key)
        let encodedDecryptedMessage = try Coder.encode(decryptedMessage)
        
        XCTAssertEqual(encodedInitialMessage, encodedDecryptedMessage)
    }

    func testMessageEncryptionDecryptionWithGeneratedKey() throws {
        try validateMessageEncryption(using: generateTestKey())
    }
    
    func testMessageEncryptionDecryptionWithDerivedKey() throws {
        try validateMessageEncryption(using: try deriveTestKey())
    }

}
