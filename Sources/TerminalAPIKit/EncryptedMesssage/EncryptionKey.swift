//
//  EncryptionKey.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

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
    
}
