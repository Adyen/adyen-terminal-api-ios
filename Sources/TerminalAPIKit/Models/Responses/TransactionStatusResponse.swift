//
//  TransactionStatusResponse.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the TransactionStatus Response message.
/// It conveys Information related to the status of the last or current Payment, Loyalty or Reversal transaction.
public final class TransactionStatusResponse: Response {
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "TransactionStatusResponse"
    
    /// Result of a message request processing.
    public let response: MessageResponse
    
    /// Identification of a previous POI transaction.
    public let messageReference: MessageReference?
    
    /// Content of the requested Message Response.
    public let repeatedMessageResponse: RepeatedMessageResponse?
    
    /// Initializes the TransactionStatusResponse.
    ///
    /// - Parameter response: Result of a message request processing.
    /// - Parameter messageReference: Identification of a previous POI transaction.
    /// - Parameter repeatedMessageResponse: Content of the requested Message Response.
    public init(
        response: MessageResponse,
        messageReference: MessageReference? = nil,
        repeatedMessageResponse: RepeatedMessageResponse? = nil
    ) {
        self.response = response
        self.messageReference = messageReference
        self.repeatedMessageResponse = repeatedMessageResponse
    }
    
    internal enum CodingKeys: String, CodingKey {
        case response = "Response"
        case messageReference = "MessageReference"
        case repeatedMessageResponse = "RepeatedMessageResponse"
    }
    
}
