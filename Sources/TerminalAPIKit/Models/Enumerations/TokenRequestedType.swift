//
//  TokenRequestedType.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum TokenRequestedType: String, Codable {
    case transaction = "Transaction"
    case customer = "Customer"
}
