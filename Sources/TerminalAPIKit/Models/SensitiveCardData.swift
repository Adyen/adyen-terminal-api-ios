//
//  SensitiveCardData.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Sensitive information related to the payment card, entered or read by the Sale System.
/// This data structure could be CMS protected (EnvelopedData). In this case the data structure SensitiveCardData is replaced by the data structure ProtectedCardData of type ContentInformationType. When this data is protected, the exact
public final class SensitiveCardData: Codable {
    
    /// Primary Account Number
    public let pan: String?
    
    /// Card Sequence Number
    public let cardSeqNumb: String?
    
    /// Date after which the card cannot be used.
    public let expiryDate: String?
    
    /// Magnetic track or magnetic ink characters line.
    public let trackData: [TrackData]?
    
    /// Initializes the SensitiveCardData.
    ///
    /// - Parameter pan: Primary Account Number
    /// - Parameter cardSeqNumb: Card Sequence Number
    /// - Parameter expiryDate: Date after which the card cannot be used.
    /// - Parameter trackData: Magnetic track or magnetic ink characters line.
    public init(pan: String? = nil, cardSeqNumb: String? = nil, expiryDate: String? = nil, trackData: [TrackData]? = nil) {
        self.pan = pan
        self.cardSeqNumb = cardSeqNumb
        self.expiryDate = expiryDate
        self.trackData = trackData
    }
    
    internal enum CodingKeys: String, CodingKey {
        case pan = "PAN"
        case cardSeqNumb = "CardSeqNumb"
        case expiryDate = "ExpiryDate"
        case trackData = "TrackData"
    }
    
}
