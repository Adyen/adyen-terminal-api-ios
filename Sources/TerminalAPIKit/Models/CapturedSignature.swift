//
//  CapturedSignature.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class CapturedSignature: Codable {
    
    /// Undocumented.
    public let areaSize: AreaSize?
    
    /// Undocumented.
    public let signaturePoint: [Point]?
    
    /// Initializes the CapturedSignature.
    ///
    /// - Parameter areaSize: Undocumented.
    /// - Parameter signaturePoint: Undocumented.
    public init(areaSize: AreaSize? = nil, signaturePoint: [Point]? = nil) {
        self.areaSize = areaSize
        self.signaturePoint = signaturePoint
    }
    
    internal enum CodingKeys: String, CodingKey {
        case areaSize = "AreaSize"
        case signaturePoint = "SignaturePoint"
    }
    
}
