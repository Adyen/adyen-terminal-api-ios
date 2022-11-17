//
//  SaleItemRebate.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// The awarded amount that is attached to an item as a rebate.
/// To be differentiated from the award which is the amount or quantity earned on the loyalty account.
public final class SaleItemRebate: Codable {
    
    /// Item identification inside a transaction (0 to n).
    public let itemIdentifier: Int
    
    /// Product code of item purchased with the transaction.
    public let productCode: String
    
    /// Undocumented.
    public let eanUpc: String?
    
    /// Unit of measure of a quantity
    public let unitOfMeasure: UnitOfMeasure?
    
    /// Product quantity
    public let quantity: Decimal?
    
    /// Total amount of the item line.
    public let itemAmount: Decimal?
    
    /// Short text to qualify a rebate on an line item.
    public let rebateLabel: String?
    
    /// Initializes the SaleItemRebate.
    ///
    /// - Parameter itemIdentifier: Item identification inside a transaction (0 to n).
    /// - Parameter productCode: Product code of item purchased with the transaction.
    /// - Parameter eanUpc: Undocumented.
    /// - Parameter unitOfMeasure: Unit of measure of a quantity
    /// - Parameter quantity: Product quantity
    /// - Parameter itemAmount: Total amount of the item line.
    /// - Parameter rebateLabel: Short text to qualify a rebate on an line item.
    public init(itemIdentifier: Int, productCode: String, eanUpc: String? = nil, unitOfMeasure: UnitOfMeasure? = nil, quantity: Decimal? = nil, itemAmount: Decimal? = nil, rebateLabel: String? = nil) {
        self.itemIdentifier = itemIdentifier
        self.productCode = productCode
        self.eanUpc = eanUpc
        self.unitOfMeasure = unitOfMeasure
        self.quantity = quantity
        self.itemAmount = itemAmount
        self.rebateLabel = rebateLabel
    }
    
    internal enum CodingKeys: String, CodingKey {
        case itemIdentifier = "ItemID"
        case productCode = "ProductCode"
        case eanUpc = "EanUpc"
        case unitOfMeasure = "UnitOfMeasure"
        case quantity = "Quantity"
        case itemAmount = "ItemAmount"
        case rebateLabel = "RebateLabel"
    }
    
}
