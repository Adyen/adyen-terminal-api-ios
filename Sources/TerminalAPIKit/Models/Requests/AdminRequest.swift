//
//  AdminRequest.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Custom Admin Request message.
/// Empty
public final class AdminRequest: Request {
    
    /// The type of the response returned for this request.
    public typealias ResponseType = AdminResponse
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "AdminRequest"
    
    /// The category of the message in which this request is sent.
    public static let messageCategory = MessageCategory.admin
    
    /// Identification of the administrative service to process.
    public let serviceIdentification: String?
    
    /// Initializes the AdminRequest.
    ///
    /// - Parameter serviceIdentification: Identification of the administrative service to process.
    public init(serviceIdentification: String? = nil) {
        self.serviceIdentification = serviceIdentification
    }
    
    internal enum CodingKeys: String, CodingKey {
        case serviceIdentification = "ServiceIdentification"
    }
    
}
