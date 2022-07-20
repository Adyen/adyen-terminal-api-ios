//
//  MobileData.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Information related to the mobile for the payment transaction.
/// Mobile phone is used as a payment instrument for the transaction.
public final class MobileData: Codable {
    
    /// Identifies the country of a mobile phone operator.
    public let mobileCountryCode: String?
    
    /// Identifies the mobile phone operator inside a country.
    public let mobileNetworkCode: String?
    
    /// Masked Mobile Subscriber Integrated Service Digital Network.
    public let maskedMSISDN: String?
    
    /// Geographic location specified by geographic or UTM coordinates.
    public let geolocation: Geolocation?
    
    /// Sensitive information related to the mobile phone, protected by CMS.
    public let protectedMobileData: [UInt8]?
    
    /// Sensitive information related to the mobile phone.
    public let sensitiveMobileData: SensitiveMobileData?
    
    /// Initializes the MobileData.
    ///
    /// - Parameter mobileCountryCode: Identifies the country of a mobile phone operator.
    /// - Parameter mobileNetworkCode: Identifies the mobile phone operator inside a country.
    /// - Parameter maskedMSISDN: Masked Mobile Subscriber Integrated Service Digital Network.
    /// - Parameter geolocation: Geographic location specified by geographic or UTM coordinates.
    /// - Parameter protectedMobileData: Sensitive information related to the mobile phone, protected by CMS.
    /// - Parameter sensitiveMobileData: Sensitive information related to the mobile phone.
    public init(mobileCountryCode: String? = nil, mobileNetworkCode: String? = nil, maskedMSISDN: String? = nil, geolocation: Geolocation? = nil, protectedMobileData: [UInt8]? = nil, sensitiveMobileData: SensitiveMobileData? = nil) {
        self.mobileCountryCode = mobileCountryCode
        self.mobileNetworkCode = mobileNetworkCode
        self.maskedMSISDN = maskedMSISDN
        self.geolocation = geolocation
        self.protectedMobileData = protectedMobileData
        self.sensitiveMobileData = sensitiveMobileData
    }
    
    internal enum CodingKeys: String, CodingKey {
        case mobileCountryCode = "MobileCountryCode"
        case mobileNetworkCode = "MobileNetworkCode"
        case maskedMSISDN = "MaskedMSISDN"
        case geolocation = "Geolocation"
        case protectedMobileData = "ProtectedMobileData"
        case sensitiveMobileData = "SensitiveMobileData"
    }
    
}
