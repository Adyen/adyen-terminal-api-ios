//
//  OutputTextHelpers.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

extension OutputText: CustomDebugStringConvertible {
    
    /// The output text, decoded into a key-value pair.
    public var decodedText: (key: String?, value: String?) {
        let decodedQuery = decodeURLQuery(text)
        
        guard !decodedQuery.isEmpty else {
            return legacyDecodedText
        }
        
        let key = decodedQuery["key"]?.sanitized.nonEmpty
        let name = decodedQuery["name"]?.sanitized.nonEmpty
        let value = decodedQuery["value"]?.sanitized.nonEmpty
        
        if key == nil, name == nil, value == nil {
            return (nil, text.sanitized.nonEmpty)
        } else if key != nil, name == nil, value == nil {
            return (nil, nil)
        } else if name != nil, value != nil {
            return (name, value)
        } else if key != nil, name != nil, value == nil {
            return (nil, name)
        } else {
            return (key, value)
        }
    }
    
    private var legacyDecodedText: (key: String?, value: String?) {
        let sanitizedText = text.sanitized
        
        let components = sanitizedText.components(separatedBy: ":")
        guard components.count == 2 else {
            return (nil, sanitizedText.nonEmpty)
        }
        
        let key = components[0].sanitized.nonEmpty
        let value = components[1].sanitized.nonEmpty
        
        return (key, value)
    }
    
    public var debugDescription: String {
        "\"\(text)\""
    }
    
}

private extension String {
    
    var sanitized: String {
        trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    var nonEmpty: String? {
        guard !isEmpty else {
            return nil
        }
        
        return self
    }
    
}
