//
//  PaymentInstrumentData.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Data related to the instrument of payment for the transaction.
/// Sent in the result of the payment transaction. For a card, it could also be sent in the CardAcquisition response, to be processed by the Sale System. In this case, the card or type of card has to be configured to have this behaviour. It is
public final class PaymentInstrumentData: Codable {
    
    /// Type of payment instrument.
    public let paymentInstrumentType: PaymentInstrumentType
    
    /// Undocumented.
    public let protectedCardData: [UInt8]?
    
    /// Information related to the payment card used for the transaction.
    public let cardData: CardData?
    
    /// Information related to the paper check used for the transaction.
    public let checkData: CheckData?
    
    /// Information related to the mobile for the payment transaction.
    public let mobileData: MobileData?
    
    /// Undocumented.
    public let storedValueAccountIdentifier: StoredValueAccountIdentifier?
    
    /// Initializes the PaymentInstrumentData.
    ///
    /// - Parameter paymentInstrumentType: Type of payment instrument.
    /// - Parameter protectedCardData: Undocumented.
    /// - Parameter cardData: Information related to the payment card used for the transaction.
    /// - Parameter checkData: Information related to the paper check used for the transaction.
    /// - Parameter mobileData: Information related to the mobile for the payment transaction.
    /// - Parameter storedValueAccountIdentifier: Undocumented.
    public init(paymentInstrumentType: PaymentInstrumentType, protectedCardData: [UInt8]? = nil, cardData: CardData? = nil, checkData: CheckData? = nil, mobileData: MobileData? = nil, storedValueAccountIdentifier: StoredValueAccountIdentifier? = nil) {
        self.paymentInstrumentType = paymentInstrumentType
        self.protectedCardData = protectedCardData
        self.cardData = cardData
        self.checkData = checkData
        self.mobileData = mobileData
        self.storedValueAccountIdentifier = storedValueAccountIdentifier
    }
    
    internal enum CodingKeys: String, CodingKey {
        case paymentInstrumentType = "PaymentInstrumentType"
        case protectedCardData = "ProtectedCardData"
        case cardData = "CardData"
        case checkData = "CheckData"
        case mobileData = "MobileData"
        case storedValueAccountIdentifier = "StoredValueAccountID"
    }
    
}
