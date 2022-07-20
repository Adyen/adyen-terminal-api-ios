//
//  PaymentTotals.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Totals of the payment transaction during the reconciliation period.
public final class PaymentTotals: Codable {
    
    /// Type of transaction for which totals are grouped.
    public let transactionType: TransactionType
    
    /// Number of processed transaction during the period.
    public let transactionCount: Int
    
    /// Sum of amount of processed transaction during the period.
    public let transactionAmount: Double
    
    /// Initializes the PaymentTotals.
    ///
    /// - Parameter transactionType: Type of transaction for which totals are grouped.
    /// - Parameter transactionCount: Number of processed transaction during the period.
    /// - Parameter transactionAmount: Sum of amount of processed transaction during the period.
    public init(transactionType: TransactionType, transactionCount: Int, transactionAmount: Double) {
        self.transactionType = transactionType
        self.transactionCount = transactionCount
        self.transactionAmount = transactionAmount
    }
    
    internal enum CodingKeys: String, CodingKey {
        case transactionType = "TransactionType"
        case transactionCount = "TransactionCount"
        case transactionAmount = "TransactionAmount"
    }
    
}
