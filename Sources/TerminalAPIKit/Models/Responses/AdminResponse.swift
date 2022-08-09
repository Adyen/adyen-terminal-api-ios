//
//  AdminResponse.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Custom Admin Response message.
/// It conveys the result of the Custom Admin.
public final class AdminResponse: Response {
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "AdminResponse"
    
    /// Result of a message request processing.
    public let response: MessageResponse
    
    /// Initializes the AdminResponse.
    ///
    /// - Parameter response: Result of a message request processing.
    public init(response: MessageResponse) {
        self.response = response
    }
    
    internal enum CodingKeys: String, CodingKey {
        case response = "Response"
    }
    
}
