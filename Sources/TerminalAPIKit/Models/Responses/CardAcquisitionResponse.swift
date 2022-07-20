//
//  CardAcquisitionResponse.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Card Acquisition Response message.
/// It conveys Information related to the payment and loyalty cards read and processed by the POI System and entered by the Customer:As for the Payment request, the result of the CardAcquisition and the identification of the transaction.One
public final class CardAcquisitionResponse: Response {
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "CardAcquisitionResponse"
    
    /// Result of a message request processing.
    public let response: MessageResponse
    
    /// Data related to the Sale System.
    public let saleData: SaleData
    
    /// Data related to the POI System.
    public let poiData: POIData
    
    /// Undocumented.
    public let customerLanguage: String?
    
    /// Type of payment card
    public let paymentBrand: [String]?
    
    /// Data related to the instrument of payment for the transaction.
    public let paymentInstrumentData: PaymentInstrumentData?
    
    /// Initializes the CardAcquisitionResponse.
    ///
    /// - Parameter response: Result of a message request processing.
    /// - Parameter saleData: Data related to the Sale System.
    /// - Parameter poiData: Data related to the POI System.
    /// - Parameter customerLanguage: Undocumented.
    /// - Parameter paymentBrand: Type of payment card
    /// - Parameter paymentInstrumentData: Data related to the instrument of payment for the transaction.
    internal init(response: MessageResponse, saleData: SaleData, poiData: POIData, customerLanguage: String? = nil, paymentBrand: [String]? = nil, paymentInstrumentData: PaymentInstrumentData? = nil) {
        self.response = response
        self.saleData = saleData
        self.poiData = poiData
        self.customerLanguage = customerLanguage
        self.paymentBrand = paymentBrand
        self.paymentInstrumentData = paymentInstrumentData
    }
    
    internal enum CodingKeys: String, CodingKey {
        case response = "Response"
        case saleData = "SaleData"
        case poiData = "POIData"
        case customerLanguage = "CustomerLanguage"
        case paymentBrand = "PaymentBrand"
        case paymentInstrumentData = "PaymentInstrumentData"
    }
    
}
