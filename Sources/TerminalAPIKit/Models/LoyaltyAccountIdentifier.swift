//
//  LoyaltyAccountIdentifier.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Identification of a Loyalty account.
/// In the Payment or the Loyalty Request message, it allows to identify the loyalty account by the Sale Terminal instead of the POI Terminal (e.g. because the account identification is a bar-code read by the Cashier on a scanner device). In
public final class LoyaltyAccountIdentifier: Codable {
    
    /// Undocumented.
    public let entryMode: Set<EntryMode>
    
    /// Undocumented.
    public let identificationType: IdentificationType
    
    /// Undocumented.
    public let identificationSupport: IdentificationSupport?
    
    /// Undocumented.
    public let loyaltyIdentifier: String
    
    /// Initializes the LoyaltyAccountIdentifier.
    ///
    /// - Parameter entryMode: Undocumented.
    /// - Parameter identificationType: Undocumented.
    /// - Parameter identificationSupport: Undocumented.
    /// - Parameter loyaltyIdentifier: Undocumented.
    public init(entryMode: Set<EntryMode>, identificationType: IdentificationType, identificationSupport: IdentificationSupport? = nil, loyaltyIdentifier: String) {
        self.entryMode = entryMode
        self.identificationType = identificationType
        self.identificationSupport = identificationSupport
        self.loyaltyIdentifier = loyaltyIdentifier
    }
    
    internal enum CodingKeys: String, CodingKey {
        case entryMode = "EntryMode"
        case identificationType = "IdentificationType"
        case identificationSupport = "IdentificationSupport"
        case loyaltyIdentifier = "LoyaltyID"
    }
    
}
