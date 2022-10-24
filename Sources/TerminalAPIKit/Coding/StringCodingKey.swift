//
//  StringCodingKey.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Structure used as a key for encoding and decoding a message.
/// This structure exists to provide the ability to use custom, runtime determined strings as coding keys.
internal struct StringCodingKey {
    
    /// The string value of the coding key.
    internal var value: String
    
}

// MARK: - Message Keys

internal extension StringCodingKey {
    
    init(for type: MessageType) {
        switch type {
        case .request:
            self.init(value: "SaleToPOIRequest")
        case .response, .notification:
            self.init(value: "SaleToPOIResponse")
        }
    }
    
    init(for type: MessageBody.Type) {
        self.init(value: type.codingKey)
    }
    
    init(for body: MessageBody) {
        self.init(for: type(of: body))
    }
    
}

// MARK: - CodingKey

extension StringCodingKey: CodingKey {
    
    var stringValue: String {
        value
    }
    
    var intValue: Int? {
        Int(value)
    }
    
    init?(stringValue: String) {
        self.init(value: stringValue)
    }
    
    init?(intValue: Int) {
        self.init(value: String(intValue))
    }
    
}

// MARK: - ExpressibleByStringLiteral

extension StringCodingKey: ExpressibleByStringLiteral {
    
    internal typealias StringLiteralType = String
    
    internal init(stringLiteral value: String) {
        self.init(value: value)
    }
    
}

// MARK: - Equatable

extension StringCodingKey: Equatable {
    
    internal static func == (lhs: StringCodingKey, rhs: StringCodingKey) -> Bool {
        lhs.value == rhs.value
    }
    
}

// MARK: - CustomStringConvertible, CustomDebugStringConvertible

extension StringCodingKey: CustomStringConvertible, CustomDebugStringConvertible {
    
    internal var description: String {
        value
    }
    
    internal var debugDescription: String {
        value
    }
    
}
