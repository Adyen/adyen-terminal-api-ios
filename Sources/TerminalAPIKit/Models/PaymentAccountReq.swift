//
//  PaymentAccountReq.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class PaymentAccountReq: Codable {
    
    /// Undocumented.
    public let accountType: AccountType?
    
    /// Undocumented.
    public let cardAcquisitionReference: TransactionIdentifier?
    
    /// Undocumented.
    public let paymentInstrumentData: PaymentInstrumentData?
    
    /// Initializes the PaymentAccountReq.
    ///
    /// - Parameter accountType: Undocumented.
    /// - Parameter cardAcquisitionReference: Undocumented.
    /// - Parameter paymentInstrumentData: Undocumented.
    public init(accountType: AccountType? = nil, cardAcquisitionReference: TransactionIdentifier? = nil, paymentInstrumentData: PaymentInstrumentData? = nil) {
        self.accountType = accountType
        self.cardAcquisitionReference = cardAcquisitionReference
        self.paymentInstrumentData = paymentInstrumentData
    }
    
    internal enum CodingKeys: String, CodingKey {
        case accountType = "AccountType"
        case cardAcquisitionReference = "CardAcquisitionReference"
        case paymentInstrumentData = "PaymentInstrumentData"
    }
    
}
