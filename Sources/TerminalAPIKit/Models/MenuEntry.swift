//
//  MenuEntry.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// An entryof the menu to present to the Cashier
/// It conveys message text and parameters of the menu entry. This output data could be only provided for an input command, in order to choose an entryof the menu.
public final class MenuEntry: Codable {
    
    /// Characteristics related to the selection of a menu entry
    public let menuEntryTag: MenuEntryTag?
    
    /// Undocumented.
    public let defaultSelectedFlag: Bool?
    
    /// Format of the content to display or print.
    public let outputFormat: OutputFormat
    
    /// Reference of a predefined message to display or print.
    public let predefinedContent: PredefinedContent?
    
    /// Content of text message to display or print.
    /// Mandatory, if OutputFormat is Text, not allowed otherwise. One instance of OutputText per shared format.
    public let outputText: [OutputText]?
    
    /// XHTML document body containing the message to display or print.
    /// Mandatory, if OutputFormat is XHTML, not allowed otherwise.
    public let outputXHTML: Data?
    
    /// Initializes the MenuEntry.
    ///
    /// - Parameter menuEntryTag: Characteristics related to the selection of a menu entry
    /// - Parameter defaultSelectedFlag: Undocumented.
    /// - Parameter outputFormat: Format of the content to display or print.
    /// - Parameter predefinedContent: Reference of a predefined message to display or print.
    /// - Parameter outputText: Content of text message to display or print. Mandatory, if `outputFormat` is `text`, not allowed otherwise. One instance of `OutputText` per shared format.
    /// - Parameter outputXHTML: XHTML document body containing the message to display or print. Mandatory, if `outputFormat` is `xhtml`, not allowed otherwise.
    public init(
        menuEntryTag: MenuEntryTag? = nil,
        defaultSelectedFlag: Bool? = nil,
        outputFormat: OutputFormat,
        predefinedContent: PredefinedContent? = nil,
        outputText: [OutputText]?,
        outputXHTML: Data? = nil
    ) {
        self.menuEntryTag = menuEntryTag
        self.defaultSelectedFlag = defaultSelectedFlag
        self.outputFormat = outputFormat
        self.predefinedContent = predefinedContent
        self.outputText = outputText
        self.outputXHTML = outputXHTML
    }
    
    internal enum CodingKeys: String, CodingKey {
        case menuEntryTag = "MenuEntryTag"
        case defaultSelectedFlag = "DefaultSelectedFlag"
        case outputFormat = "OutputFormat"
        case predefinedContent = "PredefinedContent"
        case outputText = "OutputText"
        case outputXHTML = "OutputXHTML"
    }
    
}
