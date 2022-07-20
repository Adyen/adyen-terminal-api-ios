//
//  ErrorCondition.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum ErrorCondition: String, Codable {
    case aborted = "Aborted"
    case busy = "Busy"
    case cancel = "Cancel"
    case deviceOut = "DeviceOut"
    case insertedCard = "InsertedCard"
    case inProgress = "InProgress"
    case loggedOut = "LoggedOut"
    case messageFormat = "MessageFormat"
    case notAllowed = "NotAllowed"
    case notFound = "NotFound"
    case paymentRestriction = "PaymentRestriction"
    case refusal = "Refusal"
    case unavailableDevice = "UnavailableDevice"
    case unavailableService = "UnavailableService"
    case invalidCard = "InvalidCard"
    case unreachableHost = "UnreachableHost"
    case wrongPIN = "WrongPIN"
}
