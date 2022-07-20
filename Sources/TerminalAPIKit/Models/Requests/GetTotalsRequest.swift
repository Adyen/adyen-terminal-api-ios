//
//  GetTotalsRequest.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Get Totals Request message.
/// It conveys information from the Sale System related to the scope and the format of the totals to be computed by the POI System.
public final class GetTotalsRequest: Request {
    
    /// The type of the response returned for this request.
    public typealias ResponseType = GetTotalsResponse
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "GetTotalsRequest"
    
    /// The category of the message in which this request is sent.
    public static let messageCategory = MessageCategory.getTotals
    
    /// Indicates the hierarchical structure of the reconciliation result of the Sale to POI reconciliation.
    public let totalDetails: Set<TotalDetails>?
    
    /// Filter to compute the totals.
    public let totalFilter: TotalFilter?
    
    /// Initializes the GetTotalsRequest.
    ///
    /// - Parameter totalDetails: Indicates the hierarchical structure of the reconciliation result of the Sale to POI reconciliation.
    /// - Parameter totalFilter: Filter to compute the totals.
    public init(totalDetails: Set<TotalDetails>? = nil, totalFilter: TotalFilter? = nil) {
        self.totalDetails = totalDetails
        self.totalFilter = totalFilter
    }
    
    internal enum CodingKeys: String, CodingKey {
        case totalDetails = "TotalDetails"
        case totalFilter = "TotalFilter"
    }
    
}
