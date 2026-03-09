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
            url: "https://genesysdx.jfrog.io/artifactory/genesys-cloud-ios.prod/GenesysCloudCore/GenesysCloudCore_version_2.0.0-rc8_commit_ce35f764c40611365fbb121fa5f9a713165df610.zip",
            checksum: "78e1b386ae4c975d528b810085894ab6a6328b4e9ce4bd423f59ea0aed61cf43"
        ),
        .testTarget(name: "PackageTests", dependencies: [
            "GenesysCloudCore"
        ])
    ]
)
