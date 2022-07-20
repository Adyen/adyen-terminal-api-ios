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
    public let defaultSelectedFlag: Bool
    
    /// Undocumented.
    public let outputFormat: OutputFormat
    
    /// Undocumented.
    public let predefinedContent: PredefinedContent?
    
    /// Undocumented.
    public let outputText: [OutputText]?
    
    /// Undocumented.
    public let outputXHTML: Data?
    
    /// Initializes the MenuEntry.
    ///
    /// - Parameter menuEntryTag: Characteristics related to the selection of a menu entry
    /// - Parameter defaultSelectedFlag: Undocumented.
    /// - Parameter outputFormat: Undocumented.
    /// - Parameter predefinedContent: Undocumented.
    /// - Parameter outputText: Undocumented.
    /// - Parameter outputXHTML: Undocumented.
    public init(menuEntryTag: MenuEntryTag? = nil, defaultSelectedFlag: Bool, outputFormat: OutputFormat, predefinedContent: PredefinedContent? = nil, outputText: [OutputText]? = nil, outputXHTML: Data? = nil) {
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
