//
//  StoredValueTransactionType.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum StoredValueTransactionType: String, Codable {
    case reserve = "Reserve"
    case activate = "Activate"
    case load = "Load"
    case unload = "Unload"
    case reverse = "Reverse"
    case duplicate = "Duplicate"
}
