//
//  SessionContainer.swift
//  TerminalAPIKit
//
//  Copyright (c) 2023 Adyen N.V.
//
// Used in AdminRequests
// https://docs.adyen.com/point-of-sale/shopper-engagement/create-session/

import Foundation

public final class SessionContainer: Codable {
    public let session: Session
    public let operation: [Operation]?
    
    /// Initializes the SessionContainer.
    ///
    /// - Parameter session: The session.
    /// - Parameter operation: The operation.
    public init(session: Session, operation: [Operation]? = nil) {
        self.session = session
        self.operation = operation
    }
    
    internal enum CodingKeys: String, CodingKey {
        case session = "Session"
        case operation = "Operation"
    }
}
