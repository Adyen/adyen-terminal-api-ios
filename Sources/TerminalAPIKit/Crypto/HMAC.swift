//
//  HMAC.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation
import CommonCrypto
import CryptoKit

/// Calculates a SHA256 HMAC for the given data and key.
///
/// - Parameters:
///   - input: The input for which to calculate the HMAC.
///   - key: The key to use when calculating the HMAC.
/// - Returns: The HMAC for the given data and key.
public func hmac(for input: Data, key: Data) -> Data {
    let hmac = HMAC<SHA256>.authenticationCode(for: input, using: SymmetricKey(data: key))
    return Data(hmac)
}
