//
//  CurrencyConversion.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Information related to a currency conversion
/// A currency conversion occurred in the payment, and the merchant needs to know information related to this conversion (e.g. to print on the sale receipt)
public final class CurrencyConversion: Codable {
    
    /// Undocumented.
    public let customerApprovedFlag: Bool?
    
    /// Amount after a currency conversion.
    public let convertedAmount: ConvertedAmount
    
    /// Undocumented.
    public let rate: Decimal?
    
    /// Undocumented.
    public let markup: Decimal?
    
    /// Undocumented.
    public let commission: Decimal?
    
    /// Declaration to present to the customer or the cashier for validation.
    public let declaration: String?
    
    /// Initializes the CurrencyConversion.
    ///
    /// - Parameter customerApprovedFlag: Undocumented.
    /// - Parameter convertedAmount: Amount after a currency conversion.
    /// - Parameter rate: Undocumented.
    /// - Parameter markup: Undocumented.
    /// - Parameter commission: Undocumented.
    /// - Parameter declaration: Declaration to present to the customer or the cashier for validation.
    public init(customerApprovedFlag: Bool? = nil, convertedAmount: ConvertedAmount, rate: Decimal? = nil, markup: Decimal? = nil, commission: Decimal? = nil, declaration: String? = nil) {
        self.customerApprovedFlag = customerApprovedFlag
        self.convertedAmount = convertedAmount
        self.rate = rate
        self.markup = markup
        self.commission = commission
        self.declaration = declaration
    }
    
    internal enum CodingKeys: String, CodingKey {
        case customerApprovedFlag = "CustomerApprovedFlag"
        case convertedAmount = "ConvertedAmount"
        case rate = "Rate"
        case markup = "Markup"
        case commission = "Commission"
        case declaration = "Declaration"
    }
    
}
