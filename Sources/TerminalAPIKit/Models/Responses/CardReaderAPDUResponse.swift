//
//  CardReaderAPDUResponse.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Card Reader APDU Response message.
/// It contains the result of the requested service, APDU response sent by the chip of the card in response to the APDU request.
public final class CardReaderAPDUResponse: Response {
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "CardReaderAPDUResponse"
    
    /// Result of a message request processing.
    public let response: MessageResponse
    
    /// Data field of the APDU command (Lc + Data)
    public let apduData: Data?
    
    /// Status of a smartcard response to a command (SW1-SW2)
    public let cardStatusWords: Data
    
    /// Initializes the CardReaderAPDUResponse.
    ///
    /// - Parameter response: Result of a message request processing.
    /// - Parameter apduData: Data field of the APDU command (Lc + Data)
    /// - Parameter cardStatusWords: Status of a smartcard response to a command (SW1-SW2)
    internal init(response: MessageResponse, apduData: Data? = nil, cardStatusWords: Data) {
        self.response = response
        self.apduData = apduData
        self.cardStatusWords = cardStatusWords
    }
    
    internal enum CodingKeys: String, CodingKey {
        case response = "Response"
        case apduData = "APDUData"
        case cardStatusWords = "CardStatusWords"
    }
    
}
