// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "YandexMapsMobile",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "YandexMapsMobile",
            targets: ["YandexMapsMobile"]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "YandexMapsMobileLiteSPM",
            url: "https://github.com/crownvic/YandexMapsMobileLiteSPM/releases/download/4.1.0/YandexMapsMobile-4.1.0-lite.framework.zip",
            checksum: "28310d0c2661625b8137e41b2327f751c3a25d8aa389e6772990a73e39e6485c"
        ),
  	.target(
            name: "YandexMapsMobile",
            dependencies: [
                .target(name: "YandexMapsMobileLiteSPM"),
            ],
            linkerSettings: [
                .linkedFramework("CoreLocation"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("SystemConfiguration"),
                .linkedLibrary("c++"),
                .unsafeFlags(["-ObjC"]),
            ]),
    ]
)
