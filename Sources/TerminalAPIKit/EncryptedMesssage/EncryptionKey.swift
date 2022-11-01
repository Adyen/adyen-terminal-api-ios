//
//  EncryptionKey.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation
import CommonCrypto

/// Describes errors that can happen during der
public struct KeyDerivationError: Error {
    
    /// The result code of the failed key derivation.
    public let errorCode: CCStatus
    
}

/// A key used to encrypt and decrypt messages.
public struct EncryptionKey {
    
    /// The identifier of the key.
    public let identifier: String
    
    /// The version of the key.
    public let version: UInt
    
    /// The raw key data.
    public let data: Data
    
    /// Initializes an encryption key.
    ///
    /// - Parameters:
    ///   - identifier: The identifier of the key.
    ///   - version: The version of the key.
    ///   - data: The raw key data. Must be 80 bytes long.
    public init(identifier: String, version: UInt, data: Data) {
        assert(data.count == EncryptionKey.totalLength, "Raw key data must be \(EncryptionKey.totalLength) bytes long.")
        
        self.identifier = identifier
        self.version = version
        self.data = data
    }
    
    // MARK: - Key derivation
    
    /// Derives a key from given passhprage, identifier and version.
    ///
    /// The `passphrase`, `identifier` and `version` can be found in the terminal settings in the Customer Area,
    /// under Integrations -> Terminal API -> Encryption key. Pass them in a string form, exactly as they appear.
    ///
    /// - Parameters:
    ///   - passphrase: The passphrase of the key.
    ///   - identifier: The identifier of the key.
    ///   - version: The version of the key.
    ///
    /// - Throws: ``KeyDerivationError`` if key derivation was unsuccessful.
    public init(
        passphrase: String,
        identifier: String,
        version: UInt
    ) throws {
        let keyData = try Self.pbkdf2SHA1(
            passphrase: passphrase,
            salt: Data(Self.saltphrase.utf8),
            keyByteCount: Self.keyLength,
            rounds: Self.keyDerivationPasses
        )
        
        self.init(identifier: identifier, version: version, data: keyData)
    }
    
    // MARK: - Key Slices
    
    /// The key used for HMAC operations.
    internal var hmacKey: Data {
        return Data(data[hmacKeyRange])
    }
    
    /// The key used for AES operations.
    internal var aesKey: Data {
        return Data(data[aesKeyRange])
    }
    
    /// The initialization vector, used for AES operations.
    internal var initializationVector: Data {
        return Data(data[initializationVectorRange])
    }
    
    // MARK: - Key Slice Lengths & Ranges
    
    /// Length of the HMAC key.
    private static let hmacKeyLength = 32
    
    /// Length of the AES key.
    private static let aesKeyLength = 32
    
    /// Length of the initialization vector.
    private static let initializationVectorLength = 16
    
    /// Total length of the key material.
    private static let totalLength = hmacKeyLength + aesKeyLength + initializationVectorLength
    
    private var hmacKeyRange: Range<Int> {
        return 0..<EncryptionKey.hmacKeyLength
    }
    
    private var aesKeyRange: Range<Int> {
        return hmacKeyRange.upperBound..<hmacKeyRange.upperBound + EncryptionKey.aesKeyLength
    }
    
    private var initializationVectorRange: Range<Int> {
        return aesKeyRange.upperBound..<aesKeyRange.upperBound + EncryptionKey.initializationVectorLength
    }
    
    private static let saltphrase = "AdyenNexoV1Salt"
    private static let keyLength = 80
    private static let keyDerivationPasses = 4000
    
    private static func pbkdf2SHA1(
        passphrase: String,
        salt: Data,
        keyByteCount: Int,
        rounds: Int
    ) throws -> Data {
        
        let passphraseData = Data(passphrase.utf8)
        var derivedKeyData: [UInt8] = .init(repeating: 0, count: keyByteCount)
        
        let derivationStatus = CCKeyDerivationPBKDF(
            CCPBKDFAlgorithm(kCCPBKDF2),
            passphrase,
            passphraseData.count,
            salt.bytes,
            salt.count,
            CCPBKDFAlgorithm(kCCPRFHmacAlgSHA1),
            UInt32(rounds),
            &derivedKeyData,
            derivedKeyData.count
        )
        
        guard derivationStatus == 0 else {
            throw KeyDerivationError(errorCode: derivationStatus)
        }
        
        return Data(derivedKeyData)
    }
    
}
