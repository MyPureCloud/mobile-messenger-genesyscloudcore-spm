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
            url: "https://github.com/MyPureCloud/mobile-messenger-ios-sdk/releases/download/v2.6.0/GenesysCloudCore.zip",
            checksum: "7af3720b7263f7f5dba0aeeb6693d8039d9f6874e25cf2234cd40a06a8be42ca"
        ),
        .testTarget(name: "PackageTests", dependencies: [
            "GenesysCloudCore"
        ])
    ]
)
