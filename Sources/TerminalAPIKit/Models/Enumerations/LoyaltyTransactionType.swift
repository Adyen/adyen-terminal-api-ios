//
//  LoyaltyTransactionType.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum LoyaltyTransactionType: String, Codable {
    case award = "Award"
    case rebate = "Rebate"
    case redemption = "Redemption"
    case awardRefund = "AwardRefund"
    case rebateRefund = "RebateRefund"
    case redemptionRefund = "RedemptionRefund"
}
