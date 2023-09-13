//
//  UserInterfaceData.swift
//  TerminalAPIKit
//
//  Copyright (c) 2023 Adyen N.V.
//

import Foundation

public final class UserInterfaceData: Codable {

    /// How long the waiting screen is shown on the terminal display, in milliseconds.
    public let waitingScreenTimeoutMs: Int
    
    /// Initializes the UserInterfaceData.
    ///
    /// - Parameter waitingScreenTimeoutMs: how long the waiting screen is shown on the terminal display, in milliseconds.
    public init(waitingScreenTimeoutMs: Int) {
        self.waitingScreenTimeoutMs = waitingScreenTimeoutMs
    }
    
    internal enum CodingKeys: String, CodingKey {
        case waitingScreenTimeoutMs = "WaitingScreenTimeoutMs"
    }
}
