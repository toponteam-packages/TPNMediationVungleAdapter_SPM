// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TPNMediationVungleAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TPNMediationVungleAdapter",
            targets: ["TPNMediationVungleAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/toponteam-packages/TPNiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", exact: "7.7.6")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkVungleAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkVungleAdapter/7.7.6.2.0/AnyThinkVungleAdapter-7.7.6.2.0.zip",
            checksum: "fb8368a9840b55a08e1ddc2bf3dff416fc1a379ab099fa6416d7ac0bcf589209"
        ),
        .target(
            name: "TPNMediationVungleAdapterTarget",
            dependencies: [
                "AnyThinkVungleAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM"),
                .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager")
            ],
            path: "Sources/TPNMediationVungleAdapterTarget"
        )
    ]
)
