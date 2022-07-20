//
//  CardData.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Information related to the payment card used for the transaction.
/// Allows acquisition of the card data by the Sale System before the Payment, CardAcquisition  or BalanceInquiry request to the POI. It could also be sent in the CardAcquisition response, to be processed by the Sale System. In this case, the
public final class CardData: Codable {
    
    /// Type of payment card
    public let paymentBrand: String?
    
    /// Undocumented.
    public let maskedPan: String?
    
    /// Undocumented.
    public let paymentAccountRef: String?
    
    /// Entry mode of the payment instrument information
    public let entryMode: Set<EntryMode>?
    
    /// Country Code attached to the card (3 numerics).
    public let cardCountryCode: String?
    
    /// Sensitive information related to the payment card, protected by CMS.
    public let protectedCardData: [UInt8]?
    
    /// Sensitive information related to the payment card, entered or read by the Sale System.
    public let sensitiveCardData: SensitiveCardData?
    
    /// Undocumented.
    public let allowedProductCode: [String]?
    
    /// Undocumented.
    public let allowedProduct: [AllowedProduct]?
    
    /// Undocumented.
    public let paymentToken: PaymentToken?
    
    /// Undocumented.
    public let customerOrder: [CustomerOrder]?
    
    /// Initializes the CardData.
    ///
    /// - Parameter paymentBrand: Type of payment card
    /// - Parameter maskedPan: Undocumented.
    /// - Parameter paymentAccountRef: Undocumented.
    /// - Parameter entryMode: Entry mode of the payment instrument information
    /// - Parameter cardCountryCode: Country Code attached to the card (3 numerics).
    /// - Parameter protectedCardData: Sensitive information related to the payment card, protected by CMS.
    /// - Parameter sensitiveCardData: Sensitive information related to the payment card, entered or read by the Sale System.
    /// - Parameter allowedProductCode: Undocumented.
    /// - Parameter allowedProduct: Undocumented.
    /// - Parameter paymentToken: Undocumented.
    /// - Parameter customerOrder: Undocumented.
    public init(paymentBrand: String? = nil, maskedPan: String? = nil, paymentAccountRef: String? = nil, entryMode: Set<EntryMode>? = nil, cardCountryCode: String? = nil, protectedCardData: [UInt8]? = nil, sensitiveCardData: SensitiveCardData? = nil, allowedProductCode: [String]? = nil, allowedProduct: [AllowedProduct]? = nil, paymentToken: PaymentToken? = nil, customerOrder: [CustomerOrder]? = nil) {
        self.paymentBrand = paymentBrand
        self.maskedPan = maskedPan
        self.paymentAccountRef = paymentAccountRef
        self.entryMode = entryMode
        self.cardCountryCode = cardCountryCode
        self.protectedCardData = protectedCardData
        self.sensitiveCardData = sensitiveCardData
        self.allowedProductCode = allowedProductCode
        self.allowedProduct = allowedProduct
        self.paymentToken = paymentToken
        self.customerOrder = customerOrder
    }
    
    internal enum CodingKeys: String, CodingKey {
        case paymentBrand = "PaymentBrand"
        case maskedPan = "MaskedPan"
        case paymentAccountRef = "PaymentAccountRef"
        case entryMode = "EntryMode"
        case cardCountryCode = "CardCountryCode"
        case protectedCardData = "ProtectedCardData"
        case sensitiveCardData = "SensitiveCardData"
        case allowedProductCode = "AllowedProductCode"
        case allowedProduct = "AllowedProduct"
        case paymentToken = "PaymentToken"
        case customerOrder = "CustomerOrder"
    }
    
}
