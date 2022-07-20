//
//  URLQueryHelpers.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Decodes a URL query string (such as key1=value1&key2=value2) into a dictionary.
///
/// - Parameter query: The query string to decode.
/// - Returns: A dictionary containing the keys and values of the string.
internal func decodeURLQuery(_ query: String) -> [String: String] {
    let pairs = query.components(separatedBy: "&").compactMap { pair -> (String, String)? in
        let components = pair.components(separatedBy: "=")
        
        guard components.count == 2 else { return nil }
        guard let key = components[0].removingPercentEncoding else { return nil }
        guard let value = components[1].removingPercentEncoding else { return nil }
        
        return (key, value)
    }
    
    return [String: String](uniqueKeysWithValues: pairs)
}
