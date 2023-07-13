// swift-tools-version:5.3
// Bu satırda, Swift sürümünü belirtmelisiniz.

import PackageDescription

let package = Package(
    name: "AMRSDK",
    platforms: [
        .iOS(.v9) // veya projenin gereksinimlerine göre değiştirin
    ],
    products: [
        .library(
            name: "AMRSDK",
            targets: ["AMRSDKTarget"]
        )
    ],
    dependencies: [
        //        .package(url: "https://github.com/tahatosunn/KOKTEYL-LOG-SDK.git", from: "1.1.1"),
        //        .package(url: "https://github.com/admost/AdmostFairAds.git", from: "1.3.0")
    ],
    targets: [
        .target(
            name: "AMRSDKTarget",
            dependencies: [
                .target(name: "AMRSDK"),
                .target(name: "AMRAdapterAFA"),
                .target(name: "KKLog")
            ],
            path: "",
            resources: [
                .process("AMRSDK/AMRResources.bundle")
            ]
        ),
        .binaryTarget(name: "AMRSDK", path:"AMRSDK/AMRSDK.xcframework"),
        .binaryTarget(name: "KKLog", path:"KKLog.xcframework"),
        .binaryTarget(name: "AMRAdapterAFA", path: "AFA/AMRAdapterAFA.xcframework"),
    ]
)
