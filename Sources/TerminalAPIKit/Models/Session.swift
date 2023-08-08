//
//  Session.swift
//  TerminalAPIKit
//
//  Created by Andrew Gates on 8/8/23.
//

import Foundation

public final class Session: Codable {
    
    /// the unique reference of the session.
    public let id: Int
    
    /// set the value to Begin to start the session, set the value to End to end the session.
    public let type: SessionType
    
    public init(id:Int, type:SessionType) {
        self.id = id
        self.type = type;
    }
    
    internal enum CodingKeys: String, CodingKey {
        case id = "Id"
        case type = "Type"
    }
}
