//
//  GetTotalsResponse.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Reconciliation Response message.
/// It conveys Information related to the Reconciliation transaction processed by the POI System
public final class GetTotalsResponse: Response {
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "GetTotalsResponse"
    
    /// Result of a message request processing.
    public let response: MessageResponse
    
    /// Identification of the reconciliation period between Sale and POI.
    public let poiReconciliationIdentifier: String
    
    /// Result of the Sale to POI Reconciliation processing.
    public let transactionTotals: [TransactionTotals]?
    
    /// Initializes the GetTotalsResponse.
    ///
    /// - Parameter response: Result of a message request processing.
    /// - Parameter poiReconciliationIdentifier: Identification of the reconciliation period between Sale and POI.
    /// - Parameter transactionTotals: Result of the Sale to POI Reconciliation processing.
    internal init(response: MessageResponse, poiReconciliationIdentifier: String, transactionTotals: [TransactionTotals]? = nil) {
        self.response = response
        self.poiReconciliationIdentifier = poiReconciliationIdentifier
        self.transactionTotals = transactionTotals
    }
    
    internal enum CodingKeys: String, CodingKey {
        case response = "Response"
        case poiReconciliationIdentifier = "POIReconciliationID"
        case transactionTotals = "TransactionTotals"
    }
    
}
