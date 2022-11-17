//
//  PaymentAccountStatus.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class PaymentAccountStatus: Codable {
    
    /// Undocumented.
    public let paymentInstrumentData: PaymentInstrumentData?
    
    /// Undocumented.
    public let currentBalance: Decimal?
    
    /// Undocumented.
    public let currency: String?
    
    /// Undocumented.
    public let paymentAcquirerData: PaymentAcquirerData?
    
    /// Initializes the PaymentAccountStatus.
    ///
    /// - Parameter paymentInstrumentData: Undocumented.
    /// - Parameter currentBalance: Undocumented.
    /// - Parameter currency: Undocumented.
    /// - Parameter paymentAcquirerData: Undocumented.
    public init(paymentInstrumentData: PaymentInstrumentData? = nil, currentBalance: Decimal? = nil, currency: String? = nil, paymentAcquirerData: PaymentAcquirerData? = nil) {
        self.paymentInstrumentData = paymentInstrumentData
        self.currentBalance = currentBalance
        self.currency = currency
        self.paymentAcquirerData = paymentAcquirerData
    }
    
    internal enum CodingKeys: String, CodingKey {
        case paymentInstrumentData = "PaymentInstrumentData"
        case currentBalance = "CurrentBalance"
        case currency = "Currency"
        case paymentAcquirerData = "PaymentAcquirerData"
    }
    
}
