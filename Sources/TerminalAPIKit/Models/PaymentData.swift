//
//  PaymentData.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class PaymentData: Codable {
    
    /// Undocumented.
    public let paymentType: PaymentType?
    
    /// Undocumented.
    public let splitPaymentFlag: Bool?
    
    /// Undocumented.
    public let requestedValidityDate: Date?
    
    /// Undocumented.
    public let cardAcquisitionReference: TransactionIdentifier?
    
    /// Undocumented.
    public let instalment: Instalment?
    
    /// Undocumented.
    public let customerOrder: CustomerOrder?
    
    /// Undocumented.
    public let paymentInstrumentData: PaymentInstrumentData?
    
    /// Initializes the PaymentData.
    ///
    /// - Parameter paymentType: Undocumented.
    /// - Parameter splitPaymentFlag: Undocumented.
    /// - Parameter requestedValidityDate: Undocumented.
    /// - Parameter cardAcquisitionReference: Undocumented.
    /// - Parameter instalment: Undocumented.
    /// - Parameter customerOrder: Undocumented.
    /// - Parameter paymentInstrumentData: Undocumented.
    public init(paymentType: PaymentType? = nil, splitPaymentFlag: Bool? = nil, requestedValidityDate: Date? = nil, cardAcquisitionReference: TransactionIdentifier? = nil, instalment: Instalment? = nil, customerOrder: CustomerOrder? = nil, paymentInstrumentData: PaymentInstrumentData? = nil) {
        self.paymentType = paymentType
        self.splitPaymentFlag = splitPaymentFlag
        self.requestedValidityDate = requestedValidityDate
        self.cardAcquisitionReference = cardAcquisitionReference
        self.instalment = instalment
        self.customerOrder = customerOrder
        self.paymentInstrumentData = paymentInstrumentData
    }
    
    internal enum CodingKeys: String, CodingKey {
        case paymentType = "PaymentType"
        case splitPaymentFlag = "SplitPaymentFlag"
        case requestedValidityDate = "RequestedValidityDate"
        case cardAcquisitionReference = "CardAcquisitionReference"
        case instalment = "Instalment"
        case customerOrder = "CustomerOrder"
        case paymentInstrumentData = "PaymentInstrumentData"
    }
    
}
