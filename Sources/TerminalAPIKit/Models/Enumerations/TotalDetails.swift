//
//  TotalDetails.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum TotalDetails: String, Codable {
    case poiIdentifier = "POIID"
    case saleIdentifier = "SaleID"
    case operatorIdentifier = "OperatorID"
    case shiftNumber = "ShiftNumber"
    case totalsGroupIdentifier = "TotalsGroupID"
}
