//
//  POIData.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Data related to the POI System.
/// In the Message Response, identification of the POI transaction.
public final class POIData: Codable {
    
    /// Unique identification of a POI transaction for a POI
    public let poiTransactionIdentifier: TransactionIdentifier
    
    /// Identification of the reconciliation period between Sale and POI.
    public let poiReconciliationIdentifier: String?
    
    /// Initializes the POIData.
    ///
    /// - Parameter poiTransactionIdentifier: Unique identification of a POI transaction for a POI
    /// - Parameter poiReconciliationIdentifier: Identification of the reconciliation period between Sale and POI.
    public init(poiTransactionIdentifier: TransactionIdentifier, poiReconciliationIdentifier: String? = nil) {
        self.poiTransactionIdentifier = poiTransactionIdentifier
        self.poiReconciliationIdentifier = poiReconciliationIdentifier
    }
    
    internal enum CodingKeys: String, CodingKey {
        case poiTransactionIdentifier = "POITransactionID"
        case poiReconciliationIdentifier = "POIReconciliationID"
    }
    
}
