//
//  ServicesEnabled.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum ServicesEnabled: String, Codable {
    case cardAcquisition = "CardAcquisition"
    case payment = "Payment"
    case loyalty = "Loyalty"
}
