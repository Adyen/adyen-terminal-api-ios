//
//  IdentificationSupport.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum IdentificationSupport: String, Codable {
    case noCard = "NoCard"
    case loyaltyCard = "LoyaltyCard"
    case hybridCard = "HybridCard"
    case linkedCard = "LinkedCard"
}
