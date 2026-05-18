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
            url: "https://genesysdx.jfrog.io/artifactory/genesys-cloud-ios.prod/GenesysCloudCore/GenesysCloudCore-2.2.0.zip",
            checksum: "13c2c87e607dff34db77496ae850246ff164662f38d97bdc8b82650f81424c83"
        ),
        .testTarget(name: "PackageTests", dependencies: [
            "GenesysCloudCore"
        ])
    ]
)
