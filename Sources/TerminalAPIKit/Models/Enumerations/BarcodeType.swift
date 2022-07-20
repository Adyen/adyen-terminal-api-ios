//
//  BarcodeType.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum BarcodeType: String, Codable {
    case ean8 = "EAN8"
    case ean13 = "EAN13"
    case upca = "UPCA"
    case code25 = "Code25"
    case code128 = "Code128"
    case pdf417 = "PDF417"
    case qrCode = "QRCode"
}
