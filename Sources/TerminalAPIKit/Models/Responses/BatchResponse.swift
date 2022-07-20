//
//  BatchResponse.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class BatchResponse: Response {
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "BatchResponse"
    
    /// Undocumented.
    public let response: MessageResponse
    
    /// Undocumented.
    public let performedTransaction: [PerformedTransaction]?
    
    /// Initializes the BatchResponse.
    ///
    /// - Parameter response: Undocumented.
    /// - Parameter performedTransaction: Undocumented.
    internal init(response: MessageResponse, performedTransaction: [PerformedTransaction]? = nil) {
        self.response = response
        self.performedTransaction = performedTransaction
    }
    
    internal enum CodingKeys: String, CodingKey {
        case response = "Response"
        case performedTransaction = "PerformedTransaction"
    }
    
}
