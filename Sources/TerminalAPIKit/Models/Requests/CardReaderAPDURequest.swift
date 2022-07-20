//
//  CardReaderAPDURequest.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Card Reader APDU Request message.
/// It contains the APDU request to send to the chip of the card, and a possible invitation message to display on the CashierInterface or the CustomerInterface.
public final class CardReaderAPDURequest: Request {
    
    /// The type of the response returned for this request.
    public typealias ResponseType = CardReaderAPDUResponse
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "CardReaderAPDURequest"
    
    /// The category of the message in which this request is sent.
    public static let messageCategory = MessageCategory.cardReaderAPDU
    
    /// Class field of the APDU command (CLA)
    public let apduClass: Data
    
    /// Instruction field of the APDU command (INS)
    public let apduInstruction: Data
    
    /// Parameter 1 field of the APDU command (P1)
    public let apduPar1: Data
    
    /// Parameter 2 field of the APDU command(P2)
    public let apduPar2: Data
    
    /// Data field of the APDU command (Lc + Data)
    public let apduData: Data?
    
    /// Expected length of the data field of the APDU response to the command (Le)
    public let apduExpectedLength: Data?
    
    /// Initializes the CardReaderAPDURequest.
    ///
    /// - Parameter apduClass: Class field of the APDU command (CLA)
    /// - Parameter apduInstruction: Instruction field of the APDU command (INS)
    /// - Parameter apduPar1: Parameter 1 field of the APDU command (P1)
    /// - Parameter apduPar2: Parameter 2 field of the APDU command(P2)
    /// - Parameter apduData: Data field of the APDU command (Lc + Data)
    /// - Parameter apduExpectedLength: Expected length of the data field of the APDU response to the command (Le)
    public init(apduClass: Data, apduInstruction: Data, apduPar1: Data, apduPar2: Data, apduData: Data? = nil, apduExpectedLength: Data? = nil) {
        self.apduClass = apduClass
        self.apduInstruction = apduInstruction
        self.apduPar1 = apduPar1
        self.apduPar2 = apduPar2
        self.apduData = apduData
        self.apduExpectedLength = apduExpectedLength
    }
    
    internal enum CodingKeys: String, CodingKey {
        case apduClass = "APDUClass"
        case apduInstruction = "APDUInstruction"
        case apduPar1 = "APDUPar1"
        case apduPar2 = "APDUPar2"
        case apduData = "APDUData"
        case apduExpectedLength = "APDUExpectedLength"
    }
    
}
