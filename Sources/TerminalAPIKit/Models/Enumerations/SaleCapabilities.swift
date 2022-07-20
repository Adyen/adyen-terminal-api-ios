//
//  SaleCapabilities.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum SaleCapabilities: String, Codable {
    case cashierStatus = "CashierStatus"
    case cashierError = "CashierError"
    case cashierDisplay = "CashierDisplay"
    case poiReplication = "POIReplication"
    case cashierInput = "CashierInput"
    case customerAssistance = "CustomerAssistance"
    case customerDisplay = "CustomerDisplay"
    case customerError = "CustomerError"
    case customerInput = "CustomerInput"
    case printerReceipt = "PrinterReceipt"
    case printerDocument = "PrinterDocument"
    case printerVoucher = "PrinterVoucher"
    case magneticStripe = "MagStripe"
    case icc = "ICC"
    case emvContactless = "EMVContactless"
}
