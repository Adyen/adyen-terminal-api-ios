//
//  MessageHeaderHelpers.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public extension MessageHeader {
    
    /// Initializes a message header for the given request.
    ///
    /// - Parameters:
    ///   - request: The request for which to create a message header.
    ///   - saleIdentifier: The sale identifier in the message header.
    ///   - poiIdentifier: The POI identifier in the message header.
    convenience init<R: Request>(for request: R, saleIdentifier: String, poiIdentifier: String) {
        let unixTimestamp = Int(Date().timeIntervalSince1970)
        let serviceIdentifier = String(String(unixTimestamp).suffix(10))
        
        self.init(protocolVersion: "3.0",
                  messageClass: .service,
                  messageCategory: type(of: request).messageCategory,
                  messageType: .request,
                  serviceIdentifier: serviceIdentifier,
                  saleIdentifier: saleIdentifier,
                  poiIdentifier: poiIdentifier)
    }
    
}

// MARK: - Equatable

extension MessageHeader: Equatable {
    
    public static func == (lhs: MessageHeader, rhs: MessageHeader) -> Bool {
        lhs.protocolVersion == rhs.protocolVersion &&
            lhs.messageClass == rhs.messageClass &&
            lhs.messageCategory == rhs.messageCategory &&
            lhs.messageType == rhs.messageType &&
            lhs.serviceIdentifier == rhs.serviceIdentifier &&
            lhs.deviceIdentifier == rhs.deviceIdentifier &&
            lhs.saleIdentifier == rhs.saleIdentifier &&
            lhs.poiIdentifier == rhs.poiIdentifier
    }
    
}
