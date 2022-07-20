//
//  ServiceProfiles.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum ServiceProfiles: String, Codable {
    case synchro = "Synchro"
    case batch = "Batch"
    case oneTimeRes = "OneTimeRes"
    case reservation = "Reservation"
    case loyalty = "Loyalty"
    case storedValue = "StoredValue"
    case pin = "PIN"
    case cardReader = "CardReader"
    case sound = "Sound"
    case communication = "Communication"
}
