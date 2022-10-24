//
//  EnableServiceResponse.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Enable Service Response message.
/// It conveys the result of the Enable Service processing.
public final class EnableServiceResponse: Response {
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "EnableServiceResponse"
    
    /// Result of a message request processing.
    public let response: MessageResponse
    
    /// Initializes the EnableServiceResponse.
    ///
    /// - Parameter response: Result of a message request processing.
    internal init(response: MessageResponse) {
        self.response = response
    }
    
    internal enum CodingKeys: String, CodingKey {
        case response = "Response"
    }
    
}
