//
//  EncryptedMessage.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// An encrypted message that can be sent to or received from a Nexo device.
public final class EncryptedMessage: Codable {
    
    /// The header of the message.
    public let header: MessageHeader
    
    /// The encrypted body of the message.
    public let body: Data
    
    /// The security trailer of the message.
    public let securityTrailer: SecurityTrailer
    
    /// Initializes the encrypted message.
    ///
    /// - Parameters:
    ///   - header: The header of the message.
    ///   - body: The encrypted body of the message.
    ///   - securityTrailer: The security trailer of the message.
    public init(header: MessageHeader, body: Data, securityTrailer: SecurityTrailer) {
        self.header = header
        self.body = body
        self.securityTrailer = securityTrailer
    }
    
    /// Initializes the encrypted message by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)
        
        guard let subcontainerKey = container.allKeys.first else {
            let context = DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Empty container.")
            
            throw DecodingError.dataCorrupted(context)
        }
        
        let subcontainer = try container.nestedContainer(keyedBy: StringCodingKey.self, forKey: subcontainerKey)
        header = try subcontainer.decode(MessageHeader.self, forKey: "MessageHeader")
        body = try subcontainer.decode(Data.self, forKey: "NexoBlob")
        securityTrailer = try subcontainer.decode(SecurityTrailer.self, forKey: "SecurityTrailer")
    }
    
    /// Encodes the encrypted message into the given encoder.
    ///
    /// This function throws an error if any values are invalid for the given encoder’s format.
    ///
    /// - Parameter encoder: The encoder to write data to.
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)
        var nestedContainer = container.nestedContainer(keyedBy: StringCodingKey.self, forKey: StringCodingKey(for: header.messageType))
        try nestedContainer.encode(header, forKey: "MessageHeader")
        try nestedContainer.encode(body, forKey: "NexoBlob")
        try nestedContainer.encode(securityTrailer, forKey: "SecurityTrailer")
    }
    
}

// MARK: - Encrypt

public extension Message {
    
    /// Encrypts and signs the message.
    ///
    /// - Parameters:
    ///   - encryptionKey: The encryption key to use for encrypting and signing the message.
    ///   - coder: The coder to use to encode the message.
    /// - Returns: An encrypted message.
    /// - Throws: An ``AESError``, ``EncodingError``, or ``MessageEncryptionError``
    func encrypt(using encryptionKey: EncryptionKey) throws -> EncryptedMessage {
        guard let initializationVectorModifier = Data(secureRandomBytesWithCount: encryptionKey.initializationVector.count) else {
            fatalError("Failed to securely generate initialization vector modifier.")
        }
        
        let initializationVector = encryptionKey.initializationVector ^ initializationVectorModifier
        
        let encodedMessage = try Coder.encode(self)
        let body = try aes(.encrypt, input: encodedMessage, key: encryptionKey.aesKey, initializationVector: initializationVector)
        let signature = hmac(for: encodedMessage, key: encryptionKey.hmacKey)
        
        let securityTrailer = SecurityTrailer(
            keyVersion: encryptionKey.version,
            keyIdentifier: encryptionKey.identifier,
            signature: signature,
            initializationVectorModifier: initializationVectorModifier,
            cryptoVersion: 1
        )
        
        return EncryptedMessage(header: header, body: body, securityTrailer: securityTrailer)
    }
    
}

// MARK: - Decrypt

public extension EncryptedMessage {
    
    /// Decrypts and validates the message.
    ///
    /// - Parameters:
    ///   - messageBodyType: The type of the body of the decrypted message.
    ///   - encryptionKey: The encryption to use for decrypting and validating the message.
    ///   - coder: The coder to use to decode the message.
    /// - Returns: A decrypted message.
    /// - Throws: An ``AESError``, ``EncodingError`` or ``MessageDecryptionError``.
    func decrypt<T>(_ messageBodyType: T.Type, using encryptionKey: EncryptionKey) throws -> Message<T> {
        guard securityTrailer.cryptoVersion == 1 else {
            throw MessageDecryptionError.unsupportedCryptoVersion
        }
        
        let initializationVector = encryptionKey.initializationVector ^ securityTrailer.initializationVectorModifier
        let decryptedMessage = try aes(.decrypt, input: body, key: encryptionKey.aesKey, initializationVector: initializationVector)
        
        let signature = hmac(for: decryptedMessage, key: encryptionKey.hmacKey)
        guard signature == securityTrailer.signature else {
            throw MessageDecryptionError.invalidSignature
        }
        
        let decodedMessage = try Coder.decode(Message<T>.self, from: decryptedMessage)
        
        guard header == decodedMessage.header else {
            throw MessageDecryptionError.invalidHeader
        }
        
        return decodedMessage
    }
    
}

/// An error that occured during the encryption of a message.
public enum MessageEncryptionError: Error {
    
    /// Failed to securely generate initialization vector modifier.
    case initializationErrorGenerationFailure
    
}

/// An error that occurred during the decryption of a message.
public enum MessageDecryptionError: Error {
    
    /// Indicates the encrypted message's header does not match the decrypted message's header.
    case invalidHeader
    
    /// Indicates the encrypted message's embedded signature does not match the decoded message's signature.
    case invalidSignature
    
    /// Indicates the encrypted message's crypto version is not supported.
    case unsupportedCryptoVersion
    
}
