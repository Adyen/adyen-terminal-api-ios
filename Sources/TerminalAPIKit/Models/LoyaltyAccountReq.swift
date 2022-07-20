//
//  LoyaltyAccountReq.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class LoyaltyAccountReq: Codable {
    
    /// Undocumented.
    public let cardAcquisitionReference: TransactionIdentifier?
    
    /// Undocumented.
    public let loyaltyAccountIdentifier: LoyaltyAccountIdentifier?
    
    /// Initializes the LoyaltyAccountReq.
    ///
    /// - Parameter cardAcquisitionReference: Undocumented.
    /// - Parameter loyaltyAccountIdentifier: Undocumented.
    public init(cardAcquisitionReference: TransactionIdentifier? = nil, loyaltyAccountIdentifier: LoyaltyAccountIdentifier? = nil) {
        self.cardAcquisitionReference = cardAcquisitionReference
        self.loyaltyAccountIdentifier = loyaltyAccountIdentifier
    }
    
    internal enum CodingKeys: String, CodingKey {
        case cardAcquisitionReference = "CardAcquisitionReference"
        case loyaltyAccountIdentifier = "LoyaltyAccountID"
    }
    
}
