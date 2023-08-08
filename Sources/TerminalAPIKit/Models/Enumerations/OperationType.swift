//
//  OperationType.swift
//  TerminalAPIKit
//
//  Created by Andrew Gates on 8/8/23.
//

import Foundation

public enum OperationType: String, Codable {
    case inputRequest = "InputRequest"
    case displayRequest = "DisplayRequest"
    case payment = "Payment"
}
