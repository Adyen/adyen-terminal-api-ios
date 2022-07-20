//
//  EventToNotify.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum EventToNotify: String, Codable {
    case beginMaintenance = "BeginMaintenance"
    case endMaintenance = "EndMaintenance"
    case shutdown = "Shutdown"
    case initialised = "Initialised"
    case outOfOrder = "OutOfOrder"
    case completed = "Completed"
    case abort = "Abort"
    case saleWakeUp = "SaleWakeUp"
    case saleAdmin = "SaleAdmin"
    case customerLanguage = "CustomerLanguage"
    case keyPressed = "KeyPressed"
    case securityAlarm = "SecurityAlarm"
    case stopAssistance = "StopAssistance"
    case cardInserted = "CardInserted"
    case cardRemoved = "CardRemoved"
    case reject = "Reject"
}
