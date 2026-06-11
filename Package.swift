// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GenesysCloudCore",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "GenesysCloudCore",
            targets: ["GenesysCloudCore"]),
    ],
    targets: [
        .binaryTarget(
            name: "GenesysCloudCore",
            url: "https://github.com/MyPureCloud/mobile-messenger-ios-sdk/releases/download/v1.13.0/GenesysCloudCore.zip",
            checksum: "61fb4e1e7b0d8895cf7e68f823065c92c3ec3ca51e90c96db14987d4a884f51d"
        ),
        .testTarget(name: "PackageTests", dependencies: [
            "GenesysCloudCore"
        ])
    ]
)
