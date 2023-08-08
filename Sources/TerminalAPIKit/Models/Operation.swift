//
//  Operation.swift
//  TerminalAPIKit
//
//  Created by Andrew Gates on 8/8/23.
//

import Foundation

public final class Operation: Codable {

    /// the type of request after which the waiting screen shows: InputRequest, DisplayRequest, and Payment
    public let type:OperationType
    
    /// For now, the Operation.Variant can only have WaitingScreen as value. This shows the waiting screen animation on the terminal after every request until you end the session.
    public let variant:String
    
    /// UserInterfaceData.WaitingScreenTimeoutMs: how long the waiting screen is shown on the terminal display, in milliseconds.
    public let userInterfaceData:UserInterfaceData
    
    public init(type: OperationType, variant: String, userInterfaceData: UserInterfaceData) {
        self.type = type
        self.variant = variant
        self.userInterfaceData = userInterfaceData
    }
    
    internal enum CodingKeys: String, CodingKey {
        case type = "Type"
        case variant = "Variant"
        case userInterfaceData = "UserInterfaceData"
    }
}
