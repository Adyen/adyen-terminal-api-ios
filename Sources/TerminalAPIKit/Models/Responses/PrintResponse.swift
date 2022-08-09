//
//  PrintResponse.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Print Response message.
/// It conveys the result of the print, parallel to the message request, except if response not required and absent.
public final class PrintResponse: Response {
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "PrintResponse"
    
    /// Qualification of the document to print to the Cashier or the Customer.
    public let documentQualifier: DocumentQualifier
    
    /// Result of a message request processing.
    public let response: MessageResponse
    
    /// Initializes the PrintResponse.
    ///
    /// - Parameter documentQualifier: Qualification of the document to print to the Cashier or the Customer.
    /// - Parameter response: Result of a message request processing.
    public init(documentQualifier: DocumentQualifier, response: MessageResponse) {
        self.documentQualifier = documentQualifier
        self.response = response
    }
    
    internal enum CodingKeys: String, CodingKey {
        case documentQualifier = "DocumentQualifier"
        case response = "Response"
    }
    
}
