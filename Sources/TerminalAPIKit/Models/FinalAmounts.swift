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
    public let authorizedAmount: Double
    
    /// Undocumented.
    public let totalRebatesAmount: Double?
    
    /// Undocumented.
    public let totalFeesAmount: Double?
    
    /// Undocumented.
    public let cashBackAmount: Double?
    
    /// Undocumented.
    public let tipAmount: Double?
    
    /// Initializes the FinalAmounts.
    ///
    /// - Parameter currency: Undocumented.
    /// - Parameter authorizedAmount: Undocumented.
    /// - Parameter totalRebatesAmount: Undocumented.
    /// - Parameter totalFeesAmount: Undocumented.
    /// - Parameter cashBackAmount: Undocumented.
    /// - Parameter tipAmount: Undocumented.
    public init(currency: String? = nil, authorizedAmount: Double, totalRebatesAmount: Double? = nil, totalFeesAmount: Double? = nil, cashBackAmount: Double? = nil, tipAmount: Double? = nil) {
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
