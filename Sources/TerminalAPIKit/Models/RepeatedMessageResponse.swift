//
//  RepeatedMessageResponse.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class RepeatedMessageResponse: Codable {
    
    /// Undocumented.
    public let messageHeader: MessageHeader
    
    /// Undocumented.
    public let repeatedResponseMessageBody: RepeatedResponseMessageBody
    
    /// Initializes the RepeatedMessageResponse.
    ///
    /// - Parameter messageHeader: Undocumented.
    /// - Parameter repeatedResponseMessageBody: Undocumented.
    public init(messageHeader: MessageHeader, repeatedResponseMessageBody: RepeatedResponseMessageBody) {
        self.messageHeader = messageHeader
        self.repeatedResponseMessageBody = repeatedResponseMessageBody
    }
    
    internal enum CodingKeys: String, CodingKey {
        case messageHeader = "MessageHeader"
        case repeatedResponseMessageBody = "RepeatedResponseMessageBody"
    }
    
}
