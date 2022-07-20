//
//  InputData.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class InputData: Codable {
    
    /// Undocumented.
    public let device: Device
    
    /// Undocumented.
    public let infoQualify: InfoQualify
    
    /// Undocumented.
    public let inputCommand: InputCommand
    
    /// Undocumented.
    public let notifyCardInputFlag: Bool?
    
    /// Undocumented.
    public let maxInputTime: Int?
    
    /// Undocumented.
    public let immediateResponseFlag: Bool?
    
    /// Undocumented.
    public let minLength: Int?
    
    /// Undocumented.
    public let maxLength: Int?
    
    /// Undocumented.
    public let maxDecimalLength: Int?
    
    /// Undocumented.
    public let waitUserValidationFlag: Bool?
    
    /// Undocumented.
    public let defaultInputString: String?
    
    /// Undocumented.
    public let stringMask: String?
    
    /// Undocumented.
    public let fromRightToLeftFlag: Bool?
    
    /// Undocumented.
    public let maskCharactersFlag: Bool?
    
    /// Undocumented.
    public let beepKeyFlag: Bool?
    
    /// Undocumented.
    public let globalCorrectionFlag: Bool?
    
    /// Undocumented.
    public let disableCancelFlag: Bool?
    
    /// Undocumented.
    public let disableCorrectFlag: Bool?
    
    /// Undocumented.
    public let disableValidFlag: Bool?
    
    /// Undocumented.
    public let menuBackFlag: Bool?
    
    /// Initializes the InputData.
    ///
    /// - Parameter device: Undocumented.
    /// - Parameter infoQualify: Undocumented.
    /// - Parameter inputCommand: Undocumented.
    /// - Parameter notifyCardInputFlag: Undocumented.
    /// - Parameter maxInputTime: Undocumented.
    /// - Parameter immediateResponseFlag: Undocumented.
    /// - Parameter minLength: Undocumented.
    /// - Parameter maxLength: Undocumented.
    /// - Parameter maxDecimalLength: Undocumented.
    /// - Parameter waitUserValidationFlag: Undocumented.
    /// - Parameter defaultInputString: Undocumented.
    /// - Parameter stringMask: Undocumented.
    /// - Parameter fromRightToLeftFlag: Undocumented.
    /// - Parameter maskCharactersFlag: Undocumented.
    /// - Parameter beepKeyFlag: Undocumented.
    /// - Parameter globalCorrectionFlag: Undocumented.
    /// - Parameter disableCancelFlag: Undocumented.
    /// - Parameter disableCorrectFlag: Undocumented.
    /// - Parameter disableValidFlag: Undocumented.
    /// - Parameter menuBackFlag: Undocumented.
    public init(device: Device, infoQualify: InfoQualify, inputCommand: InputCommand, notifyCardInputFlag: Bool? = nil, maxInputTime: Int? = nil, immediateResponseFlag: Bool? = nil, minLength: Int? = nil, maxLength: Int? = nil, maxDecimalLength: Int? = nil, waitUserValidationFlag: Bool? = nil, defaultInputString: String? = nil, stringMask: String? = nil, fromRightToLeftFlag: Bool? = nil, maskCharactersFlag: Bool? = nil, beepKeyFlag: Bool? = nil, globalCorrectionFlag: Bool? = nil, disableCancelFlag: Bool? = nil, disableCorrectFlag: Bool? = nil, disableValidFlag: Bool? = nil, menuBackFlag: Bool? = nil) {
        self.device = device
        self.infoQualify = infoQualify
        self.inputCommand = inputCommand
        self.notifyCardInputFlag = notifyCardInputFlag
        self.maxInputTime = maxInputTime
        self.immediateResponseFlag = immediateResponseFlag
        self.minLength = minLength
        self.maxLength = maxLength
        self.maxDecimalLength = maxDecimalLength
        self.waitUserValidationFlag = waitUserValidationFlag
        self.defaultInputString = defaultInputString
        self.stringMask = stringMask
        self.fromRightToLeftFlag = fromRightToLeftFlag
        self.maskCharactersFlag = maskCharactersFlag
        self.beepKeyFlag = beepKeyFlag
        self.globalCorrectionFlag = globalCorrectionFlag
        self.disableCancelFlag = disableCancelFlag
        self.disableCorrectFlag = disableCorrectFlag
        self.disableValidFlag = disableValidFlag
        self.menuBackFlag = menuBackFlag
    }
    
    internal enum CodingKeys: String, CodingKey {
        case device = "Device"
        case infoQualify = "InfoQualify"
        case inputCommand = "InputCommand"
        case notifyCardInputFlag = "NotifyCardInputFlag"
        case maxInputTime = "MaxInputTime"
        case immediateResponseFlag = "ImmediateResponseFlag"
        case minLength = "MinLength"
        case maxLength = "MaxLength"
        case maxDecimalLength = "MaxDecimalLength"
        case waitUserValidationFlag = "WaitUserValidationFlag"
        case defaultInputString = "DefaultInputString"
        case stringMask = "StringMask"
        case fromRightToLeftFlag = "FromRightToLeftFlag"
        case maskCharactersFlag = "MaskCharactersFlag"
        case beepKeyFlag = "BeepKeyFlag"
        case globalCorrectionFlag = "GlobalCorrectionFlag"
        case disableCancelFlag = "DisableCancelFlag"
        case disableCorrectFlag = "DisableCorrectFlag"
        case disableValidFlag = "DisableValidFlag"
        case menuBackFlag = "MenuBackFlag"
    }
    
}
