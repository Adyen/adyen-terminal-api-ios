//
//  PINFormat.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum PINFormat: String, Codable {
    case iso0 = "ISO0"
    case iso1 = "ISO1"
    case iso2 = "ISO2"
    case iso3 = "ISO3"
}
