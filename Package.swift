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
            targets: ["AMRSDK"]
        )
    ],
    dependencies: [
//        .package(url: "https://github.com/tahatosunn/KOKTEYL-LOG-SDK.git", from: "1.1.1"),
//        .package(url: "https://github.com/admost/AdmostFairAds.git", from: "1.3.0")
    ],
    targets: [
        .target(
            name: "AMRSDK",
            dependencies: [
//                "KokteylLog",
//                "AdmostFairAds"
            ],
            path: "AMRSDK",
            resources: [
                .process("AMRResources.bundle")
            ],
            cSettings: [
                .headerSearchPath("AMRSDK/include"),
                .unsafeFlags(["-ObjC", "-lc++"])
            ],
            linkerSettings: [
                .linkedLibrary("z")
            ]
        ),
//        .target(
//            name: "AMRAdapterAFA",
//            dependencies: [
//                "AMRSDK"
//            ],
//            path: "AFA",
//            resources: [
//                .process("AMRResources.bundle")
//            ]
//        )
    ]
)
