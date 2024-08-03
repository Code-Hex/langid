// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "langid",
  platforms: [
    .macOS(.v14)
  ],
  dependencies: [
    .package(url: "https://github.com/apple/swift-argument-parser", from: "1.5.0")
  ],
  targets: [
    .executableTarget(
      name: "langid",
      dependencies: [
        .product(name: "ArgumentParser", package: "swift-argument-parser")
      ])
  ]
)
