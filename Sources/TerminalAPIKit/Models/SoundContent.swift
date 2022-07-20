//
//  SoundContent.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class SoundContent: Codable {
    
    /// Undocumented.
    public let soundFormat: SoundFormat
    
    /// Undocumented.
    public let language: String?
    
    /// Undocumented.
    public let referenceIdentifier: String?
    
    /// Undocumented.
    public let text: String?
    
    /// Initializes the SoundContent.
    ///
    /// - Parameter soundFormat: Undocumented.
    /// - Parameter language: Undocumented.
    /// - Parameter referenceIdentifier: Undocumented.
    /// - Parameter text: Undocumented.
    public init(soundFormat: SoundFormat, language: String? = nil, referenceIdentifier: String? = nil, text: String? = nil) {
        self.soundFormat = soundFormat
        self.language = language
        self.referenceIdentifier = referenceIdentifier
        self.text = text
    }
    
    internal enum CodingKeys: String, CodingKey {
        case soundFormat = "SoundFormat"
        case language = "Language"
        case referenceIdentifier = "ReferenceID"
        case text = "Text"
    }
    
}
