//
//  MessageHeader.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Message header of the Sale to POI protocol message.
/// It conveys Information related to the Sale to POI protocol management
public final class MessageHeader: Codable {
    
    /// Undocumented.
    public let protocolVersion: String?
    
    /// Class of the message
    public let messageClass: MessageClass
    
    /// Category of message.
    public let messageCategory: MessageCategory
    
    /// Type of message of the Sale to POI protocol
    public let messageType: MessageType
    
    /// Identification of a message pair, which processes a transaction
    public let serviceIdentifier: String?
    
    /// Identification of a device message pair
    public let deviceIdentifier: String?
    
    /// Identification of a Sale System or a Sale Terminal for the Sale to POI protocol
    public let saleIdentifier: String
    
    /// Identification of a POI System or a POI Terminal for the Sale to POI protocol
    public let poiIdentifier: String
    
    /// Initializes the MessageHeader.
    ///
    /// - Parameter protocolVersion: Undocumented.
    /// - Parameter messageClass: Class of the message
    /// - Parameter messageCategory: Category of message.
    /// - Parameter messageType: Type of message of the Sale to POI protocol
    /// - Parameter serviceIdentifier: Identification of a message pair, which processes a transaction
    /// - Parameter deviceIdentifier: Identification of a device message pair
    /// - Parameter saleIdentifier: Identification of a Sale System or a Sale Terminal for the Sale to POI protocol
    /// - Parameter poiIdentifier: Identification of a POI System or a POI Terminal for the Sale to POI protocol
    public init(protocolVersion: String? = nil, messageClass: MessageClass, messageCategory: MessageCategory, messageType: MessageType, serviceIdentifier: String? = nil, deviceIdentifier: String? = nil, saleIdentifier: String, poiIdentifier: String) {
        self.protocolVersion = protocolVersion
        self.messageClass = messageClass
        self.messageCategory = messageCategory
        self.messageType = messageType
        self.serviceIdentifier = serviceIdentifier
        self.deviceIdentifier = deviceIdentifier
        self.saleIdentifier = saleIdentifier
        self.poiIdentifier = poiIdentifier
    }
    
    internal enum CodingKeys: String, CodingKey {
        case protocolVersion = "ProtocolVersion"
        case messageClass = "MessageClass"
        case messageCategory = "MessageCategory"
        case messageType = "MessageType"
        case serviceIdentifier = "ServiceID"
        case deviceIdentifier = "DeviceID"
        case saleIdentifier = "SaleID"
        case poiIdentifier = "POIID"
    }
    
}
