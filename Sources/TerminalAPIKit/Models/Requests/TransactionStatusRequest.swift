//
//  TransactionStatusRequest.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the TransactionStatus Request message.
/// It conveys Information requested for status of the last or current Payment, Loyalty or Reversal transaction.
public final class TransactionStatusRequest: Request {
    
    /// The type of the response returned for this request.
    public typealias ResponseType = TransactionStatusResponse
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "TransactionStatusRequest"
    
    /// The category of the message in which this request is sent.
    public static let messageCategory = MessageCategory.transactionStatus
    
    /// Identification of a previous POI transaction.
    public let messageReference: MessageReference?
    
    /// Request to reprint the POI receipt(s).
    public let receiptReprintFlag: Bool?
    
    /// Undocumented.
    public let documentQualifier: [DocumentQualifier]?
    
    /// Initializes the TransactionStatusRequest.
    ///
    /// - Parameter messageReference: Identification of a previous POI transaction.
    /// - Parameter receiptReprintFlag: Request to reprint the POI receipt(s).
    /// - Parameter documentQualifier: Undocumented.
    public init(messageReference: MessageReference? = nil, receiptReprintFlag: Bool? = nil, documentQualifier: [DocumentQualifier]? = nil) {
        self.messageReference = messageReference
        self.receiptReprintFlag = receiptReprintFlag
        self.documentQualifier = documentQualifier
    }
    
    internal enum CodingKeys: String, CodingKey {
        case messageReference = "MessageReference"
        case receiptReprintFlag = "ReceiptReprintFlag"
        case documentQualifier = "DocumentQualifier"
    }
    
}
