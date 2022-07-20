//
//  MessageReferenceHelpers.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public extension MessageReference {
    
    /// Initializes a message reference, referencing the given message.
    ///
    /// - Parameter message: The message to create a reference for.
    convenience init<T>(for message: Message<T>) {
        self.init(messageCategory: message.header.messageCategory,
                  serviceIdentifier: message.header.serviceIdentifier,
                  deviceIdentifier: message.header.deviceIdentifier,
                  saleIdentifier: message.header.saleIdentifier,
                  poiIdentifier: message.header.poiIdentifier)
    }
    
}
