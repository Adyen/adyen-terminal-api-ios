//
//  StoredValueResult.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Result of loading/reloading a stored value card..
/// For each stored value card loaded or reloaded, in the StoredValue response message
public final class StoredValueResult: Codable {
    
    /// Identification of operation to proceed on the stored value account or the stored value card
    public let storedValueTransactionType: StoredValueTransactionType
    
    /// Product code of item purchased with the transaction.
    public let productCode: String?
    
    /// Standard product code of item purchased with the transaction.
    public let eanUpc: String?
    
    /// Total amount of the item line.
    public let itemAmount: Decimal?
    
    /// Currency of a monetary amount.
    public let currency: String?
    
    /// Data related to the result of the stored value card transaction.
    public let storedValueAccountStatus: StoredValueAccountStatus?
    
    /// Initializes the StoredValueResult.
    ///
    /// - Parameter storedValueTransactionType: Identification of operation to proceed on the stored value account or the stored value card
    /// - Parameter productCode: Product code of item purchased with the transaction.
    /// - Parameter eanUpc: Standard product code of item purchased with the transaction.
    /// - Parameter itemAmount: Total amount of the item line.
    /// - Parameter currency: Currency of a monetary amount.
    /// - Parameter storedValueAccountStatus: Data related to the result of the stored value card transaction.
    public init(storedValueTransactionType: StoredValueTransactionType, productCode: String? = nil, eanUpc: String? = nil, itemAmount: Decimal? = nil, currency: String? = nil, storedValueAccountStatus: StoredValueAccountStatus? = nil) {
        self.storedValueTransactionType = storedValueTransactionType
        self.productCode = productCode
        self.eanUpc = eanUpc
        self.itemAmount = itemAmount
        self.currency = currency
        self.storedValueAccountStatus = storedValueAccountStatus
    }
    
    internal enum CodingKeys: String, CodingKey {
        case storedValueTransactionType = "StoredValueTransactionType"
        case productCode = "ProductCode"
        case eanUpc = "EanUpc"
        case itemAmount = "ItemAmount"
        case currency = "Currency"
        case storedValueAccountStatus = "StoredValueAccountStatus"
    }
    
}
