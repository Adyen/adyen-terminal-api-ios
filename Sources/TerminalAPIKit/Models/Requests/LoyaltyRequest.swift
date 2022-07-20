//
//  LoyaltyRequest.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Loyalty Request message.
/// It conveys Information related to the Loyalty transaction to process
public final class LoyaltyRequest: Request {
    
    /// The type of the response returned for this request.
    public typealias ResponseType = LoyaltyResponse
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "LoyaltyRequest"
    
    /// The category of the message in which this request is sent.
    public static let messageCategory = MessageCategory.loyalty
    
    /// Data related to the Sale System.
    public let saleData: SaleData
    
    /// Data related to the loyalty transaction.
    public let loyaltyTransaction: LoyaltyTransaction
    
    /// Data related to a Loyalty program or account.
    public let loyaltyData: LoyaltyData
    
    /// Initializes the LoyaltyRequest.
    ///
    /// - Parameter saleData: Data related to the Sale System.
    /// - Parameter loyaltyTransaction: Data related to the loyalty transaction.
    /// - Parameter loyaltyData: Data related to a Loyalty program or account.
    public init(saleData: SaleData, loyaltyTransaction: LoyaltyTransaction, loyaltyData: LoyaltyData) {
        self.saleData = saleData
        self.loyaltyTransaction = loyaltyTransaction
        self.loyaltyData = loyaltyData
    }
    
    internal enum CodingKeys: String, CodingKey {
        case saleData = "SaleData"
        case loyaltyTransaction = "LoyaltyTransaction"
        case loyaltyData = "LoyaltyData"
    }
    
}
