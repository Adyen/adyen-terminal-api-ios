//
//  SecurityTrailer.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Contains information on the encryption key and the message's signature, used for decrypting and validating the message.
public struct SecurityTrailer: Codable {
    
    /// The version of the used encryption key.
    public let keyVersion: UInt
    
    /// The identifier of the used encryption key.
    public let keyIdentifier: String
    
    /// An HMAC-SHA256 signature of the message.
    public let signature: Data
    
    /// The modifier used to generate the initialization vector.
    public let initializationVectorModifier: Data
    
    /// The used Adyen Nexo crypto version.
    public let cryptoVersion: UInt
    
    internal enum CodingKeys: String, CodingKey {
        case keyVersion = "KeyVersion"
        case keyIdentifier = "KeyIdentifier"
        case signature = "Hmac"
        case initializationVectorModifier = "Nonce"
        case cryptoVersion = "AdyenCryptoVersion"
    }
    
}
