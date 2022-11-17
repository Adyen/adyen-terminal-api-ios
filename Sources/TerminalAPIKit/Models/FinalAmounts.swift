//
//  FinalAmounts.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class FinalAmounts: Codable {
    
    /// Undocumented.
    public let currency: String?
    
    /// Undocumented.
    public let authorizedAmount: Decimal
    
    /// Undocumented.
    public let totalRebatesAmount: Decimal?
    
    /// Undocumented.
    public let totalFeesAmount: Decimal?
    
    /// Undocumented.
    public let cashBackAmount: Decimal?
    
    /// Undocumented.
    public let tipAmount: Decimal?
    
    /// Initializes the FinalAmounts.
    ///
    /// - Parameter currency: Undocumented.
    /// - Parameter authorizedAmount: Undocumented.
    /// - Parameter totalRebatesAmount: Undocumented.
    /// - Parameter totalFeesAmount: Undocumented.
    /// - Parameter cashBackAmount: Undocumented.
    /// - Parameter tipAmount: Undocumented.
    public init(currency: String? = nil, authorizedAmount: Decimal, totalRebatesAmount: Decimal? = nil, totalFeesAmount: Decimal? = nil, cashBackAmount: Decimal? = nil, tipAmount: Decimal? = nil) {
        self.currency = currency
        self.authorizedAmount = authorizedAmount
        self.totalRebatesAmount = totalRebatesAmount
        self.totalFeesAmount = totalFeesAmount
        self.cashBackAmount = cashBackAmount
        self.tipAmount = tipAmount
    }
    
    internal enum CodingKeys: String, CodingKey {
        case currency = "Currency"
        case authorizedAmount = "AuthorizedAmount"
        case totalRebatesAmount = "TotalRebatesAmount"
        case totalFeesAmount = "TotalFeesAmount"
        case cashBackAmount = "CashBackAmount"
        case tipAmount = "TipAmount"
    }
    
}
