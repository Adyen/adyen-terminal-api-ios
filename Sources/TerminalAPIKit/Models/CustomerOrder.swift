//
//  CustomerOrder.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class CustomerOrder: Codable {
    
    /// Undocumented.
    public let customerOrderIdentifier: String?
    
    /// Undocumented.
    public let saleReferenceIdentifier: String
    
    /// Undocumented.
    public let openOrderState: Bool?
    
    /// Undocumented.
    public let startDate: Date
    
    /// Undocumented.
    public let endDate: Date?
    
    /// Undocumented.
    public let forecastedAmount: Double
    
    /// Undocumented.
    public let currentAmount: Double
    
    /// Undocumented.
    public let currency: String?
    
    /// Undocumented.
    public let accessedBy: String?
    
    /// Undocumented.
    public let additionalInformation: String?
    
    /// Initializes the CustomerOrder.
    ///
    /// - Parameter customerOrderIdentifier: Undocumented.
    /// - Parameter saleReferenceIdentifier: Undocumented.
    /// - Parameter openOrderState: Undocumented.
    /// - Parameter startDate: Undocumented.
    /// - Parameter endDate: Undocumented.
    /// - Parameter forecastedAmount: Undocumented.
    /// - Parameter currentAmount: Undocumented.
    /// - Parameter currency: Undocumented.
    /// - Parameter accessedBy: Undocumented.
    /// - Parameter additionalInformation: Undocumented.
    public init(customerOrderIdentifier: String? = nil, saleReferenceIdentifier: String, openOrderState: Bool? = nil, startDate: Date, endDate: Date? = nil, forecastedAmount: Double, currentAmount: Double, currency: String? = nil, accessedBy: String? = nil, additionalInformation: String? = nil) {
        self.customerOrderIdentifier = customerOrderIdentifier
        self.saleReferenceIdentifier = saleReferenceIdentifier
        self.openOrderState = openOrderState
        self.startDate = startDate
        self.endDate = endDate
        self.forecastedAmount = forecastedAmount
        self.currentAmount = currentAmount
        self.currency = currency
        self.accessedBy = accessedBy
        self.additionalInformation = additionalInformation
    }
    
    internal enum CodingKeys: String, CodingKey {
        case customerOrderIdentifier = "CustomerOrderID"
        case saleReferenceIdentifier = "SaleReferenceID"
        case openOrderState = "OpenOrderState"
        case startDate = "StartDate"
        case endDate = "EndDate"
        case forecastedAmount = "ForecastedAmount"
        case currentAmount = "CurrentAmount"
        case currency = "Currency"
        case accessedBy = "AccessedBy"
        case additionalInformation = "AdditionalInformation"
    }
    
}
