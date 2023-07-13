// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AMR-IOS-SDK",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AMR-IOS-SDK",
            targets: ["AMR-IOS-SDK"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AMR-IOS-SDK",
            dependencies: [
                .target(name: "AMRSDK"),
                .target(name: "AMRAdapterAFA"),
                .target(name: "KKLog")
            ],
            exclude: ["AMRSDK/AMRResources.bundle/TestSuite.storyboardc/Info.plist", "AMRSDK/AMRResources.bundle/Info.plist"],
            resources: [
                .copy("AMRSDK/AMRResources.bundle")
            ]),
        .binaryTarget(name: "AMRSDK", path:"AMRSDK/AMRSDK.xcframework"),
        .binaryTarget(name: "KKLog", path:"KKLog.xcframework"),
        .binaryTarget(name: "AMRAdapterAFA", path: "AFA/AMRAdapterAFA.xcframework"),
        .testTarget(
            name: "AMR-IOS-SDKTests",
            dependencies: ["AMR-IOS-SDK"]),
    ]
)
