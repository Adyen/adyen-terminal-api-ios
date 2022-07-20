//
//  PrintRequest.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Print Request message.
/// It conveys the data to print and the way to process the print. It contains the complete content to print.
public final class PrintRequest: Request {
    
    /// The type of the response returned for this request.
    public typealias ResponseType = PrintResponse
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "PrintRequest"
    
    /// The category of the message in which this request is sent.
    public static let messageCategory = MessageCategory.print
    
    /// Information to print and the way to process the print.
    public let printOutput: PrintOutput
    
    /// Initializes the PrintRequest.
    ///
    /// - Parameter printOutput: Information to print and the way to process the print.
    public init(printOutput: PrintOutput) {
        self.printOutput = printOutput
    }
    
    internal enum CodingKeys: String, CodingKey {
        case printOutput = "PrintOutput"
    }
    
}
