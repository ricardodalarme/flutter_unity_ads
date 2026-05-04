// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "unity_ads_plugin",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "unity-ads-plugin",
            targets: ["unity_ads_plugin"]
        )
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "unity_ads_plugin",
            dependencies: [
                "UnityAds",
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ]
        ),
        .binaryTarget(
            name: "UnityAds",
            url: "https://github.com/Unity-Technologies/unity-ads-ios/releases/download/4.17.0/UnityAds.zip",
            checksum: "8a40e6c779353e4ead87d4d635480cdae46f0b708763460dc002103e35ce8ba7"
        )
    ]
)
