// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "ScrollUI",
    platforms: [
        .iOS(.v15),
        .macOS(.v11)
    ],
    products: [
        .library(name: "ScrollUI", targets: ["ScrollUI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/siteline/SwiftUI-Introspect", "1.0.0"..<"2.0.0")
    ],
    targets: [
        .target(
            name: "ScrollUI",
            dependencies: [
                .product(name: "SwiftUIIntrospect", package: "SwiftUI-Introspect")
            ]),
    ]
)
