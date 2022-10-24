//
//  PaymentResponse.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Payment Response message.
/// It conveys Information related to the Payment transaction processed by the POI System
public final class PaymentResponse: Response {
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "PaymentResponse"
    
    /// Result of a message request processing.
    public let response: MessageResponse
    
    /// Data related to the Sale System.
    public let saleData: SaleData
    
    /// Data related to the POI System.
    public let poiData: POIData?
    
    /// Data related to the result of a processed payment transaction.
    public let paymentResult: PaymentResult?
    
    /// Data related to the result of a processed loyalty transaction.
    public let loyaltyResult: [LoyaltyResult]?
    
    /// Undocumented.
    public let paymentReceipt: [PaymentReceipt]?
    
    /// Undocumented.
    public let customerOrder: [CustomerOrder]?
    
    /// Initializes the PaymentResponse.
    ///
    /// - Parameter response: Result of a message request processing.
    /// - Parameter saleData: Data related to the Sale System.
    /// - Parameter poiData: Data related to the POI System.
    /// - Parameter paymentResult: Data related to the result of a processed payment transaction.
    /// - Parameter loyaltyResult: Data related to the result of a processed loyalty transaction.
    /// - Parameter paymentReceipt: Undocumented.
    /// - Parameter customerOrder: Undocumented.
    internal init(response: MessageResponse, saleData: SaleData, poiData: POIData?, paymentResult: PaymentResult? = nil, loyaltyResult: [LoyaltyResult]? = nil, paymentReceipt: [PaymentReceipt]? = nil, customerOrder: [CustomerOrder]? = nil) {
        self.response = response
        self.saleData = saleData
        self.poiData = poiData
        self.paymentResult = paymentResult
        self.loyaltyResult = loyaltyResult
        self.paymentReceipt = paymentReceipt
        self.customerOrder = customerOrder
    }
    
    internal enum CodingKeys: String, CodingKey {
        case response = "Response"
        case saleData = "SaleData"
        case poiData = "POIData"
        case paymentResult = "PaymentResult"
        case loyaltyResult = "LoyaltyResult"
        case paymentReceipt = "PaymentReceipt"
        case customerOrder = "CustomerOrder"
    }
    
}
