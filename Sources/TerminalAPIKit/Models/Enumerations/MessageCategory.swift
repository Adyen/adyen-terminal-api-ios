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
    case cardReaderAPDU = "CardReaderAPDU"
    case cardReaderInit = "CardReaderInit"
    case cardReaderPowerOff = "CardReaderPowerOff"
    case diagnosis = "Diagnosis"
    case display = "Display"
    case enableService = "EnableService"
    case event = "Event"
    case getTotals = "GetTotals"
    case input = "Input"
    case inputUpdate = "InputUpdate"
    case login = "Login"
    case logout = "Logout"
    case loyalty = "Loyalty"
    case payment = "Payment"
    case pin = "PIN"
    case print = "Print"
    case reconciliation = "Reconciliation"
    case reversal = "Reversal"
    case sound = "Sound"
    case storedValue = "StoredValue"
    case transactionStatus = "TransactionStatus"
    case transmit = "Transmit"
}
