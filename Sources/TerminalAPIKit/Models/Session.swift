//
//  Session.swift
//  TerminalAPIKit
//
//  Copyright (c) 2023 Adyen N.V.
//

import Foundation

public final class Session: Codable {
    
    /// The unique reference of the session.
    public let id: Int
    
    /// The type of the transaction. Use ``SessionType/Begin`` to start a session, and ``SessionType/End`` to end the session.
    public let type: SessionType
    
    /// Initializes the Session.
    ///
    /// - Parameter id: the unique reference of the session.
    /// - Parameter type: the type of session.
    public init(id: Int, type: SessionType) {
        self.id = id
        self.type = type;
    }
    
    internal enum CodingKeys: String, CodingKey {
        case id = "Id"
        case type = "Type"
    }
}
