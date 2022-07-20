//
//  InputCommand.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum InputCommand: String, Codable {
    case getAnyKey = "GetAnyKey"
    case getConfirmation = "GetConfirmation"
    case siteManager = "SiteManager"
    case textString = "TextString"
    case digitString = "DigitString"
    case decimalString = "DecimalString"
    case getFunctionKey = "GetFunctionKey"
    case getMenuEntry = "GetMenuEntry"
    case password = "Password"
}
