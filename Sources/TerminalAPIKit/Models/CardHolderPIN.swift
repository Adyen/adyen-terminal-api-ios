//
//  CardHolderPIN.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class CardHolderPIN: Codable {
    
    /// Undocumented.
    public let encrPINBlock: [UInt8]
    
    /// Undocumented.
    public let pinFormat: PINFormat
    
    /// Undocumented.
    public let additionalInput: String?
    
    /// Initializes the CardHolderPIN.
    ///
    /// - Parameter encrPINBlock: Undocumented.
    /// - Parameter pinFormat: Undocumented.
    /// - Parameter additionalInput: Undocumented.
    public init(encrPINBlock: [UInt8], pinFormat: PINFormat, additionalInput: String? = nil) {
        self.encrPINBlock = encrPINBlock
        self.pinFormat = pinFormat
        self.additionalInput = additionalInput
    }
    
    internal enum CodingKeys: String, CodingKey {
        case encrPINBlock = "EncrPINBlock"
        case pinFormat = "PINFormat"
        case additionalInput = "AdditionalInput"
    }
    
}
