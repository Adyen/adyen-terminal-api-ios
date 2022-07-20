//
//  LoginRequest.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Login Request message.
/// It conveys Information related to the session (period between a Login and the following Logout) to process
public final class LoginRequest: Request {
    
    /// The type of the response returned for this request.
    public typealias ResponseType = LoginResponse
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "LoginRequest"
    
    /// The category of the message in which this request is sent.
    public static let messageCategory = MessageCategory.login
    
    /// Date and Time
    public let dateTime: Date
    
    /// Information related to the software of the Sale System which manages the Sale to POI protocol.
    public let saleSoftware: SaleSoftware
    
    /// Information related to the software and hardware feature of the Sale Terminal.
    public let saleTerminalData: SaleTerminalData?
    
    /// Training mode
    public let trainingModeFlag: Bool?
    
    /// Language of the Cashier or Operator.
    public let operatorLanguage: String
    
    /// Identification of the Cashier or Operator.
    public let operatorIdentifier: String?
    
    /// Shift number.
    public let shiftNumber: String?
    
    /// Undocumented.
    public let tokenRequestedType: TokenRequestedType?
    
    /// Undocumented.
    public let customerOrderReq: Set<CustomerOrderReq>?
    
    /// Serial number of a POI Terminal
    public let poiSerialNumber: String?
    
    /// Initializes the LoginRequest.
    ///
    /// - Parameter dateTime: Date and Time
    /// - Parameter saleSoftware: Information related to the software of the Sale System which manages the Sale to POI protocol.
    /// - Parameter saleTerminalData: Information related to the software and hardware feature of the Sale Terminal.
    /// - Parameter trainingModeFlag: Training mode
    /// - Parameter operatorLanguage: Language of the Cashier or Operator.
    /// - Parameter operatorIdentifier: Identification of the Cashier or Operator.
    /// - Parameter shiftNumber: Shift number.
    /// - Parameter tokenRequestedType: Undocumented.
    /// - Parameter customerOrderReq: Undocumented.
    /// - Parameter poiSerialNumber: Serial number of a POI Terminal
    public init(dateTime: Date, saleSoftware: SaleSoftware, saleTerminalData: SaleTerminalData? = nil, trainingModeFlag: Bool? = nil, operatorLanguage: String, operatorIdentifier: String? = nil, shiftNumber: String? = nil, tokenRequestedType: TokenRequestedType? = nil, customerOrderReq: Set<CustomerOrderReq>? = nil, poiSerialNumber: String? = nil) {
        self.dateTime = dateTime
        self.saleSoftware = saleSoftware
        self.saleTerminalData = saleTerminalData
        self.trainingModeFlag = trainingModeFlag
        self.operatorLanguage = operatorLanguage
        self.operatorIdentifier = operatorIdentifier
        self.shiftNumber = shiftNumber
        self.tokenRequestedType = tokenRequestedType
        self.customerOrderReq = customerOrderReq
        self.poiSerialNumber = poiSerialNumber
    }
    
    internal enum CodingKeys: String, CodingKey {
        case dateTime = "DateTime"
        case saleSoftware = "SaleSoftware"
        case saleTerminalData = "SaleTerminalData"
        case trainingModeFlag = "TrainingModeFlag"
        case operatorLanguage = "OperatorLanguage"
        case operatorIdentifier = "OperatorID"
        case shiftNumber = "ShiftNumber"
        case tokenRequestedType = "TokenRequestedType"
        case customerOrderReq = "CustomerOrderReq"
        case poiSerialNumber = "POISerialNumber"
    }
    
}
