//
//  PerformedTransaction.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class PerformedTransaction: Codable {
    
    /// Undocumented.
    public let response: MessageResponse
    
    /// Undocumented.
    public let saleData: SaleData?
    
    /// Undocumented.
    public let poiData: POIData?
    
    /// Undocumented.
    public let paymentResult: PaymentResult?
    
    /// Undocumented.
    public let loyaltyResult: [LoyaltyResult]?
    
    /// Undocumented.
    public let reversedAmount: Double?
    
    /// Initializes the PerformedTransaction.
    ///
    /// - Parameter response: Undocumented.
    /// - Parameter saleData: Undocumented.
    /// - Parameter poiData: Undocumented.
    /// - Parameter paymentResult: Undocumented.
    /// - Parameter loyaltyResult: Undocumented.
    /// - Parameter reversedAmount: Undocumented.
    public init(response: MessageResponse, saleData: SaleData? = nil, poiData: POIData? = nil, paymentResult: PaymentResult? = nil, loyaltyResult: [LoyaltyResult]? = nil, reversedAmount: Double? = nil) {
        self.response = response
        self.saleData = saleData
        self.poiData = poiData
        self.paymentResult = paymentResult
        self.loyaltyResult = loyaltyResult
        self.reversedAmount = reversedAmount
    }
    
    internal enum CodingKeys: String, CodingKey {
        case response = "Response"
        case saleData = "SaleData"
        case poiData = "POIData"
        case paymentResult = "PaymentResult"
        case loyaltyResult = "LoyaltyResult"
        case reversedAmount = "ReversedAmount"
    }
    
}
