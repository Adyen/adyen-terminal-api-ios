//
//  PaymentReceipt.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Customer or Merchant payment receipt.
/// If the payment receipts are printed by the Sale system and the POI or the Sale does not implement the Print exchange (Basic profile).
public final class PaymentReceipt: Codable {
    
    /// Qualification of the document to print to the Cashier or the Customer.
    public let documentQualifier: DocumentQualifier
    
    /// Type of the print integrated to other prints.
    public let integratedPrintFlag: Bool?
    
    /// Indicate that the cardholder payment receipt requires a physical signature by the Customer.
    public let requiredSignatureFlag: Bool?
    
    /// Content to display or print.
    public let outputContent: OutputContent
    
    /// Initializes the PaymentReceipt.
    ///
    /// - Parameter documentQualifier: Qualification of the document to print to the Cashier or the Customer.
    /// - Parameter integratedPrintFlag: Type of the print integrated to other prints.
    /// - Parameter requiredSignatureFlag: Indicate that the cardholder payment receipt requires a physical signature by the Customer.
    /// - Parameter outputContent: Content to display or print.
    public init(documentQualifier: DocumentQualifier, integratedPrintFlag: Bool? = nil, requiredSignatureFlag: Bool? = nil, outputContent: OutputContent) {
        self.documentQualifier = documentQualifier
        self.integratedPrintFlag = integratedPrintFlag
        self.requiredSignatureFlag = requiredSignatureFlag
        self.outputContent = outputContent
    }
    
    internal enum CodingKeys: String, CodingKey {
        case documentQualifier = "DocumentQualifier"
        case integratedPrintFlag = "IntegratedPrintFlag"
        case requiredSignatureFlag = "RequiredSignatureFlag"
        case outputContent = "OutputContent"
    }
    
}
