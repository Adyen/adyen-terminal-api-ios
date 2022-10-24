//
//  SaleData.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Data related to the Sale System.
/// Data associated to the Sale System, with a particular value during the processing of the payment by the POI, including the cards acquisition.
public final class SaleData: Codable {
    
    /// Undocumented.
    public let operatorIdentifier: String?
    
    /// Language of the Cashier or Operator.
    public let operatorLanguage: String?
    
    /// Shift number.
    public let shiftNumber: String?
    
    /// Unique identification of a Sale transaction
    public let saleTransactionIdentifier: TransactionIdentifier
    
    /// Identification of a Sale global transaction for a sequence of related POI transactions
    public let saleReferenceIdentifier: String?
    
    /// Information related to the software and hardware feature of the Sale Terminal.
    public let saleTerminalData: SaleTerminalData?
    
    /// Undocumented.
    public let tokenRequestedType: TokenRequestedType?
    
    /// Undocumented.
    public let customerOrderIdentifier: String?
    
    /// Undocumented.
    public let customerOrderReq: Set<CustomerOrderReq>?
    
    /// Sale information intended for the POI.
    public let saleToPOIData: String?
    
    /// Sale information intended for the Issuer.
    public let saleToIssuerData: SaleToIssuerData?
    
    /// Initializes the SaleData.
    ///
    /// - Parameter operatorIdentifier: Undocumented.
    /// - Parameter operatorLanguage: Language of the Cashier or Operator.
    /// - Parameter shiftNumber: Shift number.
    /// - Parameter saleTransactionIdentifier: Unique identification of a Sale transaction
    /// - Parameter saleReferenceIdentifier: Identification of a Sale global transaction for a sequence of related POI transactions
    /// - Parameter saleTerminalData: Information related to the software and hardware feature of the Sale Terminal.
    /// - Parameter tokenRequestedType: Undocumented.
    /// - Parameter customerOrderIdentifier: Undocumented.
    /// - Parameter customerOrderReq: Undocumented.
    /// - Parameter saleToPOIData: Sale information intended for the POI.
    /// - Parameter saleToIssuerData: Sale information intended for the Issuer.
    public init(operatorIdentifier: String? = nil, operatorLanguage: String? = nil, shiftNumber: String? = nil, saleTransactionIdentifier: TransactionIdentifier, saleReferenceIdentifier: String? = nil, saleTerminalData: SaleTerminalData? = nil, tokenRequestedType: TokenRequestedType? = nil, customerOrderIdentifier: String? = nil, customerOrderReq: Set<CustomerOrderReq>? = nil, saleToPOIData: String? = nil, saleToIssuerData: SaleToIssuerData? = nil) {
        self.operatorIdentifier = operatorIdentifier
        self.operatorLanguage = operatorLanguage
        self.shiftNumber = shiftNumber
        self.saleTransactionIdentifier = saleTransactionIdentifier
        self.saleReferenceIdentifier = saleReferenceIdentifier
        self.saleTerminalData = saleTerminalData
        self.tokenRequestedType = tokenRequestedType
        self.customerOrderIdentifier = customerOrderIdentifier
        self.customerOrderReq = customerOrderReq
        self.saleToPOIData = saleToPOIData
        self.saleToIssuerData = saleToIssuerData
    }
    
    internal enum CodingKeys: String, CodingKey {
        case operatorIdentifier = "OperatorId"
        case operatorLanguage = "OperatorLanguage"
        case shiftNumber = "ShiftNumber"
        case saleTransactionIdentifier = "SaleTransactionID"
        case saleReferenceIdentifier = "SaleReferenceID"
        case saleTerminalData = "SaleTerminalData"
        case tokenRequestedType = "TokenRequestedType"
        case customerOrderIdentifier = "CustomerOrderID"
        case customerOrderReq = "CustomerOrderReq"
        case saleToPOIData = "SaleToPOIData"
        case saleToIssuerData = "SaleToIssuerData"
    }
    
}
