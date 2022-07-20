//
//  ReconciliationRequest.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Reconciliation Request message.
/// It conveys Information related to the Reconciliation requested by the Sale System: Type of reconciliation (with or without closure of the reconciliation time period) The Acquirers identification if they are involved and could be selected
public final class ReconciliationRequest: Request {
    
    /// The type of the response returned for this request.
    public typealias ResponseType = ReconciliationResponse
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "ReconciliationRequest"
    
    /// The category of the message in which this request is sent.
    public static let messageCategory = MessageCategory.reconciliation
    
    /// Type of Reconciliation requested by the Sale to the POI.
    public let reconciliationType: ReconciliationType
    
    /// Identification of the Acquirer
    public let acquirerIdentifier: [String]?
    
    /// Identification of the reconciliation period between Sale and POI.
    public let poiReconciliationIdentifier: String?
    
    /// Initializes the ReconciliationRequest.
    ///
    /// - Parameter reconciliationType: Type of Reconciliation requested by the Sale to the POI.
    /// - Parameter acquirerIdentifier: Identification of the Acquirer
    /// - Parameter poiReconciliationIdentifier: Identification of the reconciliation period between Sale and POI.
    public init(reconciliationType: ReconciliationType, acquirerIdentifier: [String]? = nil, poiReconciliationIdentifier: String? = nil) {
        self.reconciliationType = reconciliationType
        self.acquirerIdentifier = acquirerIdentifier
        self.poiReconciliationIdentifier = poiReconciliationIdentifier
    }
    
    internal enum CodingKeys: String, CodingKey {
        case reconciliationType = "ReconciliationType"
        case acquirerIdentifier = "AcquirerID"
        case poiReconciliationIdentifier = "POIReconciliationID"
    }
    
}
