//
//  BalanceInquiryResponse.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Balance Inquiry Response message.
/// It conveys the balance and the identification of the associated payment, loyalty or stored value account.
public final class BalanceInquiryResponse: Response {
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "BalanceInquiryResponse"
    
    /// Result of a message request processing.
    public let response: MessageResponse
    
    /// Data related to the result of a Balance Inquiry request.
    public let paymentAccountStatus: PaymentAccountStatus?
    
    /// Data related to the result of a loyalty Balance Inquiry.
    public let loyaltyAccountStatus: LoyaltyAccountStatus?
    
    /// Undocumented.
    public let paymentReceipt: [PaymentReceipt]?
    
    /// Initializes the BalanceInquiryResponse.
    ///
    /// - Parameter response: Result of a message request processing.
    /// - Parameter paymentAccountStatus: Data related to the result of a Balance Inquiry request.
    /// - Parameter loyaltyAccountStatus: Data related to the result of a loyalty Balance Inquiry.
    /// - Parameter paymentReceipt: Undocumented.
    internal init(response: MessageResponse, paymentAccountStatus: PaymentAccountStatus? = nil, loyaltyAccountStatus: LoyaltyAccountStatus? = nil, paymentReceipt: [PaymentReceipt]? = nil) {
        self.response = response
        self.paymentAccountStatus = paymentAccountStatus
        self.loyaltyAccountStatus = loyaltyAccountStatus
        self.paymentReceipt = paymentReceipt
    }
    
    internal enum CodingKeys: String, CodingKey {
        case response = "Response"
        case paymentAccountStatus = "PaymentAccountStatus"
        case loyaltyAccountStatus = "LoyaltyAccountStatus"
        case paymentReceipt = "PaymentReceipt"
    }
    
}
