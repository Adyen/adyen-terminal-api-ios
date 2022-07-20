//
//  CharacterStyle.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum CharacterStyle: String, Codable {
    case normal = "Normal"
    case bold = "Bold"
    case italic = "Italic"
    case underline = "Underline"
}
