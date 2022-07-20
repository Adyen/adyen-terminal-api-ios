//
//  EventNotification.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the EventNotification message.
/// It conveys Information related to the event, and possible action (maintenance, message to display).
public final class EventNotification: Request {
    
    /// The type of the response returned for this request.
    public typealias ResponseType = VoidResponse
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "EventNotification"
    
    /// The category of the message in which this request is sent.
    public static let messageCategory = MessageCategory.event
    
    /// Date and time of a transaction for the Sale System, the POI System or the Acquirer.
    public let date: Date
    
    /// Event the POI notifies to the Sale System.
    public let eventToNotify: EventToNotify
    
    /// Information about the event the POI notifies to the Sale System.
    public let eventDetails: String?
    
    /// Message request rejected by the receiver.
    public let rejectedMessage: Data?
    
    /// Indicates if the occurred event requires maintenance call or action.
    public let maintenanceRequiredFlag: Bool?
    
    /// Undocumented.
    public let customerLanguage: String?
    
    /// Information to display and the way to process the display.
    public let displayOutput: [DisplayOutput]?
    
    /// Initializes the EventNotification.
    ///
    /// - Parameter date: Date and time of a transaction for the Sale System, the POI System or the Acquirer.
    /// - Parameter eventToNotify: Event the POI notifies to the Sale System.
    /// - Parameter eventDetails: Information about the event the POI notifies to the Sale System.
    /// - Parameter rejectedMessage: Message request rejected by the receiver.
    /// - Parameter maintenanceRequiredFlag: Indicates if the occurred event requires maintenance call or action.
    /// - Parameter customerLanguage: Undocumented.
    /// - Parameter displayOutput: Information to display and the way to process the display.
    public init(date: Date, eventToNotify: EventToNotify, eventDetails: String? = nil, rejectedMessage: Data? = nil, maintenanceRequiredFlag: Bool? = nil, customerLanguage: String? = nil, displayOutput: [DisplayOutput]? = nil) {
        self.date = date
        self.eventToNotify = eventToNotify
        self.eventDetails = eventDetails
        self.rejectedMessage = rejectedMessage
        self.maintenanceRequiredFlag = maintenanceRequiredFlag
        self.customerLanguage = customerLanguage
        self.displayOutput = displayOutput
    }
    
    internal enum CodingKeys: String, CodingKey {
        case date = "TimeStamp"
        case eventToNotify = "EventToNotify"
        case eventDetails = "EventDetails"
        case rejectedMessage = "RejectedMessage"
        case maintenanceRequiredFlag = "MaintenanceRequiredFlag"
        case customerLanguage = "CustomerLanguage"
        case displayOutput = "DisplayOutput"
    }
    
}
