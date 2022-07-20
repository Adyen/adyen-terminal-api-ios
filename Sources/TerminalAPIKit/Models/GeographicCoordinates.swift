//
//  GeographicCoordinates.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class GeographicCoordinates: Codable {
    
    /// Undocumented.
    public let latitude: String
    
    /// Undocumented.
    public let longitude: String
    
    /// Initializes the GeographicCoordinates.
    ///
    /// - Parameter latitude: Undocumented.
    /// - Parameter longitude: Undocumented.
    public init(latitude: String, longitude: String) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    internal enum CodingKeys: String, CodingKey {
        case latitude = "Latitude"
        case longitude = "Longitude"
    }
    
}
