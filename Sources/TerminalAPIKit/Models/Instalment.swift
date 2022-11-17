//
//  Instalment.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class Instalment: Codable {
    
    /// Undocumented.
    public let instalmentType: InstalmentType?
    
    /// Undocumented.
    public let sequenceNumber: Int?
    
    /// Undocumented.
    public let planIdentifier: String?
    
    /// Undocumented.
    public let period: Int?
    
    /// Undocumented.
    public let periodUnit: PeriodUnit?
    
    /// Undocumented.
    public let firstPaymentDate: Date?
    
    /// Undocumented.
    public let totalNbOfPayments: Int?
    
    /// Undocumented.
    public let cumulativeAmount: Decimal?
    
    /// Undocumented.
    public let firstAmount: Decimal?
    
    /// Undocumented.
    public let charges: Decimal?
    
    /// Initializes the Instalment.
    ///
    /// - Parameter instalmentType: Undocumented.
    /// - Parameter sequenceNumber: Undocumented.
    /// - Parameter planIdentifier: Undocumented.
    /// - Parameter period: Undocumented.
    /// - Parameter periodUnit: Undocumented.
    /// - Parameter firstPaymentDate: Undocumented.
    /// - Parameter totalNbOfPayments: Undocumented.
    /// - Parameter cumulativeAmount: Undocumented.
    /// - Parameter firstAmount: Undocumented.
    /// - Parameter charges: Undocumented.
    public init(instalmentType: InstalmentType? = nil, sequenceNumber: Int? = nil, planIdentifier: String? = nil, period: Int? = nil, periodUnit: PeriodUnit? = nil, firstPaymentDate: Date? = nil, totalNbOfPayments: Int? = nil, cumulativeAmount: Decimal? = nil, firstAmount: Decimal? = nil, charges: Decimal? = nil) {
        self.instalmentType = instalmentType
        self.sequenceNumber = sequenceNumber
        self.planIdentifier = planIdentifier
        self.period = period
        self.periodUnit = periodUnit
        self.firstPaymentDate = firstPaymentDate
        self.totalNbOfPayments = totalNbOfPayments
        self.cumulativeAmount = cumulativeAmount
        self.firstAmount = firstAmount
        self.charges = charges
    }
    
    internal enum CodingKeys: String, CodingKey {
        case instalmentType = "InstalmentType"
        case sequenceNumber = "SequenceNumber"
        case planIdentifier = "PlanID"
        case period = "Period"
        case periodUnit = "PeriodUnit"
        case firstPaymentDate = "FirstPaymentDate"
        case totalNbOfPayments = "TotalNbOfPayments"
        case cumulativeAmount = "CumulativeAmount"
        case firstAmount = "FirstAmount"
        case charges = "Charges"
    }
    
}
