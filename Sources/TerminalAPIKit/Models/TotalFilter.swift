//
//  TotalFilter.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class TotalFilter: Codable {
    
    /// Undocumented.
    public let poiIdentifier: String?
    
    /// Undocumented.
    public let saleIdentifier: String?
    
    /// Undocumented.
    public let operatorIdentifier: String?
    
    /// Undocumented.
    public let shiftNumber: String?
    
    /// Undocumented.
    public let totalsGroupIdentifier: String?
    
    /// Initializes the TotalFilter.
    ///
    /// - Parameter poiIdentifier: Undocumented.
    /// - Parameter saleIdentifier: Undocumented.
    /// - Parameter operatorIdentifier: Undocumented.
    /// - Parameter shiftNumber: Undocumented.
    /// - Parameter totalsGroupIdentifier: Undocumented.
    public init(poiIdentifier: String? = nil, saleIdentifier: String? = nil, operatorIdentifier: String? = nil, shiftNumber: String? = nil, totalsGroupIdentifier: String? = nil) {
        self.poiIdentifier = poiIdentifier
        self.saleIdentifier = saleIdentifier
        self.operatorIdentifier = operatorIdentifier
        self.shiftNumber = shiftNumber
        self.totalsGroupIdentifier = totalsGroupIdentifier
    }
    
    internal enum CodingKeys: String, CodingKey {
        case poiIdentifier = "POIID"
        case saleIdentifier = "SaleID"
        case operatorIdentifier = "OperatorID"
        case shiftNumber = "ShiftNumber"
        case totalsGroupIdentifier = "TotalsGroupID"
    }
    
}
