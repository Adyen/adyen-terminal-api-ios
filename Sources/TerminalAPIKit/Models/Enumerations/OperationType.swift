//
//  OperationType.swift
//  TerminalAPIKit
//
//  Copyright (c) 2023 Adyen N.V.
//

import Foundation

public enum OperationType: String, Codable {
    case inputRequest = "InputRequest"
    case displayRequest = "DisplayRequest"
    case payment = "Payment"
}
