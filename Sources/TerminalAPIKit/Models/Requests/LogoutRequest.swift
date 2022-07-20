//
//  LogoutRequest.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Logout Request message.
/// Empty
public final class LogoutRequest: Request {
    
    /// The type of the response returned for this request.
    public typealias ResponseType = LogoutResponse
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "LogoutRequest"
    
    /// The category of the message in which this request is sent.
    public static let messageCategory = MessageCategory.logout
    
    /// Undocumented.
    public let maintenanceAllowed: Bool?
    
    /// Initializes the LogoutRequest.
    ///
    /// - Parameter maintenanceAllowed: Undocumented.
    public init(maintenanceAllowed: Bool? = nil) {
        self.maintenanceAllowed = maintenanceAllowed
    }
    
    internal enum CodingKeys: String, CodingKey {
        case maintenanceAllowed = "MaintenanceAllowed"
    }
    
}
