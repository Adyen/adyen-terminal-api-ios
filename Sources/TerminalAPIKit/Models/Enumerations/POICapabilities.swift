//
//  POICapabilities.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum POICapabilities: String, Codable {
    case cashierDisplay = "CashierDisplay"
    case cashierError = "CashierError"
    case cashierInput = "CashierInput"
    case customerDisplay = "CustomerDisplay"
    case customerError = "CustomerError"
    case customerInput = "CustomerInput"
    case printerReceipt = "PrinterReceipt"
    case printerDocument = "PrinterDocument"
    case printerVoucher = "PrinterVoucher"
    case magneticStripe = "MagStripe"
    case icc = "ICC"
    case emvContactless = "EMVContactless"
    case cashHandling = "CashHandling"
}
