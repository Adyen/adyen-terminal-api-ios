//
//  StoredValueRequest.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Stored Value Request message.
/// It conveys Information related to the Stored Value transaction to process
public final class StoredValueRequest: Request {
    
    /// The type of the response returned for this request.
    public typealias ResponseType = StoredValueResponse
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "StoredValueRequest"
    
    /// The category of the message in which this request is sent.
    public static let messageCategory = MessageCategory.storedValue
    
    /// Data related to the Sale System.
    public let saleData: SaleData
    
    /// Language of the Customer
    public let customerLanguage: String?
    
    /// Data related to the stored value card.
    public let storedValueData: [StoredValueData]
    
    /// Initializes the StoredValueRequest.
    ///
    /// - Parameter saleData: Data related to the Sale System.
    /// - Parameter customerLanguage: Language of the Customer
    /// - Parameter storedValueData: Data related to the stored value card.
    public init(saleData: SaleData, customerLanguage: String? = nil, storedValueData: [StoredValueData]) {
        self.saleData = saleData
        self.customerLanguage = customerLanguage
        self.storedValueData = storedValueData
    }
    
    internal enum CodingKeys: String, CodingKey {
        case saleData = "SaleData"
        case customerLanguage = "CustomerLanguage"
        case storedValueData = "StoredValueData"
    }
    
}
