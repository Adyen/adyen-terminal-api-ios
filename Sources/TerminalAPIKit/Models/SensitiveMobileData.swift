//
//  SensitiveMobileData.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class SensitiveMobileData: Codable {
    
    /// Undocumented.
    public let msisdn: String
    
    /// Undocumented.
    public let ismi: String?
    
    /// Undocumented.
    public let imei: String?
    
    /// Initializes the SensitiveMobileData.
    ///
    /// - Parameter msisdn: Undocumented.
    /// - Parameter ismi: Undocumented.
    /// - Parameter imei: Undocumented.
    public init(msisdn: String, ismi: String? = nil, imei: String? = nil) {
        self.msisdn = msisdn
        self.ismi = ismi
        self.imei = imei
    }
    
    internal enum CodingKeys: String, CodingKey {
        case msisdn = "MSISDN"
        case ismi = "ISMI"
        case imei = "IMEI"
    }
    
}
