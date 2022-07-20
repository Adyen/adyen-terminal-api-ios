//
//  CardReaderPowerOffResponse.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Card Reader Power-Off Response message.
/// It contains the result of the processed command.
public final class CardReaderPowerOffResponse: Response {
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "CardReaderPowerOffResponse"
    
    /// Result of a message request processing.
    public let response: MessageResponse
    
    /// Initializes the CardReaderPowerOffResponse.
    ///
    /// - Parameter response: Result of a message request processing.
    internal init(response: MessageResponse) {
        self.response = response
    }
    
    internal enum CodingKeys: String, CodingKey {
        case response = "Response"
    }
    
}
