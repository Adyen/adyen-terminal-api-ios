//
//  MenuEntryTag.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum MenuEntryTag: String, Codable {
    case selectable = "Selectable"
    case nonSelectable = "NonSelectable"
    case subMenu = "SubMenu"
    case nonSelectableSubMenu = "NonSelectableSubMenu"
}
