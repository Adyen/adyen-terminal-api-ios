//
//  MessageClass.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum MessageClass: String, Codable {
    case service = "Service"
    case device = "Device"
    case event = "Event"
}
