//
//  OutputFormat.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum OutputFormat: String, Codable {
    case messageRef = "MessageRef"
    case text = "Text"
    case xhtml = "XHTML"
    case barCode = "BarCode"
}
