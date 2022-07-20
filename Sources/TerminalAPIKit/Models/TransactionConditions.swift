//
//  TransactionConditions.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Conditions on which the transaction must be processed.
public final class TransactionConditions: Codable {
    
    /// Card payment brands allowed by the Sale System for the payment transaction.
    public let allowedPaymentBrand: [String]?
    
    /// Identification of the Acquirer
    public let acquirerIdentifier: [String]?
    
    /// The preferred type of payment is a debit transaction rather a credit transaction.
    public let debitPreferredFlag: Bool?
    
    /// Loyalty brands or programs allowed by the Sale System for the loyalty transaction.
    public let allowedLoyaltyBrand: [String]?
    
    /// Type of Loyalty processing requested by the Sale System.
    public let loyaltyHandling: LoyaltyHandling?
    
    /// Language of the Customer
    public let customerLanguage: String?
    
    /// Indicates if the Cashier requires POI forces online access to the Acquirer.
    public let forceOnlineFlag: Bool?
    
    /// Payment instrument entry mode requested by the Sale System.
    public let forceEntryMode: Set<ForceEntryMode>?
    
    /// The code which identifies the category of the transaction (MCC).
    public let merchantCategoryCode: String?
    
    /// Initializes the TransactionConditions.
    ///
    /// - Parameter allowedPaymentBrand: Card payment brands allowed by the Sale System for the payment transaction.
    /// - Parameter acquirerIdentifier: Identification of the Acquirer
    /// - Parameter debitPreferredFlag: The preferred type of payment is a debit transaction rather a credit transaction.
    /// - Parameter allowedLoyaltyBrand: Loyalty brands or programs allowed by the Sale System for the loyalty transaction.
    /// - Parameter loyaltyHandling: Type of Loyalty processing requested by the Sale System.
    /// - Parameter customerLanguage: Language of the Customer
    /// - Parameter forceOnlineFlag: Indicates if the Cashier requires POI forces online access to the Acquirer.
    /// - Parameter forceEntryMode: Payment instrument entry mode requested by the Sale System.
    /// - Parameter merchantCategoryCode: The code which identifies the category of the transaction (MCC).
    public init(allowedPaymentBrand: [String]? = nil, acquirerIdentifier: [String]? = nil, debitPreferredFlag: Bool? = nil, allowedLoyaltyBrand: [String]? = nil, loyaltyHandling: LoyaltyHandling? = nil, customerLanguage: String? = nil, forceOnlineFlag: Bool? = nil, forceEntryMode: Set<ForceEntryMode>? = nil, merchantCategoryCode: String? = nil) {
        self.allowedPaymentBrand = allowedPaymentBrand
        self.acquirerIdentifier = acquirerIdentifier
        self.debitPreferredFlag = debitPreferredFlag
        self.allowedLoyaltyBrand = allowedLoyaltyBrand
        self.loyaltyHandling = loyaltyHandling
        self.customerLanguage = customerLanguage
        self.forceOnlineFlag = forceOnlineFlag
        self.forceEntryMode = forceEntryMode
        self.merchantCategoryCode = merchantCategoryCode
    }
    
    internal enum CodingKeys: String, CodingKey {
        case allowedPaymentBrand = "AllowedPaymentBrand"
        case acquirerIdentifier = "AcquirerID"
        case debitPreferredFlag = "DebitPreferredFlag"
        case allowedLoyaltyBrand = "AllowedLoyaltyBrand"
        case loyaltyHandling = "LoyaltyHandling"
        case customerLanguage = "CustomerLanguage"
        case forceOnlineFlag = "ForceOnlineFlag"
        case forceEntryMode = "ForceEntryMode"
        case merchantCategoryCode = "MerchantCategoryCode"
    }
    
}
