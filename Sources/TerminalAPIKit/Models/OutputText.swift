//
//  OutputText.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of text message to display or print.
/// It conveys Information related to the content of the text message and its format. All the data elements related to the format of the text to display or print are parameters valid for the whole Text content.
public final class OutputText: Codable {
    
    /// Undocumented.
    public let text: String
    
    /// Undocumented.
    public let characterSet: Int?
    
    /// Undocumented.
    public let font: String?
    
    /// Undocumented.
    public let startRow: Int?
    
    /// Undocumented.
    public let startColumn: Int?
    
    /// Undocumented.
    public let color: Color?
    
    /// Undocumented.
    public let characterWidth: CharacterWidth?
    
    /// Undocumented.
    public let characterHeight: CharacterHeight?
    
    /// Undocumented.
    public let characterStyle: CharacterStyle?
    
    /// Undocumented.
    public let alignment: Alignment?
    
    /// Undocumented.
    public let endOfLineFlag: Bool?
    
    /// Initializes the OutputText.
    ///
    /// - Parameter text: Undocumented.
    /// - Parameter characterSet: Undocumented.
    /// - Parameter font: Undocumented.
    /// - Parameter startRow: Undocumented.
    /// - Parameter startColumn: Undocumented.
    /// - Parameter color: Undocumented.
    /// - Parameter characterWidth: Undocumented.
    /// - Parameter characterHeight: Undocumented.
    /// - Parameter characterStyle: Undocumented.
    /// - Parameter alignment: Undocumented.
    /// - Parameter endOfLineFlag: Undocumented.
    public init(text: String, characterSet: Int? = nil, font: String? = nil, startRow: Int? = nil, startColumn: Int? = nil, color: Color? = nil, characterWidth: CharacterWidth? = nil, characterHeight: CharacterHeight? = nil, characterStyle: CharacterStyle? = nil, alignment: Alignment? = nil, endOfLineFlag: Bool? = nil) {
        self.text = text
        self.characterSet = characterSet
        self.font = font
        self.startRow = startRow
        self.startColumn = startColumn
        self.color = color
        self.characterWidth = characterWidth
        self.characterHeight = characterHeight
        self.characterStyle = characterStyle
        self.alignment = alignment
        self.endOfLineFlag = endOfLineFlag
    }
    
    internal enum CodingKeys: String, CodingKey {
        case text = "Text"
        case characterSet = "CharacterSet"
        case font = "Font"
        case startRow = "StartRow"
        case startColumn = "StartColumn"
        case color = "Color"
        case characterWidth = "CharacterWidth"
        case characterHeight = "CharacterHeight"
        case characterStyle = "CharacterStyle"
        case alignment = "Alignment"
        case endOfLineFlag = "EndOfLineFlag"
    }
    
}
