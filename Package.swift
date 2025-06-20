// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Promptly",
    platforms: [.macOS(.v14)],
    products: [
        .executable(name: "promptly", targets: ["Promptly"]),
        .library(
            name: "PromptlyKit",
            targets: ["PromptlyKit"]
        )
    ],
    dependencies: [.package(url: "https://github.com/apple/swift-argument-parser", from: "1.2.0")],
    targets: [
        .executableTarget(
            name: "Promptly",
            dependencies: [
                "PromptlyKit",
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]
        ),
        .target(
            name: "PromptlyKit",
            dependencies: []
        )
    ],
    swiftLanguageModes: [.v6]
)
