# Adyen Terminal API for iOS

**TerminalAPIKit** for iOS helps with integrating Adyen's [Terminal API](https://docs.adyen.com/point-of-sale/terminal-api) into your iOS POS app. The kit provides the models to create a Terminal API `SaletoPOIRequest`, and to decode the received `SaletoPOIResponse`.

## Install TerminalAPIKit
TerminalAPIKit for iOS is available through [Swift Package Manager](https://swift.org/package-manager/). 

To install the kit:

1. In your Xcode project, go to **File** > **Swift Packages** > **Add Package Dependency**.
1. Enter `https://github.com/Adyen/adyen-terminal-api-ios` as the repository URL.
2. Specify the version to be at least `1.0.0`.

For detailed instructions see [Adding Package Dependencies to Your App](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app).

## Use TerminalAPIKit
The next sections describe how to create a request and how to decode the response.

### Create a request
To create a Terminal API `SaleToPOIRequest` for making a payment:

1. Create an instance of `MessageHeader`, representing the [MessageHeader](https://docs.adyen.com/point-of-sale/terminal-api/terminal-api-reference#comadyennexomessageheader) of your Terminal API request.
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
2. Create an instance of `PaymentTransaction`, representing the body of your Terminal API [PaymentRequest](https://docs.adyen.com/point-of-sale/terminal-api/terminal-api-reference#comadyennexopaymentrequest)
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
3. Combine `header` and `paymentRequest` into an instance of `Message<PaymentRequest>`, representing the [SaleToPOIRequest](https://docs.adyen.com/point-of-sale/make-a-payment#make-a-payment) to send.
   ```swift
       let message = Message(header: header, body: paymentRequest)
   ```
4. Encode the `message` to JSON. 
   TerminalAPIKit provides a `Coder` class to help with the JSON encoding and decoding.
   ```swift
       let jsonData = try Coder.encode(message)
   ```
5. Send the JSON message to the appropriate [endpoint](https://docs.adyen.com/point-of-sale/terminal-api#endpoints). 

### Decode the response
You'll receive a Terminal API response in JSON format from the [endpoint](https://docs.adyen.com/point-of-sale/terminal-apis#endpoints) that you sent your request to.

To handle the response:
 
1. Decode from `Data` as follows:
   ```swift
       let message = try Coder.decode(Message<PaymentResponse>.self, from: response)
   ```
2. After decoding, note the following:
   - The message object has a type of `Message<PaymentResponse>`, representing the Terminal API [SaleToPOIResponse](https://docs.adyen.com/point-of-sale/terminal-api-fundamentals#responses). 
   - The `header` and `body` properties of the `message` represent the [MessageHeader](https://docs.adyen.com/point-of-sale/terminal-api/terminal-api-reference#comadyennexomessageheader) and [PaymentResponse](https://docs.adyen.com/point-of-sale/terminal-api/terminal-api-reference#comadyennexopaymentresponse) body.

## Requirements
To use TerminalAPIKit for iOS, you need:
- iOS 13.0 or later
- Xcode 13.4 or later
- Swift 5.6

## Support
If you have a feature request, or spotted a bug or a technical problem, create a GitHub issue. For other questions, contact our [support team](https://support.adyen.com/hc/en-us/requests/new?ticket_form_id=360000705420).

## Contributing
We strongly encourage you to join us in contributing to this repository so everyone can benefit from:
* New features and functionality
* Resolved bug fixes and issues
* Any general improvements

Read our [**contribution guidelines**](CONTRIBUTING.md) to find out how.

## License
This repository is open source and available under the MIT license. For more information, see the LICENSE file.
