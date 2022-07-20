//
//  PaymentType.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum PaymentType: String, Codable {
    case normal = "Normal"
    case refund = "Refund"
    case oneTimeReservation = "OneTimeReservation"
    case firstReservation = "FirstReservation"
    case updateReservation = "UpdateReservation"
    case completion = "Completion"
    case cashAdvance = "CashAdvance"
    case cashDeposit = "CashDeposit"
    case recurring = "Recurring"
    case instalment = "Instalment"
    case issuerInstalment = "IssuerInstalment"
    case paidOut = "PaidOut"
}
