//
//  ReversalResponse.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Reversal Response message.
/// It conveys Information related to the reversal processed by the POI System.
public final class ReversalResponse: Response {
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "ReversalResponse"
    
    /// Result of a message request processing.
    public let response: MessageResponse
    
    /// Data related to the POI System.
    public let poiData: POIData?
    
    /// Undocumented.
    public let originalPOITransaction: OriginalPOITransaction?
    
    /// Amount of the payment or loyalty to reverse..
    public let reversedAmount: Decimal?
    
    /// Undocumented.
    public let customerOrder: [CustomerOrder]?
    
    /// Undocumented.
    public let paymentReceipt: [PaymentReceipt]?
    
    /// Initializes the ReversalResponse.
    ///
    /// - Parameter response: Result of a message request processing.
    /// - Parameter poiData: Data related to the POI System.
    /// - Parameter originalPOITransaction: Undocumented.
    /// - Parameter reversedAmount: Amount of the payment or loyalty to reverse..
    /// - Parameter customerOrder: Undocumented.
    /// - Parameter paymentReceipt: Undocumented.
    public init(
        response: MessageResponse,
        poiData: POIData? = nil,
        originalPOITransaction: OriginalPOITransaction? = nil,
        reversedAmount: Decimal? = nil,
        customerOrder: [CustomerOrder]? = nil,
        paymentReceipt: [PaymentReceipt]? = nil
    ) {
        self.response = response
        self.poiData = poiData
        self.originalPOITransaction = originalPOITransaction
        self.reversedAmount = reversedAmount
        self.customerOrder = customerOrder
        self.paymentReceipt = paymentReceipt
    }
    
    internal enum CodingKeys: String, CodingKey {
        case response = "Response"
        case poiData = "POIData"
        case originalPOITransaction = "OriginalPOITransaction"
        case reversedAmount = "ReversedAmount"
        case customerOrder = "CustomerOrder"
        case paymentReceipt = "PaymentReceipt"
    }
    
}
