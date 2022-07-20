//
//  LogoutResponse.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Logout Response message.
/// It conveys the result of the Logout.
public final class LogoutResponse: Response {
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "LogoutResponse"
    
    /// Result of a message request processing.
    public let response: MessageResponse
    
    /// Initializes the LogoutResponse.
    ///
    /// - Parameter response: Result of a message request processing.
    internal init(response: MessageResponse) {
        self.response = response
    }
    
    internal enum CodingKeys: String, CodingKey {
        case response = "Response"
    }
    
}
