//
//  LoyaltyAcquirerData.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class LoyaltyAcquirerData: Codable {
    
    /// Undocumented.
    public let loyaltyAcquirerIdentifier: String?
    
    /// Undocumented.
    public let approvalCode: String?
    
    /// Undocumented.
    public let loyaltyTransactionIdentifier: TransactionIdentifier?
    
    /// Undocumented.
    public let hostReconciliationIdentifier: String?
    
    /// Initializes the LoyaltyAcquirerData.
    ///
    /// - Parameter loyaltyAcquirerIdentifier: Undocumented.
    /// - Parameter approvalCode: Undocumented.
    /// - Parameter loyaltyTransactionIdentifier: Undocumented.
    /// - Parameter hostReconciliationIdentifier: Undocumented.
    public init(loyaltyAcquirerIdentifier: String? = nil, approvalCode: String? = nil, loyaltyTransactionIdentifier: TransactionIdentifier? = nil, hostReconciliationIdentifier: String? = nil) {
        self.loyaltyAcquirerIdentifier = loyaltyAcquirerIdentifier
        self.approvalCode = approvalCode
        self.loyaltyTransactionIdentifier = loyaltyTransactionIdentifier
        self.hostReconciliationIdentifier = hostReconciliationIdentifier
    }
    
    internal enum CodingKeys: String, CodingKey {
        case loyaltyAcquirerIdentifier = "LoyaltyAcquirerID"
        case approvalCode = "ApprovalCode"
        case loyaltyTransactionIdentifier = "LoyaltyTransactionID"
        case hostReconciliationIdentifier = "HostReconciliationID"
    }
    
}
