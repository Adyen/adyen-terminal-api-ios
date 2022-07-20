//
//  LoyaltyAccount.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Data related to a loyalty account processed in the transaction.
/// This data structure conveys the identification of the account and the associated loyalty brand.
public final class LoyaltyAccount: Codable {
    
    /// Identification of a Loyalty account.
    public let loyaltyAccountIdentifier: LoyaltyAccountIdentifier
    
    /// Identification of a Loyalty brand.
    public let loyaltyBrand: String?
    
    /// Initializes the LoyaltyAccount.
    ///
    /// - Parameter loyaltyAccountIdentifier: Identification of a Loyalty account.
    /// - Parameter loyaltyBrand: Identification of a Loyalty brand.
    public init(loyaltyAccountIdentifier: LoyaltyAccountIdentifier, loyaltyBrand: String? = nil) {
        self.loyaltyAccountIdentifier = loyaltyAccountIdentifier
        self.loyaltyBrand = loyaltyBrand
    }
    
    internal enum CodingKeys: String, CodingKey {
        case loyaltyAccountIdentifier = "LoyaltyAccountID"
        case loyaltyBrand = "LoyaltyBrand"
    }
    
}
