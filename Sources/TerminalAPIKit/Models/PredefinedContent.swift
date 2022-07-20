//
//  PredefinedContent.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Reference of a predefined message to display or print.
/// It conveys Information related to the predefined message
public final class PredefinedContent: Codable {
    
    /// Identification of a predefined message to display or print.
    public let referenceIdentifier: String
    
    /// Identification of a language.
    public let language: String?
    
    /// Initializes the PredefinedContent.
    ///
    /// - Parameter referenceIdentifier: Identification of a predefined message to display or print.
    /// - Parameter language: Identification of a language.
    public init(referenceIdentifier: String, language: String? = nil) {
        self.referenceIdentifier = referenceIdentifier
        self.language = language
    }
    
    internal enum CodingKeys: String, CodingKey {
        case referenceIdentifier = "ReferenceID"
        case language = "Language"
    }
    
}
