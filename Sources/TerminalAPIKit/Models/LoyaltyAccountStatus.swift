//
//  LoyaltyAccountStatus.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class LoyaltyAccountStatus: Codable {
    
    /// Undocumented.
    public let loyaltyAccount: LoyaltyAccount
    
    /// Undocumented.
    public let currentBalance: Decimal?
    
    /// Undocumented.
    public let loyaltyUnit: LoyaltyUnit?
    
    /// Undocumented.
    public let currency: String?
    
    /// Initializes the LoyaltyAccountStatus.
    ///
    /// - Parameter loyaltyAccount: Undocumented.
    /// - Parameter currentBalance: Undocumented.
    /// - Parameter loyaltyUnit: Undocumented.
    /// - Parameter currency: Undocumented.
    public init(loyaltyAccount: LoyaltyAccount, currentBalance: Decimal? = nil, loyaltyUnit: LoyaltyUnit? = nil, currency: String? = nil) {
        self.loyaltyAccount = loyaltyAccount
        self.currentBalance = currentBalance
        self.loyaltyUnit = loyaltyUnit
        self.currency = currency
    }
    
    internal enum CodingKeys: String, CodingKey {
        case loyaltyAccount = "LoyaltyAccount"
        case currentBalance = "CurrentBalance"
        case loyaltyUnit = "LoyaltyUnit"
        case currency = "Currency"
    }
    
}
