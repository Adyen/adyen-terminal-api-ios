//
//  DiagnosisRequest.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Diagnosis Request message.
/// It conveys Information related to the target POI for which the diagnosis is requested
public final class DiagnosisRequest: Request {
    
    /// The type of the response returned for this request.
    public typealias ResponseType = DiagnosisResponse
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "DiagnosisRequest"
    
    /// The category of the message in which this request is sent.
    public static let messageCategory = MessageCategory.diagnosis
    
    /// Identification of a POI System or a POI Terminal for the Sale to POI protocol
    public let poiIdentifier: String?
    
    /// Indicates if Host Diagnosis are required
    public let hostDiagnosisFlag: Bool?
    
    /// Identification of the Acquirer
    public let acquirerIdentifier: [String]?
    
    /// Initializes the DiagnosisRequest.
    ///
    /// - Parameter poiIdentifier: Identification of a POI System or a POI Terminal for the Sale to POI protocol
    /// - Parameter hostDiagnosisFlag: Indicates if Host Diagnosis are required
    /// - Parameter acquirerIdentifier: Identification of the Acquirer
    public init(poiIdentifier: String? = nil, hostDiagnosisFlag: Bool? = nil, acquirerIdentifier: [String]? = nil) {
        self.poiIdentifier = poiIdentifier
        self.hostDiagnosisFlag = hostDiagnosisFlag
        self.acquirerIdentifier = acquirerIdentifier
    }
    
    internal enum CodingKeys: String, CodingKey {
        case poiIdentifier = "POIID"
        case hostDiagnosisFlag = "HostDiagnosisFlag"
        case acquirerIdentifier = "AcquirerID"
    }
    
}
