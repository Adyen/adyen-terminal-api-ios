//
//  InputUpdate.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class InputUpdate: Request {
    
    /// The type of the response returned for this request.
    public typealias ResponseType = InputResponse
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "InputUpdate"
    
    /// The category of the message in which this request is sent.
    public static let messageCategory = MessageCategory.inputUpdate
    
    /// Undocumented.
    public let messageReference: MessageReference
    
    /// Undocumented.
    public let outputContent: OutputContent
    
    /// Undocumented.
    public let menuEntry: [MenuEntry]?
    
    /// Undocumented.
    public let outputSignature: Data?
    
    /// Undocumented.
    public let minLength: Int?
    
    /// Undocumented.
    public let maxLength: Int?
    
    /// Undocumented.
    public let maxDecimalLength: Int?
    
    /// Initializes the InputUpdate.
    ///
    /// - Parameter messageReference: Undocumented.
    /// - Parameter outputContent: Undocumented.
    /// - Parameter menuEntry: Undocumented.
    /// - Parameter outputSignature: Undocumented.
    /// - Parameter minLength: Undocumented.
    /// - Parameter maxLength: Undocumented.
    /// - Parameter maxDecimalLength: Undocumented.
    public init(messageReference: MessageReference, outputContent: OutputContent, menuEntry: [MenuEntry]? = nil, outputSignature: Data? = nil, minLength: Int? = nil, maxLength: Int? = nil, maxDecimalLength: Int? = nil) {
        self.messageReference = messageReference
        self.outputContent = outputContent
        self.menuEntry = menuEntry
        self.outputSignature = outputSignature
        self.minLength = minLength
        self.maxLength = maxLength
        self.maxDecimalLength = maxDecimalLength
    }
    
    internal enum CodingKeys: String, CodingKey {
        case messageReference = "MessageReference"
        case outputContent = "OutputContent"
        case menuEntry = "MenuEntry"
        case outputSignature = "OutputSignature"
        case minLength = "MinLength"
        case maxLength = "MaxLength"
        case maxDecimalLength = "MaxDecimalLength"
    }
    
}
