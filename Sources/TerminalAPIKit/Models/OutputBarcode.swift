//
//  OutputBarcode.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class OutputBarcode: Codable {
    
    /// Undocumented.
    public let barcodeType: BarcodeType?
    
    /// Undocumented.
    public let barcodeValue: String
    
    /// Initializes the OutputBarcode.
    ///
    /// - Parameter barcodeType: Undocumented.
    /// - Parameter barcodeValue: Undocumented.
    public init(barcodeType: BarcodeType? = nil, barcodeValue: String) {
        self.barcodeType = barcodeType
        self.barcodeValue = barcodeValue
    }
    
    internal enum CodingKeys: String, CodingKey {
        case barcodeType = "BarcodeType"
        case barcodeValue = "BarcodeValue"
    }
    
}
