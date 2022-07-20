//
//  PaymentToken.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class PaymentToken: Codable {
    
    /// Undocumented.
    public let tokenRequestedType: TokenRequestedType
    
    /// Undocumented.
    public let tokenValue: String
    
    /// Undocumented.
    public let expiryDateTime: Date?
    
    /// Initializes the PaymentToken.
    ///
    /// - Parameter tokenRequestedType: Undocumented.
    /// - Parameter tokenValue: Undocumented.
    /// - Parameter expiryDateTime: Undocumented.
    public init(tokenRequestedType: TokenRequestedType, tokenValue: String, expiryDateTime: Date? = nil) {
        self.tokenRequestedType = tokenRequestedType
        self.tokenValue = tokenValue
        self.expiryDateTime = expiryDateTime
    }
    
    internal enum CodingKeys: String, CodingKey {
        case tokenRequestedType = "TokenRequestedType"
        case tokenValue = "TokenValue"
        case expiryDateTime = "ExpiryDateTime"
    }
    
}
