//
//  Message.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// A message that can be sent to or received from a Terminal API device.
public final class Message<MessageBodyType: MessageBody>: Codable {
    
    /// The header of the message.
    public let header: MessageHeader
    
    /// The body of the message.
    public let body: MessageBodyType
    
    /// Initializes the message.
    ///
    /// - Parameters:
    ///   - header: The header of the message.
    ///   - body: The body of the message.
    public init(header: MessageHeader, body: MessageBodyType) {
        self.header = header
        self.body = body
    }
    
    /// Initializes the message by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)
        
        guard let subcontainerKey = container.allKeys.first else {
            let context = DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Empty container.")
            
            throw DecodingError.dataCorrupted(context)
        }
        
        let subcontainer = try container.nestedContainer(keyedBy: StringCodingKey.self, forKey: subcontainerKey)
        header = try subcontainer.decode(MessageHeader.self, forKey: "MessageHeader")
        body = try subcontainer.decode(MessageBodyType.self, forKey: StringCodingKey(for: MessageBodyType.self))
    }
    
    /// Encodes the message into the given encoder.
    ///
    /// This function throws an error if any values are invalid for the given encoder’s format.
    ///
    /// - Parameter encoder: The encoder to write data to.
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)
        var nestedContainer = container.nestedContainer(keyedBy: StringCodingKey.self, forKey: StringCodingKey(for: header.messageType))
        try nestedContainer.encode(header, forKey: "MessageHeader")
        try nestedContainer.encode(body, forKey: StringCodingKey(for: body))
    }
    
}

/// Instances of conforming types can be embedded as the body in a message.
public protocol MessageBody: Codable {
    
    /// The key used to encode or decode the receiver in a message envelope.
    static var codingKey: String { get }
    
}
