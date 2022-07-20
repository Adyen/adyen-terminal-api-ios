//
//  GlobalStatus.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum GlobalStatus: String, Codable {
    case ok = "OK"
    case busy = "Busy"
    case maintenance = "Maintenance"
    case unreachable = "Unreachable"
}
