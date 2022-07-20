//
//  CardReaderInitResponse.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Card Reader Init Response message.
/// It contains the result of the Card Reader by the POI Card Reader (magnetic stripe content, or chip initialisation data).
public final class CardReaderInitResponse: Response {
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "CardReaderInitResponse"
    
    /// Result of a message request processing.
    public let response: MessageResponse?
    
    /// Entry mode of the payment instrument information
    public let entryMode: Set<EntryMode>?
    
    /// Magnetic track or magnetic ink characters line.
    public let trackData: [TrackData]?
    
    /// Data of a Chip Card related to the reset of the chip.
    public let iccResetData: ICCResetData?
    
    /// Initializes the CardReaderInitResponse.
    ///
    /// - Parameter response: Result of a message request processing.
    /// - Parameter entryMode: Entry mode of the payment instrument information
    /// - Parameter trackData: Magnetic track or magnetic ink characters line.
    /// - Parameter iccResetData: Data of a Chip Card related to the reset of the chip.
    internal init(response: MessageResponse? = nil, entryMode: Set<EntryMode>? = nil, trackData: [TrackData]? = nil, iccResetData: ICCResetData? = nil) {
        self.response = response
        self.entryMode = entryMode
        self.trackData = trackData
        self.iccResetData = iccResetData
    }
    
    internal enum CodingKeys: String, CodingKey {
        case response = "Response"
        case entryMode = "EntryMode"
        case trackData = "TrackData"
        case iccResetData = "ICCResetData"
    }
    
}
