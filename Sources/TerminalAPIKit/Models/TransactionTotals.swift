//
//  TransactionTotals.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Result of the Sale to POI Reconciliation processing.
/// If Result is Success, contains all the totals, classified as required by the Sale in the message request. At least, transaction totals are provided per Acquirer, Acquirer Settlement, and Card Brand.
public final class TransactionTotals: Codable {
    
    /// Type of payment instrument.
    public let paymentInstrumentType: PaymentInstrumentType
    
    /// Identification of the Acquirer
    public let acquirerIdentifier: String?
    
    /// Identifier of a reconciliation period with a payment or loyalty host.
    public let hostReconciliationIdentifier: String?
    
    /// Type of payment or loyalty card
    public let cardBrand: String?
    
    /// Identification of a POI System or a POI Terminal for the Sale to POI protocol
    public let poiIdentifier: String?
    
    /// Identification of a Sale System or a Sale Terminal for the Sale to POI protocol
    public let saleIdentifier: String?
    
    /// Identification of the Cashier or Operator.
    public let operatorIdentifier: String?
    
    /// Shift number.
    public let shiftNumber: String?
    
    /// Identification of a group of transaction on a POI Terminal, having the same Sale features.
    public let totalsGroupIdentifier: String?
    
    /// Currency of a monetary amount.
    public let paymentCurrency: String?
    
    /// Totals of the payment transaction during the reconciliation period.
    public let paymentTotals: [PaymentTotals]?
    
    /// Unit of a loyalty amount.
    public let loyaltyUnit: LoyaltyUnit?
    
    /// Currency of a monetary amount.
    public let loyaltyCurrency: String?
    
    /// Totals of the loyalty transaction during the reconciliation period.
    public let loyaltyTotals: [LoyaltyTotals]?
    
    /// Initializes the TransactionTotals.
    ///
    /// - Parameter paymentInstrumentType: Type of payment instrument.
    /// - Parameter acquirerIdentifier: Identification of the Acquirer
    /// - Parameter hostReconciliationIdentifier: Identifier of a reconciliation period with a payment or loyalty host.
    /// - Parameter cardBrand: Type of payment or loyalty card
    /// - Parameter poiIdentifier: Identification of a POI System or a POI Terminal for the Sale to POI protocol
    /// - Parameter saleIdentifier: Identification of a Sale System or a Sale Terminal for the Sale to POI protocol
    /// - Parameter operatorIdentifier: Identification of the Cashier or Operator.
    /// - Parameter shiftNumber: Shift number.
    /// - Parameter totalsGroupIdentifier: Identification of a group of transaction on a POI Terminal, having the same Sale features.
    /// - Parameter paymentCurrency: Currency of a monetary amount.
    /// - Parameter paymentTotals: Totals of the payment transaction during the reconciliation period.
    /// - Parameter loyaltyUnit: Unit of a loyalty amount.
    /// - Parameter loyaltyCurrency: Currency of a monetary amount.
    /// - Parameter loyaltyTotals: Totals of the loyalty transaction during the reconciliation period.
    public init(paymentInstrumentType: PaymentInstrumentType, acquirerIdentifier: String? = nil, hostReconciliationIdentifier: String? = nil, cardBrand: String? = nil, poiIdentifier: String? = nil, saleIdentifier: String? = nil, operatorIdentifier: String? = nil, shiftNumber: String? = nil, totalsGroupIdentifier: String? = nil, paymentCurrency: String? = nil, paymentTotals: [PaymentTotals]? = nil, loyaltyUnit: LoyaltyUnit? = nil, loyaltyCurrency: String? = nil, loyaltyTotals: [LoyaltyTotals]? = nil) {
        self.paymentInstrumentType = paymentInstrumentType
        self.acquirerIdentifier = acquirerIdentifier
        self.hostReconciliationIdentifier = hostReconciliationIdentifier
        self.cardBrand = cardBrand
        self.poiIdentifier = poiIdentifier
        self.saleIdentifier = saleIdentifier
        self.operatorIdentifier = operatorIdentifier
        self.shiftNumber = shiftNumber
        self.totalsGroupIdentifier = totalsGroupIdentifier
        self.paymentCurrency = paymentCurrency
        self.paymentTotals = paymentTotals
        self.loyaltyUnit = loyaltyUnit
        self.loyaltyCurrency = loyaltyCurrency
        self.loyaltyTotals = loyaltyTotals
    }
    
    internal enum CodingKeys: String, CodingKey {
        case paymentInstrumentType = "PaymentInstrumentType"
        case acquirerIdentifier = "AcquirerID"
        case hostReconciliationIdentifier = "HostReconciliationID"
        case cardBrand = "CardBrand"
        case poiIdentifier = "POIID"
        case saleIdentifier = "SaleID"
        case operatorIdentifier = "OperatorID"
        case shiftNumber = "ShiftNumber"
        case totalsGroupIdentifier = "TotalsGroupID"
        case paymentCurrency = "PaymentCurrency"
        case paymentTotals = "PaymentTotals"
        case loyaltyUnit = "LoyaltyUnit"
        case loyaltyCurrency = "LoyaltyCurrency"
        case loyaltyTotals = "LoyaltyTotals"
    }
    
}
