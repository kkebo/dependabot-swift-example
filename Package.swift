// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "dependabot-swift-example",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "dependabot-swift-example",
            targets: ["dependabot_swift_example"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "dependabot_swift_example",
            swiftSettings: [
                .enableUpcomingFeature("ApproachableConcurrency"),
            ],
        ),
        .testTarget(
            name: "dependabot_swift_exampleTests",
            dependencies: ["dependabot_swift_example"],
            swiftSettings: [
                .enableUpcomingFeature("ApproachableConcurrency"),
            ],
        ),
    ]
)
