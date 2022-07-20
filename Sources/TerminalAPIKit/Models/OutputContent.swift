//
//  OutputContent.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content to display or print.
/// This is a sequence of elements if they have different formats.
public final class OutputContent: Codable {
    
    /// Format of the content to display or print
    public let outputFormat: OutputFormat
    
    /// Reference of a predefined message to display or print.
    public let predefinedContent: PredefinedContent?
    
    /// Content of text message to display or print.
    public let outputText: [OutputText]?
    
    /// XHTML document body containing the message to display or print.
    public let outputXHTML: Data?
    
    /// BarCode content to display or print.
    public let outputBarcode: OutputBarcode?
    
    /// Initializes the OutputContent.
    ///
    /// - Parameter outputFormat: Format of the content to display or print
    /// - Parameter predefinedContent: Reference of a predefined message to display or print.
    /// - Parameter outputText: Content of text message to display or print.
    /// - Parameter outputXHTML: XHTML document body containing the message to display or print.
    /// - Parameter outputBarcode: BarCode content to display or print.
    public init(outputFormat: OutputFormat, predefinedContent: PredefinedContent? = nil, outputText: [OutputText]? = nil, outputXHTML: Data? = nil, outputBarcode: OutputBarcode? = nil) {
        self.outputFormat = outputFormat
        self.predefinedContent = predefinedContent
        self.outputText = outputText
        self.outputXHTML = outputXHTML
        self.outputBarcode = outputBarcode
    }
    
    internal enum CodingKeys: String, CodingKey {
        case outputFormat = "OutputFormat"
        case predefinedContent = "PredefinedContent"
        case outputText = "OutputText"
        case outputXHTML = "OutputXHTML"
        case outputBarcode = "OutputBarcode"
    }
    
}
