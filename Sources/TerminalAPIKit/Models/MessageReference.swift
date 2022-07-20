//
//  MessageReference.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Identification of a previous POI transaction.
/// To abort a transaction in progress or to request the status of a transaction from which no response has been received.  It identifies the message header of the message request to abort or request the status. The Abort or TransactionStatus
public final class MessageReference: Codable {
    
    /// Category of message.
    public let messageCategory: MessageCategory?
    
    /// Identification of a message pair, which processes a transaction
    public let serviceIdentifier: String?
    
    /// Identification of a device message pair
    public let deviceIdentifier: String?
    
    /// Identification of a Sale System or a Sale Terminal for the Sale to POI protocol
    public let saleIdentifier: String?
    
    /// Identification of a POI System or a POI Terminal for the Sale to POI protocol
    public let poiIdentifier: String?
    
    /// Initializes the MessageReference.
    ///
    /// - Parameter messageCategory: Category of message.
    /// - Parameter serviceIdentifier: Identification of a message pair, which processes a transaction
    /// - Parameter deviceIdentifier: Identification of a device message pair
    /// - Parameter saleIdentifier: Identification of a Sale System or a Sale Terminal for the Sale to POI protocol
    /// - Parameter poiIdentifier: Identification of a POI System or a POI Terminal for the Sale to POI protocol
    public init(messageCategory: MessageCategory? = nil, serviceIdentifier: String? = nil, deviceIdentifier: String? = nil, saleIdentifier: String? = nil, poiIdentifier: String? = nil) {
        self.messageCategory = messageCategory
        self.serviceIdentifier = serviceIdentifier
        self.deviceIdentifier = deviceIdentifier
        self.saleIdentifier = saleIdentifier
        self.poiIdentifier = poiIdentifier
    }
    
    internal enum CodingKeys: String, CodingKey {
        case messageCategory = "MessageCategory"
        case serviceIdentifier = "ServiceID"
        case deviceIdentifier = "DeviceID"
        case saleIdentifier = "SaleID"
        case poiIdentifier = "POIID"
    }
    
}
