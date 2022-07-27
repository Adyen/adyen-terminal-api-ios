//
//  MessageCategory.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum MessageCategory: String, Codable {
    case abort = "Abort"
    case admin = "Admin"
    case balanceInquiry = "BalanceInquiry"
    case batch = "Batch"
    case cardAcquisition = "CardAcquisition"
    case diagnosis = "Diagnosis"
    case display = "Display"
    case enableService = "EnableService"
    case event = "Event"
    case getTotals = "GetTotals"
    case input = "Input"
    case login = "Login"
    case logout = "Logout"
    case payment = "Payment"
    case print = "Print"
    case reconciliation = "Reconciliation"
    case reversal = "Reversal"
    case storedValue = "StoredValue"
    case transactionStatus = "TransactionStatus"
}
