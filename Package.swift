// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "AlamofireObjectMapper",
    platforms: [
        .iOS("10.0"),
        .tvOS("10.0"),
        .watchOS("3.0"),
        .macOS("10.12")
    ],
    products: [
        .library(
            name: "AlamofireObjectMapper",
            targets: ["AlamofireObjectMapper"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.1.0"),
        .package(url: "https://github.com/ksloginov/ObjectMapper.git", .branch("master"))
    ],
    targets: [
        .target(
            name: "AlamofireObjectMapper",
            dependencies: [
            "Alamofire",
            "ObjectMapper"
            ],
            path: "AlamofireObjectMapper")
    ]
)
