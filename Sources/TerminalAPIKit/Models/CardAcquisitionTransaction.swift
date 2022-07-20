//
//  CardAcquisitionTransaction.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class CardAcquisitionTransaction: Codable {
    
    /// Undocumented.
    public let allowedPaymentBrand: [String]?
    
    /// Undocumented.
    public let allowedLoyaltyBrand: [String]?
    
    /// Undocumented.
    public let loyaltyHandling: LoyaltyHandling?
    
    /// Undocumented.
    public let forceEntryMode: Set<ForceEntryMode>?
    
    /// Undocumented.
    public let forceCustomerSelectionFlag: Bool?
    
    /// Undocumented.
    public let totalAmount: Double?
    
    /// Undocumented.
    public let paymentType: PaymentType?
    
    /// Undocumented.
    public let cashBackFlag: Bool?
    
    /// Initializes the CardAcquisitionTransaction.
    ///
    /// - Parameter allowedPaymentBrand: Undocumented.
    /// - Parameter allowedLoyaltyBrand: Undocumented.
    /// - Parameter loyaltyHandling: Undocumented.
    /// - Parameter forceEntryMode: Undocumented.
    /// - Parameter forceCustomerSelectionFlag: Undocumented.
    /// - Parameter totalAmount: Undocumented.
    /// - Parameter paymentType: Undocumented.
    /// - Parameter cashBackFlag: Undocumented.
    public init(allowedPaymentBrand: [String]? = nil, allowedLoyaltyBrand: [String]? = nil, loyaltyHandling: LoyaltyHandling? = nil, forceEntryMode: Set<ForceEntryMode>? = nil, forceCustomerSelectionFlag: Bool? = nil, totalAmount: Double? = nil, paymentType: PaymentType? = nil, cashBackFlag: Bool? = nil) {
        self.allowedPaymentBrand = allowedPaymentBrand
        self.allowedLoyaltyBrand = allowedLoyaltyBrand
        self.loyaltyHandling = loyaltyHandling
        self.forceEntryMode = forceEntryMode
        self.forceCustomerSelectionFlag = forceCustomerSelectionFlag
        self.totalAmount = totalAmount
        self.paymentType = paymentType
        self.cashBackFlag = cashBackFlag
    }
    
    internal enum CodingKeys: String, CodingKey {
        case allowedPaymentBrand = "AllowedPaymentBrand"
        case allowedLoyaltyBrand = "AllowedLoyaltyBrand"
        case loyaltyHandling = "LoyaltyHandling"
        case forceEntryMode = "ForceEntryMode"
        case forceCustomerSelectionFlag = "ForceCustomerSelectionFlag"
        case totalAmount = "TotalAmount"
        case paymentType = "PaymentType"
        case cashBackFlag = "CashBackFlag"
    }
    
}
