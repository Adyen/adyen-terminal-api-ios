//
//  InfoQualify.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum InfoQualify: String, Codable {
    case status = "Status"
    case error = "Error"
    case display = "Display"
    case sound = "Sound"
    case input = "Input"
    case poiReplication = "POIReplication"
    case customerAssistance = "CustomerAssistance"
    case receipt = "Receipt"
    case document = "Document"
    case voucher = "Voucher"
}
