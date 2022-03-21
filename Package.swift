// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TipTop",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "TipTop",
            targets: ["TipTop"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "TipTop",
            dependencies: []),
        .testTarget(
            name: "TipTopTests",
            dependencies: ["TipTop"]),
    ]
)
