//
//  PaymentRequest.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Payment Request message.
/// It conveys Information related to the Payment transaction to process
public final class PaymentRequest: Request {
    
    /// The type of the response returned for this request.
    public typealias ResponseType = PaymentResponse
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "PaymentRequest"
    
    /// The category of the message in which this request is sent.
    public static let messageCategory = MessageCategory.payment
    
    /// Data related to the Sale System.
    public let saleData: SaleData
    
    /// Data related to the payment and loyalty transaction.
    public let paymentTransaction: PaymentTransaction
    
    /// Data related to the payment transaction.
    public let paymentData: PaymentData?
    
    /// Data related to a Loyalty program or account.
    public let loyaltyData: [LoyaltyData]?
    
    /// Initializes the PaymentRequest.
    ///
    /// - Parameter saleData: Data related to the Sale System.
    /// - Parameter paymentTransaction: Data related to the payment and loyalty transaction.
    /// - Parameter paymentData: Data related to the payment transaction.
    /// - Parameter loyaltyData: Data related to a Loyalty program or account.
    public init(saleData: SaleData, paymentTransaction: PaymentTransaction, paymentData: PaymentData? = nil, loyaltyData: [LoyaltyData]? = nil) {
        self.saleData = saleData
        self.paymentTransaction = paymentTransaction
        self.paymentData = paymentData
        self.loyaltyData = loyaltyData
    }
    
    internal enum CodingKeys: String, CodingKey {
        case saleData = "SaleData"
        case paymentTransaction = "PaymentTransaction"
        case paymentData = "PaymentData"
        case loyaltyData = "LoyaltyData"
    }
    
}
