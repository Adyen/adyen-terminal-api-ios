//
//  Request.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Instances of conforming types represent a request to be sent to a Terminal API device.
public protocol Request: MessageBody {
    
    /// The type of the response returned for this request.
    associatedtype ResponseType: Response
    
    /// The category of the message in which this request is sent.
    static var messageCategory: MessageCategory { get }
    
}

internal extension Request {
    
    /// Boolean value indicating whether this request expects a response.
    static var isExpectingResponse: Bool {
        ResponseType.self != VoidResponse.self
    }
    
}
