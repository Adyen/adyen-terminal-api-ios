# Adyen Terminal API for iOS

**TerminalAPIKit** for iOS helps with integrating Adyen's [Terminal API](https://docs.adyen.com/point-of-sale/terminal-api) into your iOS POS app. The kit provides the models to create a Terminal API `SaletoPOIRequest`, and to decode the received `SaletoPOIResponse`. For local Terminal API integrations, the kit also helps with protecting local communications.

This package is intended to be used in the following scenarios:
- when integrating POS Mobile SDK.
- when integrating client-side with an Adyen terminal using local Terminal API.
- when integrating server-side with an Adyen terminal using cloud Terminal API.

## Install TerminalAPIKit
TerminalAPIKit for iOS is available through [Swift Package Manager](https://swift.org/package-manager/). 

To install the kit:

1. In your Xcode project, go to **File** > **Swift Packages** > **Add Package Dependency**.
1. Enter `https://github.com/Adyen/adyen-terminal-api-ios` as the repository URL.
2. Specify the version to be at least `1.0.0`.

For detailed instructions see [Adding Package Dependencies to Your App](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app).

## Create Terminal API requests
The next sections describe how to create a request and how to decode the response.

### Create a payment request
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
   
## Local Terminal API integration

If your integration uses local communications, you need to protect your integration against man-in-the-middle attacks, eavesdropping, and tampering. To protect communications, you need to:
- Validate the certificate of the payment terminal, to confirm your POS app is communicating directly with an Adyen-supplied terminal.
- Encrypt communications. This prevents intruders from reading the messages transmitted between the POS app and the terminal.
 
To help you with this, TerminalAPIKit provides helper functions to:
- Derive the encryption key from the [shared key set up in your Adyen Customer Area](https://docs.adyen.com/point-of-sale/choose-your-architecture/local#set-up-shared-key). 
- Encrypt and decrypt the messages passed between your terminal and your iOS or macOS POS application.

### Derive the encryption key
To derive the key used for encrypting and decrypting local communications between the terminal and your POS app:

1. Get the `identifier`, `passphrase`, and `version` of the shared key: <br>
   In the Adyen Customer Area, under **Point of sale**, go to the terminal settings for your merchant account or store. 
   Select **Integrations** and under **Terminal API** go to **Encryption key**. 
   To see the key identifier, passphrase, and version values, select **Decrypted**.

2. Derive the key, making sure to pass the values in string form exactly as they appear in the Customer Area.
   ```swift
   let encryptionKey = try EncryptionKey(
       identifier: "KEY_IDENTIFIER",
       passphrase: "KEY_PASSPHRASE",
       version: KEY_VERSION
   )
   ```
Once the key is derived, you are ready to encrypt your local communications.

### Encrypt and decrypt communications
1. Create your request as described above. For example, create a `Message<PaymentRequest>`.
2. Encrypt your request.
   ```swift
   let encryptionKey: EncryptionKey = // the key you derived earlier
   let request: Message<PaymentRequest> = // the payment request you created
   let encryptedMessage: Data = try request.encrypt(using: encryptionKey)
   ```
3. Send the `encryptedMessage` to the terminal.
4. When you receive the response from the terminal, decrypt the response.
   ```swift
   let key: EncryptionKey = // the key you derived earlier
   let response: Data = // the response you receive from the terminal
   let encryptedMessage: EncryptedMessage = try Coder.decode(EncryptedMessage.self, from: response)
   let decryptedMessage: Message<PaymentResponse> = try decrypt(PaymentResponse.self, using: key)
   ```

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
