//
//  Point.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class Point: Codable {
    
    /// Undocumented.
    public let x: String
    
    /// Undocumented.
    public let y: String
    
    /// Initializes the Point.
    ///
    /// - Parameter x: Undocumented.
    /// - Parameter y: Undocumented.
    public init(x: String, y: String) {
        self.x = x
        self.y = y
    }
    
    internal enum CodingKeys: String, CodingKey {
        case x = "X"
        case y = "Y"
    }
    
}
