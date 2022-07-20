//
//  ICCResetData.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class ICCResetData: Codable {
    
    /// Undocumented.
    public let atrValue: Data?
    
    /// Undocumented.
    public let cardStatusWords: Data?
    
    /// Initializes the ICCResetData.
    ///
    /// - Parameter atrValue: Undocumented.
    /// - Parameter cardStatusWords: Undocumented.
    public init(atrValue: Data? = nil, cardStatusWords: Data? = nil) {
        self.atrValue = atrValue
        self.cardStatusWords = cardStatusWords
    }
    
    internal enum CodingKeys: String, CodingKey {
        case atrValue = "ATRValue"
        case cardStatusWords = "CardStatusWords"
    }
    
}
