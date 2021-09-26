// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PMSDomain",
    defaultLocalization: "ko",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "PMSDomain",
            targets: ["PMSDomain"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Moya/Moya", from: "14.0.0"),
        .package(url: "https://github.com/PMS-Frameworks/PMSRxModule", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "PMSDomain",
            dependencies: [
                .product(name: "Moya", package: "Moya", condition: .when(platforms: [.iOS])),
                "PMSRxModule",
            ],
            path: "PMSDomain/Classes")
    ]
)
