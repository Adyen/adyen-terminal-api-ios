//
//  DisplayOutput.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Information to display and the way to process the display.
/// It contains a complete display operation for a Display or an Input Device type. For the Input Devices, Diagnosis and EnableService, ResponseRequiredFlag and MinimumDisplayTime shall be absent.
public final class DisplayOutput: Codable {
    
    /// Request of a message response.
    public let responseRequiredFlag: Bool?
    
    /// Number of seconds the message has to be displayed
    public let minimumDisplayTime: Int?
    
    /// Logical device located on a Sale Terminal or a POI Terminal, in term of class of information to output (display, print
    public let device: Device
    
    /// Qualification of the information to sent to an output logical device, to display or print to the Cashier or the
    public let infoQualify: InfoQualify
    
    /// Content to display or print.
    public let outputContent: OutputContent
    
    /// Undocumented.
    public let menuEntry: [MenuEntry]?
    
    /// Vendor specific signature of text message to display or print.
    public let outputSignature: Data?
    
    /// Initializes the DisplayOutput.
    ///
    /// - Parameter responseRequiredFlag: Request of a message response.
    /// - Parameter minimumDisplayTime: Number of seconds the message has to be displayed
    /// - Parameter device: Logical device located on a Sale Terminal or a POI Terminal, in term of class of information to output (display, print
    /// - Parameter infoQualify: Qualification of the information to sent to an output logical device, to display or print to the Cashier or the
    /// - Parameter outputContent: Content to display or print.
    /// - Parameter menuEntry: Undocumented.
    /// - Parameter outputSignature: Vendor specific signature of text message to display or print.
    public init(responseRequiredFlag: Bool? = nil, minimumDisplayTime: Int? = nil, device: Device, infoQualify: InfoQualify, outputContent: OutputContent, menuEntry: [MenuEntry]? = nil, outputSignature: Data? = nil) {
        self.responseRequiredFlag = responseRequiredFlag
        self.minimumDisplayTime = minimumDisplayTime
        self.device = device
        self.infoQualify = infoQualify
        self.outputContent = outputContent
        self.menuEntry = menuEntry
        self.outputSignature = outputSignature
    }
    
    internal enum CodingKeys: String, CodingKey {
        case responseRequiredFlag = "ResponseRequiredFlag"
        case minimumDisplayTime = "MinimumDisplayTime"
        case device = "Device"
        case infoQualify = "InfoQualify"
        case outputContent = "OutputContent"
        case menuEntry = "MenuEntry"
        case outputSignature = "OutputSignature"
    }
    
}
