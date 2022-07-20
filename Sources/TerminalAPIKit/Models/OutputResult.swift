//
//  OutputResult.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Information related to the result the output (display, print, input).
/// In the message response, it contains the result of the output, if required in the message request.
public final class OutputResult: Codable {
    
    /// Logical device located on a Sale Terminal or a POI Terminal, in term of class of information to output (display, print
    public let device: Device
    
    /// Qualification of the information to sent to an output logical device, to display or print to the Cashier or the
    public let infoQualify: InfoQualify
    
    /// Result of a message request processing.
    public let response: MessageResponse
    
    /// Initializes the OutputResult.
    ///
    /// - Parameter device: Logical device located on a Sale Terminal or a POI Terminal, in term of class of information to output (display, print
    /// - Parameter infoQualify: Qualification of the information to sent to an output logical device, to display or print to the Cashier or the
    /// - Parameter response: Result of a message request processing.
    public init(device: Device, infoQualify: InfoQualify, response: MessageResponse) {
        self.device = device
        self.infoQualify = infoQualify
        self.response = response
    }
    
    internal enum CodingKeys: String, CodingKey {
        case device = "Device"
        case infoQualify = "InfoQualify"
        case response = "Response"
    }
    
}
