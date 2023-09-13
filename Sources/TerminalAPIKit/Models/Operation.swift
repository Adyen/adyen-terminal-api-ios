//
//  Operation.swift
//  TerminalAPIKit
//
//  Copyright (c) 2023 Adyen N.V.
//

import Foundation

public final class Operation: Codable {

    /// The type of request after which the waiting screen shows
    public let type: OperationType
    
    /// For now, the Operation.Variant can only have WaitingScreen as value. This shows the waiting screen animation on the terminal after every request until you end the session.
    public let variant: OperationVariant
    
    /// Contains UI parameters related to the operation.
    public let userInterfaceData: UserInterfaceData
    
    /// Initializes the Operation.
    ///
    /// - Parameter type: The type of request after which the waiting screen shows.
    /// - Parameter variant: The variant of the operation.
    /// - Parameter userInterfaceData: Contains UI parameters related to the operation.
    public init(type: OperationType, variant: OperationVariant, userInterfaceData: UserInterfaceData) {
        self.type = type
        self.variant = variant
        self.userInterfaceData = userInterfaceData
    }
    
    internal enum CodingKeys: String, CodingKey {
        case type = "Type"
        case variant = "Variant"
        case userInterfaceData = "UserInterfaceData"
    }
}
