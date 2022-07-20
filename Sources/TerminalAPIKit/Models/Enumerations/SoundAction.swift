//
//  SoundAction.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum SoundAction: String, Codable {
    case startSound = "StartSound"
    case stopSound = "StopSound"
    case setDefaultVolume = "SetDefaultVolume"
}
