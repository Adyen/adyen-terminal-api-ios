//
//  CardAcquisitionRequest.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Card Acquisition Request message.
/// It conveys Information related to the payment and loyalty cards to read and analyse. This message pair is usually followed by a message pair (e.g. payment or loyalty) which refers to this Card Acquisition message pair. The Card Acquisition
public final class CardAcquisitionRequest: Request {
    
    /// The type of the response returned for this request.
    public typealias ResponseType = CardAcquisitionResponse
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "CardAcquisitionRequest"
    
    /// The category of the message in which this request is sent.
    public static let messageCategory = MessageCategory.cardAcquisition
    
    /// Data related to the Sale System.
    public let saleData: SaleData
    
    /// Data related to the payment and loyalty card acquisition.
    public let cardAcquisitionTransaction: CardAcquisitionTransaction
    
    /// Initializes the CardAcquisitionRequest.
    ///
    /// - Parameter saleData: Data related to the Sale System.
    /// - Parameter cardAcquisitionTransaction: Data related to the payment and loyalty card acquisition.
    public init(saleData: SaleData, cardAcquisitionTransaction: CardAcquisitionTransaction) {
        self.saleData = saleData
        self.cardAcquisitionTransaction = cardAcquisitionTransaction
    }
    
    internal enum CodingKeys: String, CodingKey {
        case saleData = "SaleData"
        case cardAcquisitionTransaction = "CardAcquisitionTransaction"
    }
    
}
