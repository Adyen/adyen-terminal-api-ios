//
//  LoyaltyHandling.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum LoyaltyHandling: String, Codable {
    case forbidden = "Forbidden"
    case processed = "Processed"
    case allowed = "Allowed"
    case proposed = "Proposed"
    case required = "Required"
}
