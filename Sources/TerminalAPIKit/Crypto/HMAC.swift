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
    if #available(iOS 13.0, *) {
        let hmac = HMAC<SHA256>.authenticationCode(for: input, using: SymmetricKey(data: key))
        return Data(hmac)
    } else {
        enum CryptoAlgorithm {
            case MD5, SHA1, SHA224, SHA256, SHA384, SHA512

            var HMACAlgorithm: CCHmacAlgorithm {
                var result: Int = 0
                switch self {
                case .MD5:      result = kCCHmacAlgMD5
                case .SHA1:     result = kCCHmacAlgSHA1
                case .SHA224:   result = kCCHmacAlgSHA224
                case .SHA256:   result = kCCHmacAlgSHA256
                case .SHA384:   result = kCCHmacAlgSHA384
                case .SHA512:   result = kCCHmacAlgSHA512
                }
                return CCHmacAlgorithm(result)
            }

            var digestLength: Int {
                var result: Int32 = 0
                switch self {
                case .MD5:      result = CC_MD5_DIGEST_LENGTH
                case .SHA1:     result = CC_SHA1_DIGEST_LENGTH
                case .SHA224:   result = CC_SHA224_DIGEST_LENGTH
                case .SHA256:   result = CC_SHA256_DIGEST_LENGTH
                case .SHA384:   result = CC_SHA384_DIGEST_LENGTH
                case .SHA512:   result = CC_SHA512_DIGEST_LENGTH
                }
                return Int(result)
            }
        }
        
        let algorithm = CryptoAlgorithm.SHA256
        
        let inputString = String(data: key, encoding: String.Encoding.utf8)!
        let keyString = String(data: key, encoding: String.Encoding.utf8)!
        
        let str = inputString.cString(using: String.Encoding.utf8)
        let strLen = Int(inputString.lengthOfBytes(using: String.Encoding.utf8))
        let digestLen = algorithm.digestLength
        let result = UnsafeMutablePointer<CUnsignedChar>.allocate(capacity: digestLen)
        let keyStr = keyString.cString(using: String.Encoding.utf8)
        let keyLen = Int(keyString.lengthOfBytes(using: String.Encoding.utf8))

        CCHmac(algorithm.HMACAlgorithm, keyStr!, keyLen, str!, strLen, result)

        let digest = Data(bytes: result, count: digestLen)

        result.deallocate()

        return digest

    }
}
