//
//  InputResult.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class InputResult: Codable {
    
    /// Undocumented.
    public let device: Device
    
    /// Undocumented.
    public let infoQualify: InfoQualify
    
    /// Undocumented.
    public let response: MessageResponse
    
    /// Undocumented.
    public let input: Input?
    
    /// Initializes the InputResult.
    ///
    /// - Parameter device: Undocumented.
    /// - Parameter infoQualify: Undocumented.
    /// - Parameter response: Undocumented.
    /// - Parameter input: Undocumented.
    public init(device: Device, infoQualify: InfoQualify, response: MessageResponse, input: Input? = nil) {
        self.device = device
        self.infoQualify = infoQualify
        self.response = response
        self.input = input
    }
    
    internal enum CodingKeys: String, CodingKey {
        case device = "Device"
        case infoQualify = "InfoQualify"
        case response = "Response"
        case input = "Input"
    }
    
}
