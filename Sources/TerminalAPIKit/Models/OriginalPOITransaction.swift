//
//  OriginalPOITransaction.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Identification of a previous POI transaction.
/// In the Payment or the Loyalty Request message, it allows using the card of a previous CardAcquisition or Payment/Loyalty request. To reverse a Payment or the Loyalty transaction. By default, the reversal is requested from the same Sale
public final class OriginalPOITransaction: Codable {
    
    /// Identification of a Sale System or a Sale Terminal for the Sale to POI protocol
    public let saleIdentifier: String?
    
    /// Identification of a POI System or a POI Terminal for the Sale to POI protocol
    public let poiIdentifier: String?
    
    /// Unique identification of a POI transaction for a POI
    public let poiTransactionIdentifier: TransactionIdentifier?
    
    /// Indicate if the card data has to be got from a previous transaction.
    public let reuseCardDataFlag: Bool?
    
    /// Code assigned to a transaction approval by the Acquirer.
    public let approvalCode: String?
    
    /// Undocumented.
    public let customerLanguage: String?
    
    /// Undocumented.
    public let acquirerIdentifier: String?
    
    /// Undocumented.
    public let amountValue: Double?
    
    /// Identification of the transaction by the host in charge of the stored value transaction
    public let hostTransactionIdentifier: TransactionIdentifier?
    
    /// Initializes the OriginalPOITransaction.
    ///
    /// - Parameter saleIdentifier: Identification of a Sale System or a Sale Terminal for the Sale to POI protocol
    /// - Parameter poiIdentifier: Identification of a POI System or a POI Terminal for the Sale to POI protocol
    /// - Parameter poiTransactionIdentifier: Unique identification of a POI transaction for a POI
    /// - Parameter reuseCardDataFlag: Indicate if the card data has to be got from a previous transaction.
    /// - Parameter approvalCode: Code assigned to a transaction approval by the Acquirer.
    /// - Parameter customerLanguage: Undocumented.
    /// - Parameter acquirerIdentifier: Undocumented.
    /// - Parameter amountValue: Undocumented.
    /// - Parameter hostTransactionIdentifier: Identification of the transaction by the host in charge of the stored value transaction
    public init(saleIdentifier: String? = nil, poiIdentifier: String? = nil, poiTransactionIdentifier: TransactionIdentifier? = nil, reuseCardDataFlag: Bool? = nil, approvalCode: String? = nil, customerLanguage: String? = nil, acquirerIdentifier: String? = nil, amountValue: Double? = nil, hostTransactionIdentifier: TransactionIdentifier? = nil) {
        self.saleIdentifier = saleIdentifier
        self.poiIdentifier = poiIdentifier
        self.poiTransactionIdentifier = poiTransactionIdentifier
        self.reuseCardDataFlag = reuseCardDataFlag
        self.approvalCode = approvalCode
        self.customerLanguage = customerLanguage
        self.acquirerIdentifier = acquirerIdentifier
        self.amountValue = amountValue
        self.hostTransactionIdentifier = hostTransactionIdentifier
    }
    
    internal enum CodingKeys: String, CodingKey {
        case saleIdentifier = "SaleID"
        case poiIdentifier = "POIID"
        case poiTransactionIdentifier = "POITransactionID"
        case reuseCardDataFlag = "ReuseCardDataFlag"
        case approvalCode = "ApprovalCode"
        case customerLanguage = "CustomerLanguage"
        case acquirerIdentifier = "AcquirerID"
        case amountValue = "AmountValue"
        case hostTransactionIdentifier = "HostTransactionID"
    }
    
}
