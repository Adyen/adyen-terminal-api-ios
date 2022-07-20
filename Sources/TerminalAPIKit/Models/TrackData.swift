//
//  TrackData.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Magnetic track or magnetic ink characters line.
/// Generic data structure for a card track, used when the magstripe card reader is located on the Sale Terminal, or for magstripe Card Reader device request. The data structure is also used to store the line at the bottom of a bank check
public final class TrackData: Codable {
    
    /// Undocumented.
    public let trackNumb: Int?
    
    /// Undocumented.
    public let trackFormat: TrackFormat?
    
    /// Undocumented.
    public let trackValue: String
    
    /// Initializes the TrackData.
    ///
    /// - Parameter trackNumb: Undocumented.
    /// - Parameter trackFormat: Undocumented.
    /// - Parameter trackValue: Undocumented.
    public init(trackNumb: Int? = nil, trackFormat: TrackFormat? = nil, trackValue: String) {
        self.trackNumb = trackNumb
        self.trackFormat = trackFormat
        self.trackValue = trackValue
    }
    
    internal enum CodingKeys: String, CodingKey {
        case trackNumb = "TrackNumb"
        case trackFormat = "TrackFormat"
        case trackValue = "TrackValue"
    }
    
}
