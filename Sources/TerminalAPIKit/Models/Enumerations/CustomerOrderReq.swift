//
//  CustomerOrderReq.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum CustomerOrderReq: String, Codable {
    case open = "Open"
    case closed = "Closed"
    case both = "Both"
}
