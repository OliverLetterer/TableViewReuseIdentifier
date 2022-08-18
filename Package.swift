// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TableViewReuseIdentifier",
    platforms: [
        .iOS(.v15),
        .tvOS(.v15),
    ],
    products: [
        .library(
            name: "TableViewReuseIdentifier",
            targets: ["TableViewReuseIdentifier"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "TableViewReuseIdentifier",
            dependencies: []
        ),
    ]
)
