// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "StringUtility",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "StringUtility",
            targets: ["StringUtility"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "StringUtility",
            dependencies: []),
        .testTarget(
            name: "StringUtilityTests",
            dependencies: ["StringUtility"]),
    ]
)
