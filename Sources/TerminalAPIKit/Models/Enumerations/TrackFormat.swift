//
//  TrackFormat.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum TrackFormat: String, Codable {
    case iso = "ISO"
    case jisi = "JIS-I"
    case jisii = "JIS-II"
    case aamva = "AAMVA"
    case cmc7 = "CMC-7"
    case e13b = "E-13B"
}
