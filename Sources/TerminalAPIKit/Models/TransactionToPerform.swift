//
//  TransactionToPerform.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class TransactionToPerform: Codable {
    
    /// Undocumented.
    public let paymentRequest: PaymentRequest?
    
    /// Undocumented.
    public let loyaltyRequest: LoyaltyRequest?
    
    /// Undocumented.
    public let reversalRequest: ReversalRequest?
    
    /// Initializes the TransactionToPerform.
    ///
    /// - Parameter paymentRequest: Undocumented.
    /// - Parameter loyaltyRequest: Undocumented.
    /// - Parameter reversalRequest: Undocumented.
    public init(paymentRequest: PaymentRequest? = nil, loyaltyRequest: LoyaltyRequest? = nil, reversalRequest: ReversalRequest? = nil) {
        self.paymentRequest = paymentRequest
        self.loyaltyRequest = loyaltyRequest
        self.reversalRequest = reversalRequest
    }
    
    internal enum CodingKeys: String, CodingKey {
        case paymentRequest = "PaymentRequest"
        case loyaltyRequest = "LoyaltyRequest"
        case reversalRequest = "ReversalRequest"
    }
    
}
