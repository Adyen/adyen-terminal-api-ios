//
//  PrintOutput.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class PrintOutput: Codable {
    
    /// Undocumented.
    public let documentQualifier: DocumentQualifier
    
    /// Undocumented.
    public let responseMode: ResponseMode
    
    /// Undocumented.
    public let integratedPrintFlag: Bool?
    
    /// Undocumented.
    public let requiredSignatureFlag: Bool?
    
    /// Undocumented.
    public let outputContent: OutputContent
    
    /// Initializes the PrintOutput.
    ///
    /// - Parameter documentQualifier: Undocumented.
    /// - Parameter responseMode: Undocumented.
    /// - Parameter integratedPrintFlag: Undocumented.
    /// - Parameter requiredSignatureFlag: Undocumented.
    /// - Parameter outputContent: Undocumented.
    public init(documentQualifier: DocumentQualifier, responseMode: ResponseMode, integratedPrintFlag: Bool? = nil, requiredSignatureFlag: Bool? = nil, outputContent: OutputContent) {
        self.documentQualifier = documentQualifier
        self.responseMode = responseMode
        self.integratedPrintFlag = integratedPrintFlag
        self.requiredSignatureFlag = requiredSignatureFlag
        self.outputContent = outputContent
    }
    
    internal enum CodingKeys: String, CodingKey {
        case documentQualifier = "DocumentQualifier"
        case responseMode = "ResponseMode"
        case integratedPrintFlag = "IntegratedPrintFlag"
        case requiredSignatureFlag = "RequiredSignatureFlag"
        case outputContent = "OutputContent"
    }
    
}
