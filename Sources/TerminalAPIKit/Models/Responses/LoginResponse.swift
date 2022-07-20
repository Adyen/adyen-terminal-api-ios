//
//  LoginResponse.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Login Response message.
/// It conveys Information related to the Login to process
public final class LoginResponse: Response {
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "LoginResponse"
    
    /// Result of a message request processing.
    public let response: MessageResponse
    
    /// Information related to the POI System
    public let poiSystemData: POISystemData?
    
    /// Undocumented.
    public let tokenRequestStatus: Bool?
    
    /// Undocumented.
    public let customerOrderStatus: Bool?
    
    /// Initializes the LoginResponse.
    ///
    /// - Parameter response: Result of a message request processing.
    /// - Parameter poiSystemData: Information related to the POI System
    /// - Parameter tokenRequestStatus: Undocumented.
    /// - Parameter customerOrderStatus: Undocumented.
    internal init(response: MessageResponse, poiSystemData: POISystemData? = nil, tokenRequestStatus: Bool? = nil, customerOrderStatus: Bool? = nil) {
        self.response = response
        self.poiSystemData = poiSystemData
        self.tokenRequestStatus = tokenRequestStatus
        self.customerOrderStatus = customerOrderStatus
    }
    
    internal enum CodingKeys: String, CodingKey {
        case response = "Response"
        case poiSystemData = "POISystemData"
        case tokenRequestStatus = "TokenRequestStatus"
        case customerOrderStatus = "CustomerOrderStatus"
    }
    
}
