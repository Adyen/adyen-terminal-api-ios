//
//  LoyaltyAmount.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Amount of a loyalty account.
/// An awarded amount or an amount to redeem to the loyalty account might be sent in the Payment request message. The amount to apply on the requested loyalty service, if not computed from the TotalAmount of the Loyalty request message. The
public final class LoyaltyAmount: Codable {
    
    /// Undocumented.
    public let loyaltyUnit: LoyaltyUnit?
    
    /// Undocumented.
    public let currency: String?
    
    /// Undocumented.
    public let amountValue: Double
    
    /// Initializes the LoyaltyAmount.
    ///
    /// - Parameter loyaltyUnit: Undocumented.
    /// - Parameter currency: Undocumented.
    /// - Parameter amountValue: Undocumented.
    public init(loyaltyUnit: LoyaltyUnit? = nil, currency: String? = nil, amountValue: Double) {
        self.loyaltyUnit = loyaltyUnit
        self.currency = currency
        self.amountValue = amountValue
    }
    
    internal enum CodingKeys: String, CodingKey {
        case loyaltyUnit = "LoyaltyUnit"
        case currency = "Currency"
        case amountValue = "AmountValue"
    }
    
}
