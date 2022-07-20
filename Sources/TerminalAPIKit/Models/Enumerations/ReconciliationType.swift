//
//  ReconciliationType.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum ReconciliationType: String, Codable {
    case saleReconciliation = "SaleReconciliation"
    case acquirerSynchronisation = "AcquirerSynchronisation"
    case acquirerReconciliation = "AcquirerReconciliation"
    case previousReconciliation = "PreviousReconciliation"
}
