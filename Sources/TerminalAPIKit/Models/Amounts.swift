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
    public let requestedAmount: Double?
    
    /// Undocumented.
    public let cashBackAmount: Double?
    
    /// Undocumented.
    public let tipAmount: Double?
    
    /// Undocumented.
    public let paidAmount: Double?
    
    /// Undocumented.
    public let minimumAmountToDeliver: Double?
    
    /// Undocumented.
    public let maximumCashBackAmount: Double?
    
    /// Undocumented.
    public let minimumSplitAmount: Double?
    
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
    public init(currency: String, requestedAmount: Double? = nil, cashBackAmount: Double? = nil, tipAmount: Double? = nil, paidAmount: Double? = nil, minimumAmountToDeliver: Double? = nil, maximumCashBackAmount: Double? = nil, minimumSplitAmount: Double? = nil) {
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
