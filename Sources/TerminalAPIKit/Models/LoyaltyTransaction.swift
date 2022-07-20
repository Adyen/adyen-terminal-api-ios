//
//  LoyaltyTransaction.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class LoyaltyTransaction: Codable {
    
    /// Undocumented.
    public let loyaltyTransactionType: LoyaltyTransactionType
    
    /// Undocumented.
    public let currency: String?
    
    /// Undocumented.
    public let totalAmount: Double?
    
    /// Undocumented.
    public let originalPOITransaction: OriginalPOITransaction?
    
    /// Undocumented.
    public let transactionConditions: TransactionConditions?
    
    /// Undocumented.
    public let saleItem: [SaleItem]?
    
    /// Initializes the LoyaltyTransaction.
    ///
    /// - Parameter loyaltyTransactionType: Undocumented.
    /// - Parameter currency: Undocumented.
    /// - Parameter totalAmount: Undocumented.
    /// - Parameter originalPOITransaction: Undocumented.
    /// - Parameter transactionConditions: Undocumented.
    /// - Parameter saleItem: Undocumented.
    public init(loyaltyTransactionType: LoyaltyTransactionType, currency: String? = nil, totalAmount: Double? = nil, originalPOITransaction: OriginalPOITransaction? = nil, transactionConditions: TransactionConditions? = nil, saleItem: [SaleItem]? = nil) {
        self.loyaltyTransactionType = loyaltyTransactionType
        self.currency = currency
        self.totalAmount = totalAmount
        self.originalPOITransaction = originalPOITransaction
        self.transactionConditions = transactionConditions
        self.saleItem = saleItem
    }
    
    internal enum CodingKeys: String, CodingKey {
        case loyaltyTransactionType = "LoyaltyTransactionType"
        case currency = "Currency"
        case totalAmount = "TotalAmount"
        case originalPOITransaction = "OriginalPOITransaction"
        case transactionConditions = "TransactionConditions"
        case saleItem = "SaleItem"
    }
    
}
