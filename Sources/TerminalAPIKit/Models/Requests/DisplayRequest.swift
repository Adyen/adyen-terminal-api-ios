//
//  DisplayRequest.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Display Request message.
/// It conveys the data to display and the way to process the display. It contains the complete content to display. It might contain an operation (the DisplayOutput element) per Display Device type.
public final class DisplayRequest: Request {
    
    /// The type of the response returned for this request.
    public typealias ResponseType = DisplayResponse
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "DisplayRequest"
    
    /// The category of the message in which this request is sent.
    public static let messageCategory = MessageCategory.display
    
    /// Information to display and the way to process the display.
    public let displayOutput: [DisplayOutput]
    
    /// Initializes the DisplayRequest.
    ///
    /// - Parameter displayOutput: Information to display and the way to process the display.
    public init(displayOutput: [DisplayOutput]) {
        self.displayOutput = displayOutput
    }
    
    internal enum CodingKeys: String, CodingKey {
        case displayOutput = "DisplayOutput"
    }
    
}
