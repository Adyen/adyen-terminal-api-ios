//
//  DisplayResponse.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Display Response message.
/// It conveys the result of the display, parallel to the message request, except if response not required and absent.
public final class DisplayResponse: Response {
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "DisplayResponse"
    
    /// Information related to the result the output (display, print, input).
    public let outputResult: [OutputResult]
    
    /// Initializes the DisplayResponse.
    ///
    /// - Parameter outputResult: Information related to the result the output (display, print, input).
    public init(outputResult: [OutputResult]) {
        self.outputResult = outputResult
    }
    
    internal enum CodingKeys: String, CodingKey {
        case outputResult = "OutputResult"
    }
    
}
