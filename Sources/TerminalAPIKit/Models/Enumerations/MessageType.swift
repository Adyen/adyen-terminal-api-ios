//
//  MessageType.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum MessageType: String, Codable {
    case request = "Request"
    case response = "Response"
    case notification = "Notification"
}
