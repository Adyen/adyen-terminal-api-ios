//
//  LoyaltyResponse.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Loyalty Response message.
/// It conveys Information related to the Loyalty transaction processed by the POI System.
public final class LoyaltyResponse: Response {
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "LoyaltyResponse"
    
    /// Result of a message request processing.
    public let response: MessageResponse
    
    /// Data related to the Sale System.
    public let saleData: SaleData
    
    /// Data related to the POI System.
    public let poiData: POIData
    
    /// Data related to the result of a processed loyalty transaction.
    public let loyaltyResult: [LoyaltyResult]?
    
    /// Undocumented.
    public let paymentReceipt: [PaymentReceipt]?
    
    /// Initializes the LoyaltyResponse.
    ///
    /// - Parameter response: Result of a message request processing.
    /// - Parameter saleData: Data related to the Sale System.
    /// - Parameter poiData: Data related to the POI System.
    /// - Parameter loyaltyResult: Data related to the result of a processed loyalty transaction.
    /// - Parameter paymentReceipt: Undocumented.
    internal init(response: MessageResponse, saleData: SaleData, poiData: POIData, loyaltyResult: [LoyaltyResult]? = nil, paymentReceipt: [PaymentReceipt]? = nil) {
        self.response = response
        self.saleData = saleData
        self.poiData = poiData
        self.loyaltyResult = loyaltyResult
        self.paymentReceipt = paymentReceipt
    }
    
    internal enum CodingKeys: String, CodingKey {
        case response = "Response"
        case saleData = "SaleData"
        case poiData = "POIData"
        case loyaltyResult = "LoyaltyResult"
        case paymentReceipt = "PaymentReceipt"
    }
    
}
