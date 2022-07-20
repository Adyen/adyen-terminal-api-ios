//
//  LoyaltyData.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Data related to a Loyalty program or account.
/// In the Payment, Loyalty or Balance Inquiry Request message, it allows the Sale Terminal to send the identification of the loyalty account or an awarded amount or an amount to redeem to the loyalty account.
public final class LoyaltyData: Codable {
    
    /// Reference to the last CardAcquisition, to use the same card.
    public let cardAcquisitionReference: TransactionIdentifier?
    
    /// Identification of a Loyalty account.
    public let loyaltyAccountIdentifier: LoyaltyAccountIdentifier?
    
    /// Amount of a loyalty account.
    public let loyaltyAmount: LoyaltyAmount?
    
    /// Initializes the LoyaltyData.
    ///
    /// - Parameter cardAcquisitionReference: Reference to the last CardAcquisition, to use the same card.
    /// - Parameter loyaltyAccountIdentifier: Identification of a Loyalty account.
    /// - Parameter loyaltyAmount: Amount of a loyalty account.
    public init(cardAcquisitionReference: TransactionIdentifier? = nil, loyaltyAccountIdentifier: LoyaltyAccountIdentifier? = nil, loyaltyAmount: LoyaltyAmount? = nil) {
        self.cardAcquisitionReference = cardAcquisitionReference
        self.loyaltyAccountIdentifier = loyaltyAccountIdentifier
        self.loyaltyAmount = loyaltyAmount
    }
    
    internal enum CodingKeys: String, CodingKey {
        case cardAcquisitionReference = "CardAcquisitionReference"
        case loyaltyAccountIdentifier = "LoyaltyAccountID"
        case loyaltyAmount = "LoyaltyAmount"
    }
    
}
