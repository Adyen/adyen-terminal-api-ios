//
//  PINRequestType.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum PINRequestType: String, Codable {
    case pinVerify = "PINVerify"
    case pinVerifyOnly = "PINVerifyOnly"
    case pinEnter = "PINEnter"
}
