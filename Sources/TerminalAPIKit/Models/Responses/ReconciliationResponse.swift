//
//  ReconciliationResponse.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Reconciliation Response message.
/// It conveys Information related to the Reconciliation transaction processed by the POI System
public final class ReconciliationResponse: Response {
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "ReconciliationResponse"
    
    /// Result of a message request processing.
    public let response: MessageResponse
    
    /// Type of Reconciliation requested by the Sale to the POI.
    public let reconciliationType: ReconciliationType
    
    /// Identification of the reconciliation period between Sale and POI.
    public let poiReconciliationIdentifier: String?
    
    /// Result of the Sale to POI Reconciliation processing.
    public let transactionTotals: [TransactionTotals]?
    
    /// Initializes the ReconciliationResponse.
    ///
    /// - Parameter response: Result of a message request processing.
    /// - Parameter reconciliationType: Type of Reconciliation requested by the Sale to the POI.
    /// - Parameter poiReconciliationIdentifier: Identification of the reconciliation period between Sale and POI.
    /// - Parameter transactionTotals: Result of the Sale to POI Reconciliation processing.
    internal init(response: MessageResponse, reconciliationType: ReconciliationType, poiReconciliationIdentifier: String? = nil, transactionTotals: [TransactionTotals]? = nil) {
        self.response = response
        self.reconciliationType = reconciliationType
        self.poiReconciliationIdentifier = poiReconciliationIdentifier
        self.transactionTotals = transactionTotals
    }
    
    internal enum CodingKeys: String, CodingKey {
        case response = "Response"
        case reconciliationType = "ReconciliationType"
        case poiReconciliationIdentifier = "POIReconciliationID"
        case transactionTotals = "TransactionTotals"
    }
    
}
