//
//  LoyaltyResult.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Data related to the result of a processed loyalty transaction.
/// In the Message Response, the result of each loyalty brand transaction.
public final class LoyaltyResult: Codable {
    
    /// Data related to a loyalty account processed in the transaction.
    public let loyaltyAccount: LoyaltyAccount
    
    /// Balance of an account.
    public let currentBalance: Decimal?
    
    /// Amount of a loyalty account.
    public let loyaltyAmount: LoyaltyAmount?
    
    /// Data related to the loyalty Acquirer during a loyalty transaction.
    public let loyaltyAcquirerData: LoyaltyAcquirerData?
    
    /// Rebate form to an award;
    public let rebates: Rebates?
    
    /// Initializes the LoyaltyResult.
    ///
    /// - Parameter loyaltyAccount: Data related to a loyalty account processed in the transaction.
    /// - Parameter currentBalance: Balance of an account.
    /// - Parameter loyaltyAmount: Amount of a loyalty account.
    /// - Parameter loyaltyAcquirerData: Data related to the loyalty Acquirer during a loyalty transaction.
    /// - Parameter rebates: Rebate form to an award;
    public init(loyaltyAccount: LoyaltyAccount, currentBalance: Decimal? = nil, loyaltyAmount: LoyaltyAmount? = nil, loyaltyAcquirerData: LoyaltyAcquirerData? = nil, rebates: Rebates? = nil) {
        self.loyaltyAccount = loyaltyAccount
        self.currentBalance = currentBalance
        self.loyaltyAmount = loyaltyAmount
        self.loyaltyAcquirerData = loyaltyAcquirerData
        self.rebates = rebates
    }
    
    internal enum CodingKeys: String, CodingKey {
        case loyaltyAccount = "LoyaltyAccount"
        case currentBalance = "CurrentBalance"
        case loyaltyAmount = "LoyaltyAmount"
        case loyaltyAcquirerData = "LoyaltyAcquirerData"
        case rebates = "Rebates"
    }
    
}
