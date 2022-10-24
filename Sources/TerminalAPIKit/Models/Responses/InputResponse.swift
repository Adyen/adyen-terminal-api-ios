//
//  InputResponse.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Input Response message.
/// It conveys:The result of the outputs, parallel to the message request, except if response not required and absent.The result of the input
public final class InputResponse: Response {
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "InputResponse"
    
    /// Information related to the result the output (display, print, input).
    public let outputResult: OutputResult?
    
    /// Information related to the result the input.
    public let inputResult: InputResult
    
    /// Initializes the InputResponse.
    ///
    /// - Parameter outputResult: Information related to the result the output (display, print, input).
    /// - Parameter inputResult: Information related to the result the input.
    internal init(outputResult: OutputResult? = nil, inputResult: InputResult) {
        self.outputResult = outputResult
        self.inputResult = inputResult
    }
    
    internal enum CodingKeys: String, CodingKey {
        case outputResult = "OutputResult"
        case inputResult = "InputResult"
    }
    
}
