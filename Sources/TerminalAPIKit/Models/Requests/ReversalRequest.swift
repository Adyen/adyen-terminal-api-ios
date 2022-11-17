//
//  ReversalRequest.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Reversal Request message.
/// It conveys Information related to the reversal of a previous payment or a loyalty transaction.
public final class ReversalRequest: Request {
    
    /// The type of the response returned for this request.
    public typealias ResponseType = ReversalResponse
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "ReversalRequest"
    
    /// The category of the message in which this request is sent.
    public static let messageCategory = MessageCategory.reversal
    
    /// Undocumented.
    public let saleData: SaleData?
    
    /// Identification of a previous POI transaction.
    public let originalPOITransaction: OriginalPOITransaction
    
    /// Amount of the payment or loyalty to reverse..
    public let reversedAmount: Decimal?
    
    /// Reason of the payment or loyalty reversal..
    public let reversalReason: ReversalReason
    
    /// Undocumented.
    public let customerOrder: CustomerOrder?
    
    /// Initializes the ReversalRequest.
    ///
    /// - Parameter saleData: Undocumented.
    /// - Parameter originalPOITransaction: Identification of a previous POI transaction.
    /// - Parameter reversedAmount: Amount of the payment or loyalty to reverse..
    /// - Parameter reversalReason: Reason of the payment or loyalty reversal..
    /// - Parameter customerOrder: Undocumented.
    public init(saleData: SaleData? = nil, originalPOITransaction: OriginalPOITransaction, reversedAmount: Decimal? = nil, reversalReason: ReversalReason, customerOrder: CustomerOrder? = nil) {
        self.saleData = saleData
        self.originalPOITransaction = originalPOITransaction
        self.reversedAmount = reversedAmount
        self.reversalReason = reversalReason
        self.customerOrder = customerOrder
    }
    
    internal enum CodingKeys: String, CodingKey {
        case saleData = "SaleData"
        case originalPOITransaction = "OriginalPOITransaction"
        case reversedAmount = "ReversedAmount"
        case reversalReason = "ReversalReason"
        case customerOrder = "CustomerOrder"
    }
    
}
