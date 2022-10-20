//
//  AES.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation
import CommonCrypto

/// Performs an AES encryption or decryption in CBC mode using PKCS#7 padding.
///
/// - Parameters:
///   - operation: The operation to perform.
///   - input: The data to encrypt or decrypt.
///   - key: The key material to use.
///   - initializationVector: The initialization vector to use. Must be equal in length to an AES128 block size.
/// - Returns: The result of the operation.
/// - Throws: ``AESError/operationError(status:)`` if the operation was not successful.
/// - Throws: ``AESError/invalidKeySize`` if the provided `key` size is not 256 bits.
/// - Throws: ``AESError/invalidInitializationVectorSize`` if the provided `initializationVector` size is not 128 bits.
public func aes(
    _ operation: AESOperation,
    input: Data,
    key: Data,
    initializationVector: Data
) throws -> Data {
    
    guard key.count == kCCKeySizeAES256 else {
        throw AESError.invalidKeySize
    }
    
    guard initializationVector.count == kCCBlockSizeAES128 else {
        throw AESError.invalidInitializationVectorSize
    }
    
    var outputLength = operation.outputLength(forInputLength: input.count)
    var outputBytes: [UInt8] = .init(repeating: 0, count: outputLength)
    
    let status = CCCrypt(
        operation.ccOperation,
        CCAlgorithm(kCCAlgorithmAES),
        CCOptions(kCCOptionPKCS7Padding),
        key.bytes,
        key.count,
        initializationVector.bytes,
        input.bytes,
        input.count,
        &outputBytes,
        outputLength,
        &outputLength
    )
    
    guard status == kCCSuccess else {
        throw AESError.operationError(status: status)
    }
    
    return Data(outputBytes.prefix(upTo: outputLength))
}

/// The operation to perform.
public enum AESOperation {
    
    /// Indicates an encrypt operation.
    case encrypt
    
    /// Indicates a decrypt operation.
    case decrypt
    
    fileprivate var ccOperation: CCOperation {
        switch self {
        case .encrypt:
            return CCOperation(kCCEncrypt)
        case .decrypt:
            return CCOperation(kCCDecrypt)
        }
    }
    
    fileprivate func outputLength(forInputLength inputLength: Int) -> Int {
        switch self {
        case .encrypt:
            return inputLength + kCCBlockSizeAES128
        case .decrypt:
            return inputLength
        }
    }
}

/// An error that occurred during an AES operation.
public enum AESError: Error {
    
    /// The AES operation failed.
    case operationError(status: CCCryptorStatus)
    
    /// The key provided is not 256 bits long.
    case  invalidKeySize
    
    /// The initialization vector should be 128 bits long.
    case invalidInitializationVectorSize
    
}
