//
//  InputRequest.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Input Request message.
/// It conveys data to display and the way to process the display, and contains the complete content to display. In addition to the display on the Input Device, it might contain an operation (the DisplayOutput element) per Display Device type.
public final class InputRequest: Request {
    
    /// The type of the response returned for this request.
    public typealias ResponseType = InputResponse
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "InputRequest"
    
    /// The category of the message in which this request is sent.
    public static let messageCategory = MessageCategory.input
    
    /// Information related to an Input request.
    public let inputData: InputData
    
    /// Information to display and the way to process the display.
    public let displayOutput: DisplayOutput?
    
    /// Initializes the InputRequest.
    ///
    /// - Parameter inputData: Information related to an Input request.
    /// - Parameter displayOutput: Information to display and the way to process the display.

    public init(inputData: InputData, displayOutput: DisplayOutput?) {
        self.inputData = inputData
        self.displayOutput = displayOutput
    }
    
    internal enum CodingKeys: String, CodingKey {
        case inputData = "InputData"
        case displayOutput = "DisplayOutput"
    }
    
}
