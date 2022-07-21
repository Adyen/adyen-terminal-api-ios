# Adyen Terminal API for iOS

**TerminalAPIKit** for iOS helps with integrating [Terminal API](https://docs.adyen.com/point-of-sale/terminal-api-fundamentals) into your iOS app by providing the necessary models for creating `SaletoPOIRequest` and `SaletoPOIResponse`.

## Installation

TerminalAPIKit for iOS is available through [Swift Package Manager](https://swift.org/package-manager/).

### Swift Package Manager

1. Follow Apple's [Adding Package Dependencies to Your App](
https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app
) guide on how to add a Swift Package dependency.
2. Use `https://github.com/Adyen/adyen-networking-ios` as the repository URL.
3. Specify the version to be at least `1.0.0`.

## Usage

### Creating requests
To create a `SaleToPOIRequest` do the following:
1. Create an instance of `MessageHeader`, representing the [MessageHeader](https://docs.adyen.com/point-of-sale/terminal-api-reference#comadyennexomessageheader)
```swift
    let header = MessageHeader(
        protocolVersion: "3.0",
        messageClass: .service,
        messageCategory: .payment,
        messageType: .request,
        serviceIdentifier: "YOUR_SERVICE_IDENTIFIER",
        saleIdentifier: "YOUR_SERVICE_IDENTIFIER",
        poiIdentifier: "YOUR_POI_IDENTIFIER"
    )
```
2. Create an instance of `PaymentTransaction`, repesenting the the [PaymentRequest](https://docs.adyen.com/point-of-sale/terminal-api-reference#comadyennexopaymentrequest)
```swift
    let saleData = SaleData(
        saleTransactionIdentifier:
            TransactionIdentifier(
                transactionIdentifier: "YOUR_TRANSACTION_IDENTIFIER",
                date: Date()
            )
    )
    
    let paymentTransaction = PaymentTransaction(
        amounts: Amounts(
            currency: "TRANSACTION_CURRENCY",
            requestedAmount: TRANSACTION_AMOUNT
        )
    )
    
    let paymentRequest = PaymentRequest(
        saleData: saleData,
        paymentTransaction: paymentTransaction
    )
```
3. Combine `header` and `paymentRequest` into an instance of `Message<PaymentRequest>` representing [SaleToPOIRequest](https://docs.adyen.com/point-of-sale/terminal-api-fundamentals#requests).
```swift
    let message = Message(header: header, body: paymentRequest)
```
4. Encode the `message` to JSON and send it to the appropriate [endpoint](https://docs.adyen.com/point-of-sale/terminal-api-fundamentals#endpoints). TerminalAPIKit provides a `Coder` class to help with the JSON encoding and decoding.
```
    let jsonData = try Coder.encode(message)
```

### Receiving responses

Once you have obtained a response from one of the [endpoints](https://docs.adyen.com/point-of-sale/terminal-api-fundamentals#endpoints), decode it from `Data` as follows:
```swift
    let message = try Coder.decode(Message<PaymentResponse>.self, from: response)
```
The message object has a type of `Message<PaymentResponse` that represents [SaleToPOIResponse]`https://docs.adyen.com/point-of-sale/terminal-api-fundamentals#responses`.The `header` and `body` properties of the `message` represent [MessageHeader](https://docs.adyen.com/point-of-sale/terminal-api-reference#comadyennexomessageheader) and [PaymentResponse](https://docs.adyen.com/point-of-sale/terminal-api-reference#comadyennexopaymentresponse) respectively.

## Requirements

- iOS 13.0+
- Xcode 13.4+
- Swift 5.6

## Support

If you have a feature request, or spotted a bug or a technical problem, create a GitHub issue. For other questions, contact our [support team](https://support.adyen.com/hc/en-us/requests/new?ticket_form_id=360000705420).

## Contributing
We strongly encourage you to join us in contributing to this repository so everyone can benefit from it:
* New features and functionality
* Resolved bug fixes and issues
* Any general improvements


Read our [**contribution guidelines**](CONTRIBUTING.md) to find out how.

## License

This repository is open source and available under the MIT license. For more information, see the LICENSE file.
