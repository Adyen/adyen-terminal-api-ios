//
//  POIProfile.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class POIProfile: Codable {
    
    /// Undocumented.
    public let genericProfile: GenericProfile?
    
    /// Undocumented.
    public let serviceProfiles: Set<ServiceProfiles>?
    
    /// Initializes the POIProfile.
    ///
    /// - Parameter genericProfile: Undocumented.
    /// - Parameter serviceProfiles: Undocumented.
    public init(genericProfile: GenericProfile? = nil, serviceProfiles: Set<ServiceProfiles>? = nil) {
        self.genericProfile = genericProfile
        self.serviceProfiles = serviceProfiles
    }
    
    internal enum CodingKeys: String, CodingKey {
        case genericProfile = "GenericProfile"
        case serviceProfiles = "ServiceProfiles"
    }
    
}
