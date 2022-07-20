//
//  VoidResponse.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// An empty response.
public final class VoidResponse: Response {
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "VoidResponse"
    
}
