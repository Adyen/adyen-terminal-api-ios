//
//  TransmitRequest.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class TransmitRequest: Request {
    
    /// The type of the response returned for this request.
    public typealias ResponseType = TransmitResponse
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "TransmitRequest"
    
    /// The category of the message in which this request is sent.
    public static let messageCategory = MessageCategory.transmit
    
    /// Undocumented.
    public let waitResponseFlag: Bool?
    
    /// Undocumented.
    public let maximumTransmitTime: Int
    
    /// Undocumented.
    public let destinationAddress: String
    
    /// Undocumented.
    public let message: Data
    
    /// Initializes the TransmitRequest.
    ///
    /// - Parameter waitResponseFlag: Undocumented.
    /// - Parameter maximumTransmitTime: Undocumented.
    /// - Parameter destinationAddress: Undocumented.
    /// - Parameter message: Undocumented.
    public init(waitResponseFlag: Bool? = nil, maximumTransmitTime: Int, destinationAddress: String, message: Data) {
        self.waitResponseFlag = waitResponseFlag
        self.maximumTransmitTime = maximumTransmitTime
        self.destinationAddress = destinationAddress
        self.message = message
    }
    
    internal enum CodingKeys: String, CodingKey {
        case waitResponseFlag = "WaitResponseFlag"
        case maximumTransmitTime = "MaximumTransmitTime"
        case destinationAddress = "DestinationAddress"
        case message = "Message"
    }
    
}
