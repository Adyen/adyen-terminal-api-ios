//
//  CardReaderInitRequest.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Card Reader Init Request message.
/// It contains possible restrictions for the type of card reader to use, and a possible invitation message to display on the CashierInterface or the CustomerInterface.
public final class CardReaderInitRequest: Request {
    
    /// The type of the response returned for this request.
    public typealias ResponseType = CardReaderInitResponse
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "CardReaderInitRequest"
    
    /// The category of the message in which this request is sent.
    public static let messageCategory = MessageCategory.cardReaderInit
    
    /// Flag to request a warm reset on a chip.
    public let warmResetFlag: Bool?
    
    /// Payment instrument entry mode requested by the Sale System.
    public let forceEntryMode: Set<ForceEntryMode>?
    
    /// Indicates if the POI has to keep the card in the reader for a smart card.
    public let leaveCardFlag: Bool?
    
    /// Maximum time to wait for the request processing in seconds.
    public let maxWaitingTime: Int?
    
    /// Information to display and the way to process the display.
    public let displayOutput: DisplayOutput?
    
    /// Initializes the CardReaderInitRequest.
    ///
    /// - Parameter warmResetFlag: Flag to request a warm reset on a chip.
    /// - Parameter forceEntryMode: Payment instrument entry mode requested by the Sale System.
    /// - Parameter leaveCardFlag: Indicates if the POI has to keep the card in the reader for a smart card.
    /// - Parameter maxWaitingTime: Maximum time to wait for the request processing in seconds.
    /// - Parameter displayOutput: Information to display and the way to process the display.
    public init(warmResetFlag: Bool? = nil, forceEntryMode: Set<ForceEntryMode>? = nil, leaveCardFlag: Bool? = nil, maxWaitingTime: Int? = nil, displayOutput: DisplayOutput? = nil) {
        self.warmResetFlag = warmResetFlag
        self.forceEntryMode = forceEntryMode
        self.leaveCardFlag = leaveCardFlag
        self.maxWaitingTime = maxWaitingTime
        self.displayOutput = displayOutput
    }
    
    internal enum CodingKeys: String, CodingKey {
        case warmResetFlag = "WarmResetFlag"
        case forceEntryMode = "ForceEntryMode"
        case leaveCardFlag = "LeaveCardFlag"
        case maxWaitingTime = "MaxWaitingTime"
        case displayOutput = "DisplayOutput"
    }
    
}
