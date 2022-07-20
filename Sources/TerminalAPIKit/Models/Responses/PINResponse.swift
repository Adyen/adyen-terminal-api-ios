//
//  PINResponse.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the PIN Response message.
/// It contains the result of the requested service, with possibly the encrypted PIN.
public final class PINResponse: Response {
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "PINResponse"
    
    /// Result of a message request processing.
    public let response: MessageResponse
    
    /// Undocumented.
    public let cardHolderPIN: CardHolderPIN?
    
    /// Initializes the PINResponse.
    ///
    /// - Parameter response: Result of a message request processing.
    /// - Parameter cardHolderPIN: Undocumented.
    internal init(response: MessageResponse, cardHolderPIN: CardHolderPIN? = nil) {
        self.response = response
        self.cardHolderPIN = cardHolderPIN
    }
    
    internal enum CodingKeys: String, CodingKey {
        case response = "Response"
        case cardHolderPIN = "CardHolderPIN"
    }
    
}
