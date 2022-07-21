//
//  MessageError.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// An error that was received from a Terminal API device after a message was sent.
internal final class MessageError: Codable {
    
    /// An array of errors that occurred.
    internal let errors: [String]
    
    /// An array of warnings that occurred.
    internal let warnings: [String]?
    
    // MARK: - Coding
    
    internal init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.errors = try container.decode([String].self, forKey: .errors)
        self.warnings = try container.decodeIfPresent([String].self, forKey: .warnings)
    }
    
    private enum CodingKeys: String, CodingKey {
        case errors
        case warnings
    }
    
}

extension MessageError: LocalizedError {
    
    var errorDescription: String? {
        let components = [errorsDescription, warningsDescription].compactMap { $0 }
        guard !components.isEmpty else {
            return "Unknown Terminal API error."
        }
        
        return components.joined(separator: "\n\n")
    }
    
    private var errorsDescription: String? {
        if errors.isEmpty {
            return nil
        }
        
        if errors.count == 1 {
            return "Error:\n" + errors[0]
        }
        
        return "Errors:\n" + list(errors)
    }
    
    private var warningsDescription: String? {
        guard let warnings = warnings, !warnings.isEmpty else {
            return nil
        }
        
        if warnings.count == 1 {
            return "Warning: " + warnings[0]
        }
        
        return "Warnings:\n" + list(warnings)
    }
    
    private func list(_ components: [String]) -> String {
        components.map { "• " + $0 }.joined(separator: "\n")
    }
    
}
