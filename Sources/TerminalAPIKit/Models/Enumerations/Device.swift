//
//  Device.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum Device: String, Codable {
    case cashierDisplay = "CashierDisplay"
    case customerDisplay = "CustomerDisplay"
    case cashierInput = "CashierInput"
    case customerInput = "CustomerInput"
}
