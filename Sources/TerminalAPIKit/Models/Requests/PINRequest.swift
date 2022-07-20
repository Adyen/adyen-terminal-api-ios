//
//  PINRequest.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the PIN Request message.
/// It contains the type of request related to the PIN, and the associated parameters.
public final class PINRequest: Request {
    
    /// The type of the response returned for this request.
    public typealias ResponseType = PINResponse
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "PINRequest"
    
    /// The category of the message in which this request is sent.
    public static let messageCategory = MessageCategory.pin
    
    /// Type of PIN Service.
    public let pinRequestType: PINRequestType
    
    /// Undocumented.
    public let pinVerifyMethod: String?
    
    /// Additional information required to verify the PIN like part of the PAN, or driver ID.
    public let additionalInput: String?
    
    /// Identify the encrypted PIN block algorithm.
    public let pinEncAlgorithm: String?
    
    /// Identify the format of the PIN before encryption.
    public let pinFormat: PINFormat?
    
    /// Identify the key to use to encrypt the PIN block.
    public let keyReference: String?
    
    /// Maximum time to wait for the request processing in seconds.
    public let maxWaitingTime: Int?
    
    /// Undocumented.
    public let beepKeyFlag: Bool?
    
    /// Undocumented.
    public let cardHolderPIN: CardHolderPIN?
    
    /// Initializes the PINRequest.
    ///
    /// - Parameter pinRequestType: Type of PIN Service.
    /// - Parameter pinVerifyMethod: Undocumented.
    /// - Parameter additionalInput: Additional information required to verify the PIN like part of the PAN, or driver ID.
    /// - Parameter pinEncAlgorithm: Identify the encrypted PIN block algorithm.
    /// - Parameter pinFormat: Identify the format of the PIN before encryption.
    /// - Parameter keyReference: Identify the key to use to encrypt the PIN block.
    /// - Parameter maxWaitingTime: Maximum time to wait for the request processing in seconds.
    /// - Parameter beepKeyFlag: Undocumented.
    /// - Parameter cardHolderPIN: Undocumented.
    public init(pinRequestType: PINRequestType, pinVerifyMethod: String? = nil, additionalInput: String? = nil, pinEncAlgorithm: String? = nil, pinFormat: PINFormat? = nil, keyReference: String? = nil, maxWaitingTime: Int? = nil, beepKeyFlag: Bool? = nil, cardHolderPIN: CardHolderPIN? = nil) {
        self.pinRequestType = pinRequestType
        self.pinVerifyMethod = pinVerifyMethod
        self.additionalInput = additionalInput
        self.pinEncAlgorithm = pinEncAlgorithm
        self.pinFormat = pinFormat
        self.keyReference = keyReference
        self.maxWaitingTime = maxWaitingTime
        self.beepKeyFlag = beepKeyFlag
        self.cardHolderPIN = cardHolderPIN
    }
    
    internal enum CodingKeys: String, CodingKey {
        case pinRequestType = "PINRequestType"
        case pinVerifyMethod = "PINVerifyMethod"
        case additionalInput = "AdditionalInput"
        case pinEncAlgorithm = "PINEncAlgorithm"
        case pinFormat = "PINFormat"
        case keyReference = "KeyReference"
        case maxWaitingTime = "MaxWaitingTime"
        case beepKeyFlag = "BeepKeyFlag"
        case cardHolderPIN = "CardHolderPIN"
    }
    
}
