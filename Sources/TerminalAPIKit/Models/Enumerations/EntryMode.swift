//
//  EntryMode.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum EntryMode: String, Codable {
    case rfid = "RFID"
    case keyed = "Keyed"
    case manual = "Manual"
    case file = "File"
    case scanned = "Scanned"
    case magneticStripe = "MagStripe"
    case icc = "ICC"
    case synchronousICC = "SynchronousICC"
    case tapped = "Tapped"
    case contactless = "Contactless"
    case mobile = "Mobile"
}
