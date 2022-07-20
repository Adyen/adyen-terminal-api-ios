//
//  PaymentTransaction.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class PaymentTransaction: Codable {
    
    /// Undocumented.
    public let amounts: Amounts
    
    /// Undocumented.
    public let originalPOITransaction: OriginalPOITransaction?
    
    /// Undocumented.
    public let transactionConditions: TransactionConditions?
    
    /// Undocumented.
    public let saleItem: [SaleItem]?
    
    /// Initializes the PaymentTransaction.
    ///
    /// - Parameter amounts: Undocumented.
    /// - Parameter originalPOITransaction: Undocumented.
    /// - Parameter transactionConditions: Undocumented.
    /// - Parameter saleItem: Undocumented.
    public init(amounts: Amounts, originalPOITransaction: OriginalPOITransaction? = nil, transactionConditions: TransactionConditions? = nil, saleItem: [SaleItem]? = nil) {
        self.amounts = amounts
        self.originalPOITransaction = originalPOITransaction
        self.transactionConditions = transactionConditions
        self.saleItem = saleItem
    }
    
    internal enum CodingKeys: String, CodingKey {
        case amounts = "AmountsReq"
        case originalPOITransaction = "OriginalPOITransaction"
        case transactionConditions = "TransactionConditions"
        case saleItem = "SaleItem"
    }
    
}
