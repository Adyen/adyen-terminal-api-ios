// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TerminalAPIKit",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "TerminalAPIKit",
            targets: ["TerminalAPIKit"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "TerminalAPIKit",
            dependencies: []),
        .testTarget(
            name: "TerminalAPIKitTests",
            dependencies: ["TerminalAPIKit"]),
    ]
)
