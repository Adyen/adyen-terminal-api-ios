//
//  ReversalReason.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum ReversalReason: String, Codable {
    case custCancel = "CustCancel"
    case merchantCancel = "MerchantCancel"
    case malfunction = "Malfunction"
    case unable2Compl = "Unable2Compl"
}
