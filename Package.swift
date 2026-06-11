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
            url: "https://github.com/MyPureCloud/mobile-messenger-ios-sdk/releases/download/v1.16.1/GenesysCloudCore.zip",
            checksum: "d5151370d540664444a375105f8a824effe2d7c8e8bb869eefac54e8b4bc71cf"
        ),
        .testTarget(name: "PackageTests", dependencies: [
            "GenesysCloudCore"
        ])
    ]
)
