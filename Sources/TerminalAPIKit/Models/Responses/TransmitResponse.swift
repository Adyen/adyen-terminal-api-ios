//
//  TransmitResponse.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class TransmitResponse: Response {
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "TransmitResponse"
    
    /// Undocumented.
    public let response: MessageResponse
    
    /// Undocumented.
    public let message: Data?
    
    /// Initializes the TransmitResponse.
    ///
    /// - Parameter response: Undocumented.
    /// - Parameter message: Undocumented.
    internal init(response: MessageResponse, message: Data? = nil) {
        self.response = response
        self.message = message
    }
    
    internal enum CodingKeys: String, CodingKey {
        case response = "Response"
        case message = "Message"
    }
    
}
