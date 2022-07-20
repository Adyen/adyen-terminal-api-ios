//
//  SoundRequest.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public final class SoundRequest: Request {
    
    /// The type of the response returned for this request.
    public typealias ResponseType = SoundResponse
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "SoundRequest"
    
    /// The category of the message in which this request is sent.
    public static let messageCategory = MessageCategory.sound
    
    /// Undocumented.
    public let responseMode: ResponseMode?
    
    /// Undocumented.
    public let soundAction: SoundAction
    
    /// Undocumented.
    public let soundVolume: Int?
    
    /// Undocumented.
    public let soundContent: SoundContent?
    
    /// Initializes the SoundRequest.
    ///
    /// - Parameter responseMode: Undocumented.
    /// - Parameter soundAction: Undocumented.
    /// - Parameter soundVolume: Undocumented.
    /// - Parameter soundContent: Undocumented.
    public init(responseMode: ResponseMode? = nil, soundAction: SoundAction, soundVolume: Int? = nil, soundContent: SoundContent? = nil) {
        self.responseMode = responseMode
        self.soundAction = soundAction
        self.soundVolume = soundVolume
        self.soundContent = soundContent
    }
    
    internal enum CodingKeys: String, CodingKey {
        case responseMode = "ResponseMode"
        case soundAction = "SoundAction"
        case soundVolume = "SoundVolume"
        case soundContent = "SoundContent"
    }
    
}
