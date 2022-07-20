//
//  HostStatus.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// State of a Host.
/// Indicate the reachability of the host by the POI Terminal.
public final class HostStatus: Codable {
    
    /// Identification of the Acquirer
    public let acquirerIdentifier: String
    
    /// Indicate if a Host is reachable
    public let isReachableFlag: Bool?
    
    /// Initializes the HostStatus.
    ///
    /// - Parameter acquirerIdentifier: Identification of the Acquirer
    /// - Parameter isReachableFlag: Indicate if a Host is reachable
    public init(acquirerIdentifier: String, isReachableFlag: Bool? = nil) {
        self.acquirerIdentifier = acquirerIdentifier
        self.isReachableFlag = isReachableFlag
    }
    
    internal enum CodingKeys: String, CodingKey {
        case acquirerIdentifier = "AcquirerID"
        case isReachableFlag = "IsReachableFlag"
    }
    
}
