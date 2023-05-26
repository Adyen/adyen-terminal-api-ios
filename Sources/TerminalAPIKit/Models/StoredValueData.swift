//
//  StoredValueData.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Data related to the stored value card.
/// It contains: - the identification of the stored value accounts or the stored value cards, if provided by the Sale System, and - the associated products sold by the Sale System..
public final class StoredValueData: Codable {
    
    /// Identification of the provider of the stored value account load/reload
    public let storedValueProvider: String?
    
    /// Identification of operation to proceed on the stored value account or the stored value card
    public let storedValueTransactionType: StoredValueTransactionType
    
    /// Identification of the stored value account or the stored value card
    public let storedValueAccountIdentifier: StoredValueAccountIdentifier?
    
    /// Identification of a previous POI transaction.
    public let originalPOITransaction: OriginalPOITransaction?
    
    /// Product code of item purchased with the transaction.
    public let productCode: String?
    
    /// Standard product code of item purchased with the transaction.
    public let eanUpc: String?
    
    /// Total amount of the item line.
    public let itemAmount: Decimal?
    
    /// Currency of a monetary amount.
    public let currency: String?
    
    /// Initializes the StoredValueData.
    ///
    /// - Parameter storedValueProvider: Identification of the provider of the stored value account load/reload
    /// - Parameter storedValueTransactionType: Identification of operation to proceed on the stored value account or the stored value card
    /// - Parameter storedValueAccountIdentifier: Identification of the stored value account or the stored value card
    /// - Parameter originalPOITransaction: Identification of a previous POI transaction.
    /// - Parameter productCode: Product code of item purchased with the transaction.
    /// - Parameter eanUpc: Standard product code of item purchased with the transaction.
    /// - Parameter itemAmount: Total amount of the item line.
    /// - Parameter currency: Currency of a monetary amount.
    public init(storedValueProvider: String? = nil, storedValueTransactionType: StoredValueTransactionType, storedValueAccountIdentifier: StoredValueAccountIdentifier? = nil, originalPOITransaction: OriginalPOITransaction? = nil, productCode: String? = nil, eanUpc: String? = nil, itemAmount: Decimal? = nil, currency: String? = nil) {
        self.storedValueProvider = storedValueProvider
        self.storedValueTransactionType = storedValueTransactionType
        self.storedValueAccountIdentifier = storedValueAccountIdentifier
        self.originalPOITransaction = originalPOITransaction
        self.productCode = productCode
        self.eanUpc = eanUpc
        self.itemAmount = itemAmount
        self.currency = currency
    }
    
    internal enum CodingKeys: String, CodingKey {
        case storedValueProvider = "StoredValueProvider"
        case storedValueTransactionType = "StoredValueTransactionType"
        case storedValueAccountIdentifier = "StoredValueAccountID"
        case originalPOITransaction = "OriginalPOITransaction"
        case productCode = "ProductCode"
        case eanUpc = "EanUpc"
        case itemAmount = "ItemAmount"
        case currency = "Currency"
    }
    
}
