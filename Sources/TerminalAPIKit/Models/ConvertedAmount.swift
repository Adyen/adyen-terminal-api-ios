//
//  ConvertedAmount.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class ConvertedAmount: Codable {
    
    /// Undocumented.
    public let amountValue: Decimal
    
    /// Undocumented.
    public let currency: String
    
    /// Initializes the ConvertedAmount.
    ///
    /// - Parameter amountValue: Undocumented.
    /// - Parameter currency: Undocumented.
    public init(amountValue: Decimal, currency: String) {
        self.amountValue = amountValue
        self.currency = currency
    }
    
    internal enum CodingKeys: String, CodingKey {
        case amountValue = "AmountValue"
        case currency = "Currency"
    }
    
}
