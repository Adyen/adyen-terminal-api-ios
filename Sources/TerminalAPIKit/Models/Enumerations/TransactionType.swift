//
//  TransactionType.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum TransactionType: String, Codable {
    case debit = "Debit"
    case credit = "Credit"
    case reverseDebit = "ReverseDebit"
    case reverseCredit = "ReverseCredit"
    case oneTimeReservation = "OneTimeReservation"
    case completedDeffered = "CompletedDeffered"
    case firstReservation = "FirstReservation"
    case updateReservation = "UpdateReservation"
    case completedReservation = "CompletedReservation"
    case cashAdvance = "CashAdvance"
    case issuerInstalment = "IssuerInstalment"
    case declined = "Declined"
    case failed = "Failed"
    case award = "Award"
    case reverseAward = "ReverseAward"
    case redemption = "Redemption"
    case reverseRedemption = "ReverseRedemption"
    case rebate = "Rebate"
    case reverseRebate = "ReverseRebate"
}
