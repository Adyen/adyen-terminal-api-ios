//
//  Rebates.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class Rebates: Codable {
    
    /// Undocumented.
    public let totalRebate: Decimal?
    
    /// Undocumented.
    public let rebateLabel: String?
    
    /// Undocumented.
    public let saleItemRebate: [SaleItemRebate]?
    
    /// Initializes the Rebates.
    ///
    /// - Parameter totalRebate: Undocumented.
    /// - Parameter rebateLabel: Undocumented.
    /// - Parameter saleItemRebate: Undocumented.
    public init(totalRebate: Decimal? = nil, rebateLabel: String? = nil, saleItemRebate: [SaleItemRebate]? = nil) {
        self.totalRebate = totalRebate
        self.rebateLabel = rebateLabel
        self.saleItemRebate = saleItemRebate
    }
    
    internal enum CodingKeys: String, CodingKey {
        case totalRebate = "TotalRebate"
        case rebateLabel = "RebateLabel"
        case saleItemRebate = "SaleItemRebate"
    }
    
}
