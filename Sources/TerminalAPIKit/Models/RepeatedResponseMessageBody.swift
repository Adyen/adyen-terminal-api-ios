//
//  RepeatedResponseMessageBody.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class RepeatedResponseMessageBody: Codable {
    
    /// Undocumented.
    public let paymentResponse: PaymentResponse?
    
    /// Undocumented.
    public let reversalResponse: ReversalResponse?
    
    /// Undocumented.
    public let storedValueResponse: StoredValueResponse?
    
    /// Undocumented.
    public let cardAcquisitionResponse: CardAcquisitionResponse?
    
    /// Initializes the RepeatedResponseMessageBody.
    ///
    /// - Parameter loyaltyResponse: Undocumented.
    /// - Parameter paymentResponse: Undocumented.
    /// - Parameter reversalResponse: Undocumented.
    /// - Parameter storedValueResponse: Undocumented.
    /// - Parameter cardAcquisitionResponse: Undocumented.
    /// - Parameter cardReaderAPDUResponse: Undocumented.
    public init(paymentResponse: PaymentResponse? = nil, reversalResponse: ReversalResponse? = nil, storedValueResponse: StoredValueResponse? = nil, cardAcquisitionResponse: CardAcquisitionResponse? = nil) {
        self.paymentResponse = paymentResponse
        self.reversalResponse = reversalResponse
        self.storedValueResponse = storedValueResponse
        self.cardAcquisitionResponse = cardAcquisitionResponse
    }
    
    internal enum CodingKeys: String, CodingKey {
        case paymentResponse = "PaymentResponse"
        case reversalResponse = "ReversalResponse"
        case storedValueResponse = "StoredValueResponse"
        case cardAcquisitionResponse = "CardAcquisitionResponse"
    }
    
}
