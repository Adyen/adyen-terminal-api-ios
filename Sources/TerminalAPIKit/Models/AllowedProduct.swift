//
//  AllowedProduct.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Product codes that are payable by the payment card.
/// If not all the products are accepted for the payment card proposed by the Customer. In this case, Result is failure, ErrorCondition is Payment Restriction. For One Time Reservation, the POI can send product codes payable by the payment,
public final class AllowedProduct: Codable {
    
    /// Undocumented.
    public let productCode: String
    
    /// Undocumented.
    public let eanUpc: String?
    
    /// Undocumented.
    public let productLabel: String?
    
    /// Undocumented.
    public let additionalProductInfo: String?
    
    /// Initializes the AllowedProduct.
    ///
    /// - Parameter productCode: Undocumented.
    /// - Parameter eanUpc: Undocumented.
    /// - Parameter productLabel: Undocumented.
    /// - Parameter additionalProductInfo: Undocumented.
    public init(productCode: String, eanUpc: String? = nil, productLabel: String? = nil, additionalProductInfo: String? = nil) {
        self.productCode = productCode
        self.eanUpc = eanUpc
        self.productLabel = productLabel
        self.additionalProductInfo = additionalProductInfo
    }
    
    internal enum CodingKeys: String, CodingKey {
        case productCode = "ProductCode"
        case eanUpc = "EanUpc"
        case productLabel = "ProductLabel"
        case additionalProductInfo = "AdditionalProductInfo"
    }
    
}
