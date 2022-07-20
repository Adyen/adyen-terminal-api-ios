//
//  POISystemData.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class POISystemData: Codable {
    
    /// Undocumented.
    public let dateTime: Date
    
    /// Undocumented.
    public let poiSoftware: POISoftware
    
    /// Undocumented.
    public let poiTerminalData: POITerminalData?
    
    /// Undocumented.
    public let poiStatus: POIStatus?
    
    /// Initializes the POISystemData.
    ///
    /// - Parameter dateTime: Undocumented.
    /// - Parameter poiSoftware: Undocumented.
    /// - Parameter poiTerminalData: Undocumented.
    /// - Parameter poiStatus: Undocumented.
    public init(dateTime: Date, poiSoftware: POISoftware, poiTerminalData: POITerminalData? = nil, poiStatus: POIStatus? = nil) {
        self.dateTime = dateTime
        self.poiSoftware = poiSoftware
        self.poiTerminalData = poiTerminalData
        self.poiStatus = poiStatus
    }
    
    internal enum CodingKeys: String, CodingKey {
        case dateTime = "DateTime"
        case poiSoftware = "POISoftware"
        case poiTerminalData = "POITerminalData"
        case poiStatus = "POIStatus"
    }
    
}
