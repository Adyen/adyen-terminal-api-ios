//
//  BatchRequest.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class BatchRequest: Request {
    
    /// The type of the response returned for this request.
    public typealias ResponseType = BatchResponse
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "BatchRequest"
    
    /// The category of the message in which this request is sent.
    public static let messageCategory = MessageCategory.batch
    
    /// Undocumented.
    public let removeAllFlag: Bool?
    
    /// Undocumented.
    public let transactionToPerform: [TransactionToPerform]?
    
    /// Initializes the BatchRequest.
    ///
    /// - Parameter removeAllFlag: Undocumented.
    /// - Parameter transactionToPerform: Undocumented.
    public init(removeAllFlag: Bool? = nil, transactionToPerform: [TransactionToPerform]? = nil) {
        self.removeAllFlag = removeAllFlag
        self.transactionToPerform = transactionToPerform
    }
    
    internal enum CodingKeys: String, CodingKey {
        case removeAllFlag = "RemoveAllFlag"
        case transactionToPerform = "TransactionToPerform"
    }
    
}
