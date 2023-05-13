// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "FeatureKit",
  platforms: [
    .iOS(.v16),
    .watchOS(.v9)
  ],
  products: [
    .library(name: "CAKit", targets: ["CAKit"]),
    .library(name: "PhoneApp", targets: ["PhoneApp"]),
    .library(name: "WatchApp", targets: ["WatchApp"])
  ],
  dependencies: [
    // ComposableArchitecture
    .package(
      url: "https://github.com/pointfreeco/swift-composable-architecture",
      branch: "prerelease/1.0"
    ),
    // DependenciesAdditions
    .package(
      url: "https://github.com/tgrapperon/swift-dependencies-additions",
      from: "0.1.0"
    )
  ],
  targets: [
    .target(
      name: "CAKit",
      dependencies: [
        .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
        .product(name: "DependenciesAdditions", package: "swift-dependencies-additions")
      ]
    ),
    .target(
      name: "PhoneApp",
      dependencies: [
        "CAKit"
      ]
    ),
    .target(
      name: "WatchApp",
      dependencies: [
        "CAKit"
      ]
    )
  ]
)
