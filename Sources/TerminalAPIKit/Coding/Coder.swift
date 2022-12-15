//
//  Coder.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Performs encoding and decoding for Terminal API data classes.
public enum Coder {
    
    // MARK: - Encoding
    
    /// Encodes the given value to be sent in a Terminal API request.
    ///
    /// - Parameter value: The value to encode.
    /// - Returns: The encoded data.
    /// - Throws: An EncodingError if an error occurs during encoding.
    public static func encode<T: Encodable>(_ value: T) throws -> Data {
        try encoder.encode(value)
    }
    
    private static let encoder: JSONEncoder = {
        let encoder = JSONEncoder()
        
        // Encode dates with YYYY-MM-DDTHH:MM:SS.sssZZZZZZ
        encoder.dateEncodingStrategy = .custom { date, encoder in
            let string = isoDateFormatterWithFractionalSeconds.string(from: date)
            
            var container = encoder.singleValueContainer()
            try container.encode(string)
        }
        
        return encoder
    }()
    
    // MARK: - Decoding
    
    /// Decodes a value of the given type from the given data retrieved in a Terminal API response.
    ///
    /// - Parameters:
    ///   - type: The type of the value to decode.
    ///   - data: The data to decode from.
    /// - Returns: A value of the requested type.
    /// - Throws: A DecodingError if an error occurs during decoding.
    public static func decode<T: Decodable>(_ type: T.Type, from data: Data) throws -> T {
        try decoder.decode(type, from: data)
    }
    
    private static let decoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .custom { decoder in
            let container = try decoder.singleValueContainer()
            let string = try container.decode(String.self)
            
            // We decode dates from ISO8601
            // If that fails - we use ISO8601 with fractional seconds
            if let date = isoDateFormatter.date(from: string) {
                return date
            } else if let date = isoDateFormatterWithFractionalSeconds.date(from: string) {
                return date
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Date is not a valid ISO8601-formatted date."
                )
            }
        }
        
        return decoder
    }()
    
    // MARK: - Date Formatter
    
    // Default isoDateFormatter
    // For strings like `2022-09-02T10:58:00Z` or `2022-09-02T10:58:00+02:00`
    private static let isoDateFormatter: ISO8601DateFormatter = .init()
    
    // For strings like `2022-09-02T10:58:00.000Z` or `2022-09-02T10:58:00.000+02:00`
    private static let isoDateFormatterWithFractionalSeconds: ISO8601DateFormatter = {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions.insert(.withFractionalSeconds)
        return formatter
    }()
    
}
