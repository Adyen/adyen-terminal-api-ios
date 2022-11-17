//
//  Amounts.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class Amounts: Codable {
    
    /// Undocumented.
    public let currency: String
    
    /// Undocumented.
    public let requestedAmount: Decimal?
    
    /// Undocumented.
    public let cashBackAmount: Decimal?
    
    /// Undocumented.
    public let tipAmount: Decimal?
    
    /// Undocumented.
    public let paidAmount: Decimal?
    
    /// Undocumented.
    public let minimumAmountToDeliver: Decimal?
    
    /// Undocumented.
    public let maximumCashBackAmount: Decimal?
    
    /// Undocumented.
    public let minimumSplitAmount: Decimal?
    
    /// Initializes the Amounts.
    ///
    /// - Parameter currency: Undocumented.
    /// - Parameter requestedAmount: Undocumented.
    /// - Parameter cashBackAmount: Undocumented.
    /// - Parameter tipAmount: Undocumented.
    /// - Parameter paidAmount: Undocumented.
    /// - Parameter minimumAmountToDeliver: Undocumented.
    /// - Parameter maximumCashBackAmount: Undocumented.
    /// - Parameter minimumSplitAmount: Undocumented.
    public init(currency: String, requestedAmount: Decimal? = nil, cashBackAmount: Decimal? = nil, tipAmount: Decimal? = nil, paidAmount: Decimal? = nil, minimumAmountToDeliver: Decimal? = nil, maximumCashBackAmount: Decimal? = nil, minimumSplitAmount: Decimal? = nil) {
        self.currency = currency
        self.requestedAmount = requestedAmount
        self.cashBackAmount = cashBackAmount
        self.tipAmount = tipAmount
        self.paidAmount = paidAmount
        self.minimumAmountToDeliver = minimumAmountToDeliver
        self.maximumCashBackAmount = maximumCashBackAmount
        self.minimumSplitAmount = minimumSplitAmount
    }
    
    internal enum CodingKeys: String, CodingKey {
        case currency = "Currency"
        case requestedAmount = "RequestedAmount"
        case cashBackAmount = "CashBackAmount"
        case tipAmount = "TipAmount"
        case paidAmount = "PaidAmount"
        case minimumAmountToDeliver = "MinimumAmountToDeliver"
        case maximumCashBackAmount = "MaximumCashBackAmount"
        case minimumSplitAmount = "MinimumSplitAmount"
    }
    
}
