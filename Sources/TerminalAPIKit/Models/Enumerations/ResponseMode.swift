//
//  ResponseMode.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum ResponseMode: String, Codable {
    case notRequired = "NotRequired"
    case immediate = "Immediate"
    case printEnd = "PrintEnd"
    case soundEnd = "SoundEnd"
}
