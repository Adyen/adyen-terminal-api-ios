//
//  SessionContainer.swift
//  TerminalAPIKit
//
//  Created by Andrew Gates on 8/8/23.
//
// Used in AdminRequests
// https://docs.adyen.com/point-of-sale/shopper-engagement/create-session/

import Foundation

public final class SessionContainer: Codable {
    public let session:Session
    public let operation:[Operation]?
    
    public init(session: Session, operation: [Operation]?) {
        self.session = session
        self.operation = operation
    }
    
    internal enum CodingKeys: String, CodingKey {
        case session = "Session"
        case operation = "Operation"
    }
}
