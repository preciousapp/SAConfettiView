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
            path: "Pod/Classes", // Source path relative to Package.swift
            resources: [
                // Asset path relative to target path (Pod/Classes)
                .process("../Assets") 
            ]
        )
    ]
)
