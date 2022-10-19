//
//  HMACTests.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import XCTest
@testable import TerminalAPIKit

class HMACTests: XCTestCase {
    
    func testHMAC() {
        let input = "Hello World".data(using: .utf8)!
        let key = "SampleKey".data(using: .utf8)!
        let signature = hmac(for: input, key: key)
        XCTAssertEqual(signature.base64EncodedString(), "D/Gv6g3/EiJ+ZyH8dYPBT1Ovrh0vRwViMzSQbGgEFFk=")
    }
    
}
