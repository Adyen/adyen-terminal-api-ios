//
//  Geolocation.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class Geolocation: Codable {
    
    /// Undocumented.
    public let geographicCoordinates: GeographicCoordinates?
    
    /// Undocumented.
    public let utmCoordinates: UTMCoordinates?
    
    /// Initializes the Geolocation.
    ///
    /// - Parameter geographicCoordinates: Undocumented.
    /// - Parameter utmCoordinates: Undocumented.
    public init(geographicCoordinates: GeographicCoordinates? = nil, utmCoordinates: UTMCoordinates? = nil) {
        self.geographicCoordinates = geographicCoordinates
        self.utmCoordinates = utmCoordinates
    }
    
    internal enum CodingKeys: String, CodingKey {
        case geographicCoordinates = "GeographicCoordinates"
        case utmCoordinates = "UTMCoordinates"
    }
    
}
