//
//  StoredValueAccountType.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum StoredValueAccountType: String, Codable {
    case giftCard = "GiftCard"
    case phoneCard = "PhoneCard"
    case other = "Other"
}
