//
//  SoundFormat.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum SoundFormat: String, Codable {
    case soundRef = "SoundRef"
    case messageRef = "MessageRef"
    case text = "Text"
}
