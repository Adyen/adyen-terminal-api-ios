//
//  InstalmentType.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum InstalmentType: String, Codable {
    case deferredInstalment = "DeferredInstalment"
    case equalInstalments = "EqualInstalments"
    case unequalInstalments = "UnequalInstalments"
}
