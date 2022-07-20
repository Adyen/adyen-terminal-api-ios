//
//  POIStatus.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// State of a POI Terminal.
/// Indicate the availability of the POI Terminal components. The data element is absent if the component is not part of the POI Terminal.
public final class POIStatus: Codable {
    
    /// Global status of a POI Server or POI Terminal.
    public let globalStatus: GlobalStatus
    
    /// Indicates if the security module of the POI is working and usable.
    public let securityOKFlag: Bool?
    
    /// Indicates if the PED is working and usable.
    public let pedOKFlag: Bool?
    
    /// Indicates if the card readers are working and usable.
    public let cardReaderOKFlag: Bool?
    
    /// Undocumented.
    public let printerStatus: PrinterStatus?
    
    /// Indicates if the communication infrastructure is working and usable.
    public let communicationOKFlag: Bool?
    
    /// Status of cash handling device.
    public let cashHandlingDevice: [CashHandlingDevice]?
    
    /// Indicate a suspicion of fraud by the POI System.
    public let fraudPreventionFlag: Bool?
    
    /// Initializes the POIStatus.
    ///
    /// - Parameter globalStatus: Global status of a POI Server or POI Terminal.
    /// - Parameter securityOKFlag: Indicates if the security module of the POI is working and usable.
    /// - Parameter pedOKFlag: Indicates if the PED is working and usable.
    /// - Parameter cardReaderOKFlag: Indicates if the card readers are working and usable.
    /// - Parameter printerStatus: Undocumented.
    /// - Parameter communicationOKFlag: Indicates if the communication infrastructure is working and usable.
    /// - Parameter cashHandlingDevice: Status of cash handling device.
    /// - Parameter fraudPreventionFlag: Indicate a suspicion of fraud by the POI System.
    public init(globalStatus: GlobalStatus, securityOKFlag: Bool? = nil, pedOKFlag: Bool? = nil, cardReaderOKFlag: Bool? = nil, printerStatus: PrinterStatus? = nil, communicationOKFlag: Bool? = nil, cashHandlingDevice: [CashHandlingDevice]? = nil, fraudPreventionFlag: Bool? = nil) {
        self.globalStatus = globalStatus
        self.securityOKFlag = securityOKFlag
        self.pedOKFlag = pedOKFlag
        self.cardReaderOKFlag = cardReaderOKFlag
        self.printerStatus = printerStatus
        self.communicationOKFlag = communicationOKFlag
        self.cashHandlingDevice = cashHandlingDevice
        self.fraudPreventionFlag = fraudPreventionFlag
    }
    
    internal enum CodingKeys: String, CodingKey {
        case globalStatus = "GlobalStatus"
        case securityOKFlag = "SecurityOKFlag"
        case pedOKFlag = "PEDOKFlag"
        case cardReaderOKFlag = "CardReaderOKFlag"
        case printerStatus = "PrinterStatus"
        case communicationOKFlag = "CommunicationOKFlag"
        case cashHandlingDevice = "CashHandlingDevice"
        case fraudPreventionFlag = "FraudPreventionFlag"
    }
    
}
