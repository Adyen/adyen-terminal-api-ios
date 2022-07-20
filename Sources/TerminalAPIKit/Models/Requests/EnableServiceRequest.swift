//
//  EnableServiceRequest.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Enable Service Request message.
/// It conveys the services that will be enabled for the  POI Terminal without the request of the Sale System, and a possible invitation for the Customer to start the services.
public final class EnableServiceRequest: Request {
    
    /// The type of the response returned for this request.
    public typealias ResponseType = EnableServiceResponse
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "EnableServiceRequest"
    
    /// The category of the message in which this request is sent.
    public static let messageCategory = MessageCategory.enableService
    
    /// Action to realise on a transaction.
    public let transactionAction: TransactionAction
    
    /// Services which are enabled before the start-up of a transaction
    public let servicesEnabled: Set<ServicesEnabled>?
    
    /// Information to display and the way to process the display.
    public let displayOutput: DisplayOutput?
    
    /// Initializes the EnableServiceRequest.
    ///
    /// - Parameter transactionAction: Action to realise on a transaction.
    /// - Parameter servicesEnabled: Services which are enabled before the start-up of a transaction
    /// - Parameter displayOutput: Information to display and the way to process the display.
    public init(transactionAction: TransactionAction, servicesEnabled: Set<ServicesEnabled>? = nil, displayOutput: DisplayOutput? = nil) {
        self.transactionAction = transactionAction
        self.servicesEnabled = servicesEnabled
        self.displayOutput = displayOutput
    }
    
    internal enum CodingKeys: String, CodingKey {
        case transactionAction = "TransactionAction"
        case servicesEnabled = "ServicesEnabled"
        case displayOutput = "DisplayOutput"
    }
    
}
