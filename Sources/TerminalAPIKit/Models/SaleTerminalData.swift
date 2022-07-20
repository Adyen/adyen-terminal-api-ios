//
//  SaleTerminalData.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Information related to the software and hardware feature of the Sale Terminal.
/// In the Login Request, if a Sale Terminal is involved in the login. In other messages, when a logical device is out of order (SaleCapabilites), or when the other data have changed since or were not in the Login.
public final class SaleTerminalData: Codable {
    
    /// Environment of the Terminal.
    public let terminalEnvironment: TerminalEnvironment
    
    /// Hardware capabilities of the Sale Terminal.
    public let saleCapabilities: Set<SaleCapabilities>
    
    /// Functional profile of the Sale Terminal.
    public let saleProfile: SaleProfile?
    
    /// Identification of a group of transaction on a POI Terminal, having the same Sale features.
    public let totalsGroupIdentifier: String?
    
    /// Initializes the SaleTerminalData.
    ///
    /// - Parameter terminalEnvironment: Environment of the Terminal.
    /// - Parameter saleCapabilities: Hardware capabilities of the Sale Terminal.
    /// - Parameter saleProfile: Functional profile of the Sale Terminal.
    /// - Parameter totalsGroupIdentifier: Identification of a group of transaction on a POI Terminal, having the same Sale features.
    public init(terminalEnvironment: TerminalEnvironment, saleCapabilities: Set<SaleCapabilities>, saleProfile: SaleProfile? = nil, totalsGroupIdentifier: String? = nil) {
        self.terminalEnvironment = terminalEnvironment
        self.saleCapabilities = saleCapabilities
        self.saleProfile = saleProfile
        self.totalsGroupIdentifier = totalsGroupIdentifier
    }
    
    internal enum CodingKeys: String, CodingKey {
        case terminalEnvironment = "TerminalEnvironment"
        case saleCapabilities = "SaleCapabilities"
        case saleProfile = "SaleProfile"
        case totalsGroupIdentifier = "TotalsGroupID"
    }
    
}
