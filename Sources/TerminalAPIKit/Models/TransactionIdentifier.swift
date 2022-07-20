//
//  TransactionIdentifier.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class TransactionIdentifier: Codable {
    
    /// Undocumented.
    public let transactionIdentifier: String
    
    /// Undocumented.
    public let date: Date
    
    /// Initializes the TransactionIdentifier.
    ///
    /// - Parameter transactionIdentifier: Undocumented.
    /// - Parameter date: Undocumented.
    public init(transactionIdentifier: String, date: Date) {
        self.transactionIdentifier = transactionIdentifier
        self.date = date
    }
    
    internal enum CodingKeys: String, CodingKey {
        case transactionIdentifier = "TransactionID"
        case date = "TimeStamp"
    }
    
}
