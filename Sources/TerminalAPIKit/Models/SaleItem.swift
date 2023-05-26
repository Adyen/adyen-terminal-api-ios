//
//  SaleItem.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Sale items of a transaction.
/// In loyalty or value added payment card transaction, the items of the sale are entering in the processing of the transaction. The sum of the item amount could be more than the Requested amount in case of split payment without split of the
public final class SaleItem: Codable {
    
    /// Item identification inside a transaction (0 to n).
    public let itemIdentifier: Int
    
    /// Product code of item purchased with the transaction.
    public let productCode: String
    
    /// Standard product code of item purchased with the transaction.
    public let eanUpc: String?
    
    /// Unit of measure of a quantity
    public let unitOfMeasure: UnitOfMeasure?
    
    /// Product quantity
    public let quantity: Decimal?
    
    /// Price per unit of product
    public let unitPrice: Decimal?
    
    /// Total amount of the item line.
    public let itemAmount: Decimal
    
    /// Type of taxes associated to the line item.
    public let taxCode: String?
    
    /// Commercial or distribution channel associated to the line item.
    public let saleChannel: String?
    
    /// Undocumented.
    public let productLabel: String?
    
    /// Additionl information related to the line item.
    public let additionalProductInfo: String?
    
    /// Initializes the SaleItem.
    ///
    /// - Parameter itemIdentifier: Item identification inside a transaction (0 to n).
    /// - Parameter productCode: Product code of item purchased with the transaction.
    /// - Parameter eanUpc: Standard product code of item purchased with the transaction.
    /// - Parameter unitOfMeasure: Unit of measure of a quantity
    /// - Parameter quantity: Product quantity
    /// - Parameter unitPrice: Price per unit of product
    /// - Parameter itemAmount: Total amount of the item line.
    /// - Parameter taxCode: Type of taxes associated to the line item.
    /// - Parameter saleChannel: Commercial or distribution channel associated to the line item.
    /// - Parameter productLabel: Undocumented.
    /// - Parameter additionalProductInfo: Additionl information related to the line item.
    public init(itemIdentifier: Int, productCode: String, eanUpc: String? = nil, unitOfMeasure: UnitOfMeasure? = nil, quantity: Decimal? = nil, unitPrice: Decimal? = nil, itemAmount: Decimal, taxCode: String? = nil, saleChannel: String? = nil, productLabel: String? = nil, additionalProductInfo: String? = nil) {
        self.itemIdentifier = itemIdentifier
        self.productCode = productCode
        self.eanUpc = eanUpc
        self.unitOfMeasure = unitOfMeasure
        self.quantity = quantity
        self.unitPrice = unitPrice
        self.itemAmount = itemAmount
        self.taxCode = taxCode
        self.saleChannel = saleChannel
        self.productLabel = productLabel
        self.additionalProductInfo = additionalProductInfo
    }
    
    internal enum CodingKeys: String, CodingKey {
        case itemIdentifier = "ItemID"
        case productCode = "ProductCode"
        case eanUpc = "EanUpc"
        case unitOfMeasure = "UnitOfMeasure"
        case quantity = "Quantity"
        case unitPrice = "UnitPrice"
        case itemAmount = "ItemAmount"
        case taxCode = "TaxCode"
        case saleChannel = "SaleChannel"
        case productLabel = "ProductLabel"
        case additionalProductInfo = "AdditionalProductInfo"
    }
    
}
