//
//  POITerminalData.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class POITerminalData: Codable {
    
    /// Undocumented.
    public let terminalEnvironment: TerminalEnvironment
    
    /// Undocumented.
    public let poiCapabilities: Set<POICapabilities>
    
    /// Undocumented.
    public let poiProfile: POIProfile?
    
    /// Undocumented.
    public let poiSerialNumber: String
    
    /// Initializes the POITerminalData.
    ///
    /// - Parameter terminalEnvironment: Undocumented.
    /// - Parameter poiCapabilities: Undocumented.
    /// - Parameter poiProfile: Undocumented.
    /// - Parameter poiSerialNumber: Undocumented.
    public init(terminalEnvironment: TerminalEnvironment, poiCapabilities: Set<POICapabilities>, poiProfile: POIProfile? = nil, poiSerialNumber: String) {
        self.terminalEnvironment = terminalEnvironment
        self.poiCapabilities = poiCapabilities
        self.poiProfile = poiProfile
        self.poiSerialNumber = poiSerialNumber
    }
    
    internal enum CodingKeys: String, CodingKey {
        case terminalEnvironment = "TerminalEnvironment"
        case poiCapabilities = "POICapabilities"
        case poiProfile = "POIProfile"
        case poiSerialNumber = "POISerialNumber"
    }
    
}
