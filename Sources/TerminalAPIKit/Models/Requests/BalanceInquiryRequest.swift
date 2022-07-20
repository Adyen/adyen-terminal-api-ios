//
//  BalanceInquiryRequest.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

/// Content of the Balance Inquiry Request message.
/// It conveys Information related to the account for which a Balance Inquiry is requested
public final class BalanceInquiryRequest: Request {
    
    /// The type of the response returned for this request.
    public typealias ResponseType = BalanceInquiryResponse
    
    /// The key used to encode or decode the receiver in a message envelope.
    public static let codingKey = "BalanceInquiryRequest"
    
    /// The category of the message in which this request is sent.
    public static let messageCategory = MessageCategory.balanceInquiry
    
    /// Data related to the account pointed by the payment card
    public let paymentAccountReq: PaymentAccountReq?
    
    /// Data related to a requested Loyalty program or account.
    public let loyaltyAccountReq: LoyaltyAccountReq?
    
    /// Initializes the BalanceInquiryRequest.
    ///
    /// - Parameter paymentAccountReq: Data related to the account pointed by the payment card
    /// - Parameter loyaltyAccountReq: Data related to a requested Loyalty program or account.
    public init(paymentAccountReq: PaymentAccountReq? = nil, loyaltyAccountReq: LoyaltyAccountReq? = nil) {
        self.paymentAccountReq = paymentAccountReq
        self.loyaltyAccountReq = loyaltyAccountReq
    }
    
    internal enum CodingKeys: String, CodingKey {
        case paymentAccountReq = "PaymentAccountReq"
        case loyaltyAccountReq = "LoyaltyAccountReq"
    }
    
}
