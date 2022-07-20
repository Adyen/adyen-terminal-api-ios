//
//  PaymentResult.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class PaymentResult: Codable {
    
    /// Undocumented.
    public let paymentType: PaymentType?
    
    /// Undocumented.
    public let paymentInstrumentData: PaymentInstrumentData?
    
    /// Undocumented.
    public let finalAmounts: FinalAmounts?
    
    /// Undocumented.
    public let instalment: Instalment?
    
    /// Undocumented.
    public let currencyConversion: [CurrencyConversion]?
    
    /// Undocumented.
    public let merchantOverrideFlag: Bool?
    
    /// Undocumented.
    public let capturedSignature: CapturedSignature?
    
    /// Undocumented.
    public let protectedSignature: [UInt8]?
    
    /// Undocumented.
    public let customerLanguage: String?
    
    /// Undocumented.
    public let onlineFlag: Bool?
    
    /// Undocumented.
    public let authenticationMethod: [AuthenticationMethod]?
    
    /// Undocumented.
    public let validityDate: Date?
    
    /// Undocumented.
    public let paymentAcquirerData: PaymentAcquirerData?
    
    /// Initializes the PaymentResult.
    ///
    /// - Parameter paymentType: Undocumented.
    /// - Parameter paymentInstrumentData: Undocumented.
    /// - Parameter finalAmounts: Undocumented.
    /// - Parameter instalment: Undocumented.
    /// - Parameter currencyConversion: Undocumented.
    /// - Parameter merchantOverrideFlag: Undocumented.
    /// - Parameter capturedSignature: Undocumented.
    /// - Parameter protectedSignature: Undocumented.
    /// - Parameter customerLanguage: Undocumented.
    /// - Parameter onlineFlag: Undocumented.
    /// - Parameter authenticationMethod: Undocumented.
    /// - Parameter validityDate: Undocumented.
    /// - Parameter paymentAcquirerData: Undocumented.
    public init(paymentType: PaymentType? = nil, paymentInstrumentData: PaymentInstrumentData? = nil, finalAmounts: FinalAmounts? = nil, instalment: Instalment? = nil, currencyConversion: [CurrencyConversion]? = nil, merchantOverrideFlag: Bool? = nil, capturedSignature: CapturedSignature? = nil, protectedSignature: [UInt8]? = nil, customerLanguage: String? = nil, onlineFlag: Bool? = nil, authenticationMethod: [AuthenticationMethod]? = nil, validityDate: Date? = nil, paymentAcquirerData: PaymentAcquirerData? = nil) {
        self.paymentType = paymentType
        self.paymentInstrumentData = paymentInstrumentData
        self.finalAmounts = finalAmounts
        self.instalment = instalment
        self.currencyConversion = currencyConversion
        self.merchantOverrideFlag = merchantOverrideFlag
        self.capturedSignature = capturedSignature
        self.protectedSignature = protectedSignature
        self.customerLanguage = customerLanguage
        self.onlineFlag = onlineFlag
        self.authenticationMethod = authenticationMethod
        self.validityDate = validityDate
        self.paymentAcquirerData = paymentAcquirerData
    }
    
    internal enum CodingKeys: String, CodingKey {
        case paymentType = "PaymentType"
        case paymentInstrumentData = "PaymentInstrumentData"
        case finalAmounts = "AmountsResp"
        case instalment = "Instalment"
        case currencyConversion = "CurrencyConversion"
        case merchantOverrideFlag = "MerchantOverrideFlag"
        case capturedSignature = "CapturedSignature"
        case protectedSignature = "ProtectedSignature"
        case customerLanguage = "CustomerLanguage"
        case onlineFlag = "OnlineFlag"
        case authenticationMethod = "AuthenticationMethod"
        case validityDate = "ValidityDate"
        case paymentAcquirerData = "PaymentAcquirerData"
    }
    
}
