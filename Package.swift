// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "DeviceID",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(
            name: "DeviceID",
            targets: ["DeviceID"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Square/Valet", from: "4.0.0"),
    ],
    targets: [
        .target(
            name: "DeviceID",
            dependencies: ["Valet"]),
        .testTarget(
            name: "DeviceIDTests",
            dependencies: ["DeviceID"]),
    ]
)
