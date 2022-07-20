//
//  CheckData.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Information related to the paper check used for the transaction.
/// Allows the check information to be provided by the Sale System before requesting the payment, or stored by the Sale System after processing of the payment.
public final class CheckData: Codable {
    
    /// Identification of the bank.
    public let bankIdentifier: String?
    
    /// Identification of the customer account.
    public let accountNumber: String?
    
    /// Identification of the bank check.
    public let checkNumber: String?
    
    /// Magnetic track or magnetic ink characters line.
    public let trackData: TrackData?
    
    /// Check guarantee card number.
    public let checkCardNumber: String?
    
    /// Type of bank check.
    public let typeCode: TypeCode?
    
    /// Country of the bank check.
    public let country: String?
    
    /// Initializes the CheckData.
    ///
    /// - Parameter bankIdentifier: Identification of the bank.
    /// - Parameter accountNumber: Identification of the customer account.
    /// - Parameter checkNumber: Identification of the bank check.
    /// - Parameter trackData: Magnetic track or magnetic ink characters line.
    /// - Parameter checkCardNumber: Check guarantee card number.
    /// - Parameter typeCode: Type of bank check.
    /// - Parameter country: Country of the bank check.
    public init(bankIdentifier: String? = nil, accountNumber: String? = nil, checkNumber: String? = nil, trackData: TrackData? = nil, checkCardNumber: String? = nil, typeCode: TypeCode? = nil, country: String? = nil) {
        self.bankIdentifier = bankIdentifier
        self.accountNumber = accountNumber
        self.checkNumber = checkNumber
        self.trackData = trackData
        self.checkCardNumber = checkCardNumber
        self.typeCode = typeCode
        self.country = country
    }
    
    internal enum CodingKeys: String, CodingKey {
        case bankIdentifier = "BankID"
        case accountNumber = "AccountNumber"
        case checkNumber = "CheckNumber"
        case trackData = "TrackData"
        case checkCardNumber = "CheckCardNumber"
        case typeCode = "TypeCode"
        case country = "Country"
    }
    
}
