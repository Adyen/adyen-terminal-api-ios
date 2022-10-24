//
//  DiagnosisResponse.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Diagnosis Response message.
/// It conveys the result of the requested diagnosis and a possible message to display on a logical device.
public final class DiagnosisResponse: Response {
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "DiagnosisResponse"
    
    /// Result of a message request processing.
    public let response: MessageResponse
    
    /// Sale Terminal logged to.
    public let loggedSaleIdentifier: [String]?
    
    /// State of a POI Terminal.
    public let poiStatus: POIStatus?
    
    /// State of a Host.
    public let hostStatus: [HostStatus]?
    
    /// Initializes the DiagnosisResponse.
    ///
    /// - Parameter response: Result of a message request processing.
    /// - Parameter loggedSaleIdentifier: Sale Terminal logged to.
    /// - Parameter poiStatus: State of a POI Terminal.
    /// - Parameter hostStatus: State of a Host.
    internal init(response: MessageResponse, loggedSaleIdentifier: [String]? = nil, poiStatus: POIStatus? = nil, hostStatus: [HostStatus]? = nil) {
        self.response = response
        self.loggedSaleIdentifier = loggedSaleIdentifier
        self.poiStatus = poiStatus
        self.hostStatus = hostStatus
    }
    
    internal enum CodingKeys: String, CodingKey {
        case response = "Response"
        case loggedSaleIdentifier = "LoggedSaleID"
        case poiStatus = "POIStatus"
        case hostStatus = "HostStatus"
    }
    
}
