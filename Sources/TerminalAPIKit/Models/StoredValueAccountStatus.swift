//
//  StoredValueAccountStatus.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class StoredValueAccountStatus: Codable {
    
    /// Undocumented.
    public let storedValueAccountIdentifier: StoredValueAccountIdentifier
    
    /// Identification of the transaction by the host in charge of the stored value transaction
    public let hostTransactionIdentifier: TransactionIdentifier?
    
    /// Initializes the StoredValueAccountStatus.
    ///
    /// - Parameter storedValueAccountIdentifier: Undocumented.
    /// - Parameter hostTransactionIdentifier: Identification of the transaction by the host in charge of the stored value transaction
    public init(storedValueAccountIdentifier: StoredValueAccountIdentifier, hostTransactionIdentifier: TransactionIdentifier? = nil) {
        self.storedValueAccountIdentifier = storedValueAccountIdentifier
        self.hostTransactionIdentifier = hostTransactionIdentifier
    }
    
    internal enum CodingKeys: String, CodingKey {
        case storedValueAccountIdentifier = "StoredValueAccountID"
        case hostTransactionIdentifier = "HostTransactionID"
    }
    
}
