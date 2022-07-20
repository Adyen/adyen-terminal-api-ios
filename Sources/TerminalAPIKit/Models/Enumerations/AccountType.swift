//
//  AccountType.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum AccountType: String, Codable {
    case `default` = "Default"
    case savings = "Savings"
    case checking = "Checking"
    case creditCard = "CreditCard"
    case universal = "Universal"
    case investment = "Investment"
    case cardTotals = "CardTotals"
    case epurseCard = "EpurseCard"
}
