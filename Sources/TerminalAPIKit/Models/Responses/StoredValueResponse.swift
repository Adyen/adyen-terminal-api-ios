//
//  StoredValueResponse.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Stored Value Response message.
/// It conveys Information related to the Stored Value transaction processed by the POI System.
public final class StoredValueResponse: Response {
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "StoredValueResponse"
    
    /// Result of a message request processing.
    public let response: MessageResponse
    
    /// Data related to the Sale System.
    public let saleData: SaleData
    
    /// Data related to the POI System.
    public let poiData: POIData
    
    /// Result of loading/reloading a stored value card..
    public let storedValueResult: [StoredValueResult]?
    
    /// Undocumented.
    public let paymentReceipt: [PaymentReceipt]?
    
    /// Initializes the StoredValueResponse.
    ///
    /// - Parameter response: Result of a message request processing.
    /// - Parameter saleData: Data related to the Sale System.
    /// - Parameter poiData: Data related to the POI System.
    /// - Parameter storedValueResult: Result of loading/reloading a stored value card..
    /// - Parameter paymentReceipt: Undocumented.
    public init(
        response: MessageResponse,
        saleData: SaleData,
        poiData: POIData,
        storedValueResult: [StoredValueResult]? = nil,
        paymentReceipt: [PaymentReceipt]? = nil
    ) {
        self.response = response
        self.saleData = saleData
        self.poiData = poiData
        self.storedValueResult = storedValueResult
        self.paymentReceipt = paymentReceipt
    }
    
    internal enum CodingKeys: String, CodingKey {
        case response = "Response"
        case saleData = "SaleData"
        case poiData = "POIData"
        case storedValueResult = "StoredValueResult"
        case paymentReceipt = "PaymentReceipt"
    }
    
}
