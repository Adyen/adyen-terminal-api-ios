//
//  AuthenticationMethod.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum AuthenticationMethod: String, Codable {
    case bypass = "Bypass"
    case manualVerification = "ManualVerification"
    case merchantAuthentication = "MerchantAuthentication"
    case offlinePIN = "OfflinePIN"
    case onlinePIN = "OnlinePIN"
    case paperSignature = "PaperSignature"
    case securedChannel = "SecuredChannel"
    case secureCertificate = "SecureCertificate"
    case secureNoCertificate = "SecureNoCertificate"
    case signatureCapture = "SignatureCapture"
    case unknownMethod = "UnknownMethod"
}
