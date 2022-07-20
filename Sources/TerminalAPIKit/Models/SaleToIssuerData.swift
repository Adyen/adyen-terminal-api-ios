//
//  SaleToIssuerData.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Sale information intended for the Issuer.
/// The POI System receives this information and sends it to the Acquirer for the Issuer without any change.
public final class SaleToIssuerData: Codable {
    
    /// Label to print on the bank statement.
    public let statementReference: String?
    
    /// Initializes the SaleToIssuerData.
    ///
    /// - Parameter statementReference: Label to print on the bank statement.
    public init(statementReference: String? = nil) {
        self.statementReference = statementReference
    }
    
    internal enum CodingKeys: String, CodingKey {
        case statementReference = "StatementReference"
    }
    
}
