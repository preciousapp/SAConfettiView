// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SAConfettiView",
    platforms: [
        .iOS(.v9) // Specify minimum iOS version
    ],
    products: [
        .library(
            name: "SAConfettiView",
            targets: ["SAConfettiView"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SAConfettiView",
            dependencies: [],
            path: "Pod/Classes",
            resources: [
                // Process assets for the main target
                .process("../Assets")
            ]
        ),
        // Create a separate target that matches the exact bundle name your code looks for
        .target(
            name: "SAConfettiView.bundle",
            path: "Pod/Assets",
            resources: [
                .process(".")
            ]
        )
    ]
)

