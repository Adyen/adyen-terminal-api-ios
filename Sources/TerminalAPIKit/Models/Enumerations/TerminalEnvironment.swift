//
//  TerminalEnvironment.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum TerminalEnvironment: String, Codable {
    case attended = "Attended"
    case semiAttended = "SemiAttended"
    case unattended = "Unattended"
}
