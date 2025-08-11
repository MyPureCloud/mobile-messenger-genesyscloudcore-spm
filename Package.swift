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
            url: "https://genesysdx.jfrog.io/artifactory/genesys-cloud-ios.prod/GenesysCloudCore/GenesysCloudCore_version_t1.15.0_commit_373680e85fda73d910c6cbf035c08b39d92c9cd6.zip",
            checksum: "354fe433b0ff0f804580b97e75226a77a70a70dc58cb675cbf7e0a5a4067616a"
        ),
        .testTarget(name: "PackageTests", dependencies: [
            "GenesysCloudCore"
        ])
    ]
)
