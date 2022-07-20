//
//  PrinterStatus.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum PrinterStatus: String, Codable {
    case ok = "OK"
    case paperLow = "PaperLow"
    case noPaper = "NoPaper"
    case paperJam = "PaperJam"
    case outOfOrder = "OutOfOrder"
}
