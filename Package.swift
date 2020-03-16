// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ContactListModels",
    products: [
        .library(
            name: "ContactListModels",
            targets: ["ContactListModels"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "ContactListModels",
            dependencies: []),
        .testTarget(
            name: "ContactListModelsTests",
            dependencies: ["ContactListModels"]),
    ]
)
