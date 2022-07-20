//
//  Result.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum Result: String, Codable {
    case success = "Success"
    case failure = "Failure"
    case partial = "Partial"
}
