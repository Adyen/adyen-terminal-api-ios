//
//  Session.swift
//  TerminalAPIKit
//
//  Created by Andrew Gates on 8/8/23.
//

import Foundation

public final class Session: Codable {
    
    /// The unique reference of the session.
    public let id: Int
    
    /// The type of the transaction. Use ``SessionType/Begin`` to start a session, and ``SessionType/End`` to end the session.
    public let type: SessionType
    
    /// Initializes the Session.
    ///
    /// - Parameter id: Undocumented.
    /// - Parameter type: Undocumented.
    public init(id: Int, type: SessionType) {
        self.id = id
        self.type = type;
    }
    
    internal enum CodingKeys: String, CodingKey {
        case id = "Id"
        case type = "Type"
    }
}
