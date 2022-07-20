//
//  PaymentInstrumentType.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum PaymentInstrumentType: String, Codable {
    case card = "Card"
    case check = "Check"
    case mobile = "Mobile"
    case storedValue = "StoredValue"
    case cash = "Cash"
}
