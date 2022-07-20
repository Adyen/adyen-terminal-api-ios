//
//  CardReaderPowerOffRequest.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Card Reader Power-Off Request message.
/// It contains a possible invitation message to display on the CashierInterface or the CustomerInterface, for removing the card.
public final class CardReaderPowerOffRequest: Request {
    
    /// The type of the response returned for this request.
    public typealias ResponseType = CardReaderPowerOffResponse
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "CardReaderPowerOffRequest"
    
    /// The category of the message in which this request is sent.
    public static let messageCategory = MessageCategory.cardReaderPowerOff
    
    /// Maximum time to wait for the request processing in seconds.
    public let maxWaitingTime: Int?
    
    /// Information to display and the way to process the display.
    public let displayOutput: DisplayOutput?
    
    /// Initializes the CardReaderPowerOffRequest.
    ///
    /// - Parameter maxWaitingTime: Maximum time to wait for the request processing in seconds.
    /// - Parameter displayOutput: Information to display and the way to process the display.
    public init(maxWaitingTime: Int? = nil, displayOutput: DisplayOutput? = nil) {
        self.maxWaitingTime = maxWaitingTime
        self.displayOutput = displayOutput
    }
    
    internal enum CodingKeys: String, CodingKey {
        case maxWaitingTime = "MaxWaitingTime"
        case displayOutput = "DisplayOutput"
    }
    
}
