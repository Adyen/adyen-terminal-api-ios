//
//  MessageResponseHelpers.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public extension MessageResponse {
    
    /// The additional response, decoded into a string dictionary.
    var decodedAdditionalResponse: [String: String]? {
        additionalResponse.flatMap(decodeURLQuery)
    }
    
}
