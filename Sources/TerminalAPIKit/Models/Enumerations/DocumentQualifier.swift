//
//  DocumentQualifier.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum DocumentQualifier: String, Codable {
    case saleReceipt = "SaleReceipt"
    case cashierReceipt = "CashierReceipt"
    case customerReceipt = "CustomerReceipt"
    case document = "Document"
    case voucher = "Voucher"
    case journal = "Journal"
}
