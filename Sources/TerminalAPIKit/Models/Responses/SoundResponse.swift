//
//  SoundResponse.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class SoundResponse: Response {
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "SoundResponse"
    
    /// Undocumented.
    public let response: MessageResponse
    
    /// Initializes the SoundResponse.
    ///
    /// - Parameter response: Undocumented.
    internal init(response: MessageResponse) {
        self.response = response
    }
    
    internal enum CodingKeys: String, CodingKey {
        case response = "Response"
    }
    
}
