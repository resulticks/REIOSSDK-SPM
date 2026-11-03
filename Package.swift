// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "REIOSSDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "REIOSSDK",
            targets: ["REIOSSDK", "REIOSSDKTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/socketio/socket.io-client-swift", .upToNextMinor(from: "16.1.0"))
    ],
    targets: [
        .binaryTarget(
            name: "REIOSSDK",
            path: "REIOSSDK.xcframework"
        ),
        .target(
            name: "REIOSSDKTarget",
            dependencies: [
                .target(name: "REIOSSDK"),
                .product(name: "SocketIO", package: "socket.io-client-swift")
            ],
            path: "Sources/REIOSSDKTarget"
        )
    ]
)
