//
//  StoredValueAccountIdentifier.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Identification of the stored value account or the stored value card
/// It contains the identifications of the stored value account or the stored value card, and the associated product sold by the Sale System for stored value requests.
public final class StoredValueAccountIdentifier: Codable {
    
    /// Undocumented.
    public let storedValueAccountType: StoredValueAccountType
    
    /// Undocumented.
    public let storedValueProvider: String?
    
    /// Undocumented.
    public let ownerName: String?
    
    /// Undocumented.
    public let expiryDate: String?
    
    /// Undocumented.
    public let entryMode: Set<EntryMode>
    
    /// Undocumented.
    public let identificationType: IdentificationType
    
    /// Undocumented.
    public let storedValueIdentifier: String
    
    /// Initializes the StoredValueAccountIdentifier.
    ///
    /// - Parameter storedValueAccountType: Undocumented.
    /// - Parameter storedValueProvider: Undocumented.
    /// - Parameter ownerName: Undocumented.
    /// - Parameter expiryDate: Undocumented.
    /// - Parameter entryMode: Undocumented.
    /// - Parameter identificationType: Undocumented.
    /// - Parameter storedValueIdentifier: Undocumented.
    public init(storedValueAccountType: StoredValueAccountType, storedValueProvider: String? = nil, ownerName: String? = nil, expiryDate: String? = nil, entryMode: Set<EntryMode>, identificationType: IdentificationType, storedValueIdentifier: String) {
        self.storedValueAccountType = storedValueAccountType
        self.storedValueProvider = storedValueProvider
        self.ownerName = ownerName
        self.expiryDate = expiryDate
        self.entryMode = entryMode
        self.identificationType = identificationType
        self.storedValueIdentifier = storedValueIdentifier
    }
    
    internal enum CodingKeys: String, CodingKey {
        case storedValueAccountType = "StoredValueAccountType"
        case storedValueProvider = "StoredValueProvider"
        case ownerName = "OwnerName"
        case expiryDate = "ExpiryDate"
        case entryMode = "EntryMode"
        case identificationType = "IdentificationType"
        case storedValueIdentifier = "StoredValueID"
    }
    
}
