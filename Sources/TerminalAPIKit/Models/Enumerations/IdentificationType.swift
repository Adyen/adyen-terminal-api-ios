//
//  IdentificationType.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum IdentificationType: String, Codable {
    case pan = "PAN"
    case isoTrack2 = "ISOTrack2"
    case barCode = "BarCode"
    case accountNumber = "AccountNumber"
    case phoneNumber = "PhoneNumber"
}
