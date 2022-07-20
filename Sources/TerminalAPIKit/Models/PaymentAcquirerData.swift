//
//  PaymentAcquirerData.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Data related to the response from the payment Acquirer.
public final class PaymentAcquirerData: Codable {
    
    /// Identification of the Acquirer
    public let acquirerIdentifier: String?
    
    /// Identification of the Merchant for the Acquirer
    public let merchantIdentifier: String?
    
    /// Identification of the POI for the payment Acquirer
    public let acquirerPOIIdentifier: String?
    
    /// Identification of the Transaction for the Acquirer.
    public let acquirerTransactionIdentifier: TransactionIdentifier?
    
    /// Code assigned to a transaction approval by the Acquirer.
    public let approvalCode: String?
    
    /// Undocumented.
    public let hostReconciliationIdentifier: String?
    
    /// Initializes the PaymentAcquirerData.
    ///
    /// - Parameter acquirerIdentifier: Identification of the Acquirer
    /// - Parameter merchantIdentifier: Identification of the Merchant for the Acquirer
    /// - Parameter acquirerPOIIdentifier: Identification of the POI for the payment Acquirer
    /// - Parameter acquirerTransactionIdentifier: Identification of the Transaction for the Acquirer.
    /// - Parameter approvalCode: Code assigned to a transaction approval by the Acquirer.
    /// - Parameter hostReconciliationIdentifier: Undocumented.
    public init(acquirerIdentifier: String? = nil, merchantIdentifier: String?, acquirerPOIIdentifier: String?, acquirerTransactionIdentifier: TransactionIdentifier? = nil, approvalCode: String? = nil, hostReconciliationIdentifier: String? = nil) {
        self.acquirerIdentifier = acquirerIdentifier
        self.merchantIdentifier = merchantIdentifier
        self.acquirerPOIIdentifier = acquirerPOIIdentifier
        self.acquirerTransactionIdentifier = acquirerTransactionIdentifier
        self.approvalCode = approvalCode
        self.hostReconciliationIdentifier = hostReconciliationIdentifier
    }
    
    internal enum CodingKeys: String, CodingKey {
        case acquirerIdentifier = "AcquirerID"
        case merchantIdentifier = "MerchantID"
        case acquirerPOIIdentifier = "AcquirerPOIID"
        case acquirerTransactionIdentifier = "AcquirerTransactionID"
        case approvalCode = "ApprovalCode"
        case hostReconciliationIdentifier = "HostReconciliationID"
    }
    
}
