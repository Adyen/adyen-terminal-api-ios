//
//  Input.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class Input: Codable {
    
    /// Undocumented.
    public let inputCommand: InputCommand
    
    /// Undocumented.
    public let confirmedFlag: Bool?
    
    /// Undocumented.
    public let functionKey: String?
    
    /// Undocumented.
    public let textInput: String?
    
    /// Undocumented.
    public let digitInput: String?
    
    /// Undocumented.
    public let password: [UInt8]?
    
    /// Shows which option was selected. A value of 1 means selected, 0 means not selected..
    public let menuEntryNumber: [Int]?
    
    /// Initializes the Input.
    ///
    /// - Parameter inputCommand: Undocumented.
    /// - Parameter confirmedFlag: Undocumented.
    /// - Parameter functionKey: Undocumented.
    /// - Parameter textInput: Undocumented.
    /// - Parameter digitInput: Undocumented.
    /// - Parameter password: Undocumented.
    /// - Parameter menuEntryNumber: Undocumented.
    public init(inputCommand: InputCommand, confirmedFlag: Bool? = nil, functionKey: String? = nil, textInput: String? = nil, digitInput: String? = nil, password: [UInt8]? = nil, menuEntryNumber: [Int]? = nil) {
        self.inputCommand = inputCommand
        self.confirmedFlag = confirmedFlag
        self.functionKey = functionKey
        self.textInput = textInput
        self.digitInput = digitInput
        self.password = password
        self.menuEntryNumber = menuEntryNumber
    }
    
    internal enum CodingKeys: String, CodingKey {
        case inputCommand = "InputCommand"
        case confirmedFlag = "ConfirmedFlag"
        case functionKey = "FunctionKey"
        case textInput = "TextInput"
        case digitInput = "DigitInput"
        case password = "Password"
        case menuEntryNumber = "MenuEntryNumber"
    }
    
}
