//
//  MessageResponse.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Result of a message request processing.
/// If Result is Success, ErrorCondition is absent or not used in the processing of the message. In the other cases, the ErrorCondition has to be present and can refine the processing of the message response. AdditionalResponse gives more
public final class MessageResponse: Codable {
    
    /// Result of the processing of the message
    public let result: Result
    
    /// Condition that has produced  an error on the processing of a message request
    public let errorCondition: ErrorCondition?
    
    /// Additional information related to processing status of a message request .
    public let additionalResponse: String?
    
    /// Initializes the MessageResponse.
    ///
    /// - Parameter result: Result of the processing of the message
    /// - Parameter errorCondition: Condition that has produced  an error on the processing of a message request
    /// - Parameter additionalResponse: Additional information related to processing status of a message request .
    public init(result: Result, errorCondition: ErrorCondition? = nil, additionalResponse: String? = nil) {
        self.result = result
        self.errorCondition = errorCondition
        self.additionalResponse = additionalResponse
    }
    
    internal enum CodingKeys: String, CodingKey {
        case result = "Result"
        case errorCondition = "ErrorCondition"
        case additionalResponse = "AdditionalResponse"
    }
    
}
