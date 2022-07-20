//
//  TransactionAction.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum TransactionAction: String, Codable {
    case startTransaction = "StartTransaction"
    case abortTransaction = "AbortTransaction"
}
