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
            name: "YandexMapsMobile",
            url: "https://github.com/max270598/YandexMapsMobileZip/releases/download/2.0.0/YandexMapsMobile.xcframework.zip",
            checksum: "2af1813d655ac552f84fb3e733cbae8aec8428db69081289cae357278641efc8"
        ),
  	.target(
            name: "YandexMapsMobile",
            dependencies: [
                .target(name: "YandexMapsMobile"),
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
