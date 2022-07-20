//
//  CashHandlingDevice.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Status of cash handling device.
/// Indicate the status and the remaining coins and bill in a cash handling device.
public final class CashHandlingDevice: Codable {
    
    /// Indicates if the cash handling device is working and usable.
    public let cashHandlingOKFlag: Bool
    
    /// Currency of a monetary amount.
    public let currency: String
    
    /// Number of coins or bills of a given value.
    public let coinsOrBills: [CoinsOrBills]
    
    /// Initializes the CashHandlingDevice.
    ///
    /// - Parameter cashHandlingOKFlag: Indicates if the cash handling device is working and usable.
    /// - Parameter currency: Currency of a monetary amount.
    /// - Parameter coinsOrBills: Number of coins or bills of a given value.
    public init(cashHandlingOKFlag: Bool, currency: String, coinsOrBills: [CoinsOrBills]) {
        self.cashHandlingOKFlag = cashHandlingOKFlag
        self.currency = currency
        self.coinsOrBills = coinsOrBills
    }
    
    internal enum CodingKeys: String, CodingKey {
        case cashHandlingOKFlag = "CashHandlingOKFlag"
        case currency = "Currency"
        case coinsOrBills = "CoinsOrBills"
    }
    
}
