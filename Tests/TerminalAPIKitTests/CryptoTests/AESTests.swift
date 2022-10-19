//
//  AESTests.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import XCTest
@testable import TerminalAPIKit

class AESTests: XCTestCase {
    
    func testAES() throws {
        let data = "Hello World".data(using: .utf8)!
        let key = Data(base64Encoded: "Pmb/KqqWuTq9zwSf5HUs7eSx7FQ6OJ4+V8Gt5OYVP6k=")!
        let initializationVector = Data(base64Encoded: "vhnUrtOYERl+ovwiRv70uA==")!
        
        let encryptedData = try aes(.encrypt, input: data, key: key, initializationVector: initializationVector)
        XCTAssertEqual(encryptedData.base64EncodedString(), "XSBQhlAvCuM+8RuWWOL8YQ==")
        XCTAssertEqual(encryptedData.count, 16)
        
        let decryptedData = try aes(.decrypt, input: encryptedData, key: key, initializationVector: initializationVector)
        XCTAssertEqual(data, decryptedData)
    }
    
}
