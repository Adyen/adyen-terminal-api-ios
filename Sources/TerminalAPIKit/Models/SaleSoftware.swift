//
//  SaleSoftware.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class SaleSoftware: Codable {
    
    /// Undocumented.
    public let manufacturerIdentifier: String
    
    /// Undocumented.
    public let applicationName: String
    
    /// Undocumented.
    public let softwareVersion: String
    
    /// Undocumented.
    public let certificationCode: String
    
    /// Initializes the SaleSoftware.
    ///
    /// - Parameter manufacturerIdentifier: Undocumented.
    /// - Parameter applicationName: Undocumented.
    /// - Parameter softwareVersion: Undocumented.
    /// - Parameter certificationCode: Undocumented.
    public init(manufacturerIdentifier: String, applicationName: String, softwareVersion: String, certificationCode: String) {
        self.manufacturerIdentifier = manufacturerIdentifier
        self.applicationName = applicationName
        self.softwareVersion = softwareVersion
        self.certificationCode = certificationCode
    }
    
    internal enum CodingKeys: String, CodingKey {
        case manufacturerIdentifier = "ManufacturerID"
        case applicationName = "ApplicationName"
        case softwareVersion = "SoftwareVersion"
        case certificationCode = "CertificationCode"
    }
    
}
