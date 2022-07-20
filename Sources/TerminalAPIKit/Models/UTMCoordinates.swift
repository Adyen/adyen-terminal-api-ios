//
//  UTMCoordinates.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class UTMCoordinates: Codable {
    
    /// Undocumented.
    public let utmZone: String
    
    /// Undocumented.
    public let utmEastward: String
    
    /// Undocumented.
    public let utmNorthward: String
    
    /// Initializes the UTMCoordinates.
    ///
    /// - Parameter utmZone: Undocumented.
    /// - Parameter utmEastward: Undocumented.
    /// - Parameter utmNorthward: Undocumented.
    public init(utmZone: String, utmEastward: String, utmNorthward: String) {
        self.utmZone = utmZone
        self.utmEastward = utmEastward
        self.utmNorthward = utmNorthward
    }
    
    internal enum CodingKeys: String, CodingKey {
        case utmZone = "UTMZone"
        case utmEastward = "UTMEastward"
        case utmNorthward = "UTMNorthward"
    }
    
}
