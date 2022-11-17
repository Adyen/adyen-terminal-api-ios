//
//  CoinsOrBills.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Number of coins or bills of a given value.
/// Indicates the remaining number of coins or bills of a given value in a cash handling device. When the cash handling machine does not have any more coins or bills of a certain value, the number must be equal to 0.
public final class CoinsOrBills: Codable {
    
    /// Value of a coin or bill.
    public let unitValue: Decimal
    
    /// Number of elements
    public let number: Int
    
    /// Initializes the CoinsOrBills.
    ///
    /// - Parameter unitValue: Value of a coin or bill.
    /// - Parameter number: Number of elements
    public init(unitValue: Decimal, number: Int) {
        self.unitValue = unitValue
        self.number = number
    }
    
    internal enum CodingKeys: String, CodingKey {
        case unitValue = "UnitValue"
        case number = "Number"
    }
    
}
