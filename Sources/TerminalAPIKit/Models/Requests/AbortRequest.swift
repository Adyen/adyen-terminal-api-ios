//
//  AbortRequest.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Body of the Abort Request message.
/// It conveys Information requested for identification of the message request carrying the transaction to abort. A message to display on the CustomerError Device could be sent by the Sale System (DisplayOutput).
public final class AbortRequest: Request {
    
    /// The type of the response returned for this request.
    public typealias ResponseType = VoidResponse
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "AbortRequest"
    
    /// The category of the message in which this request is sent.
    public static let messageCategory = MessageCategory.abort
    
    /// Identification of a previous POI transaction.
    public let messageReference: MessageReference
    
    /// Reason of aborting a transaction
    public let abortReason: String
    
    /// Information to display and the way to process the display.
    public let displayOutput: DisplayOutput?
    
    /// Initializes the AbortRequest.
    ///
    /// - Parameter messageReference: Identification of a previous POI transaction.
    /// - Parameter abortReason: Reason of aborting a transaction
    /// - Parameter displayOutput: Information to display and the way to process the display.
    public init(messageReference: MessageReference, abortReason: String, displayOutput: DisplayOutput? = nil) {
        self.messageReference = messageReference
        self.abortReason = abortReason
        self.displayOutput = displayOutput
    }
    
    internal enum CodingKeys: String, CodingKey {
        case messageReference = "MessageReference"
        case abortReason = "AbortReason"
        case displayOutput = "DisplayOutput"
    }
    
}
