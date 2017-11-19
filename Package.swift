// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Stencil",
  products: [
      // Products define the executables and libraries produced by a package, and make them visible to other packages.
      .library(
          name: "Stencil",
          targets: ["Stencil"]),
  ],
  dependencies: [
    .package(url: "https://github.com/bannzai/PathKit.git", from: Version(0, 8, 1)),
  ],
  targets: [
      // Targets are the basic building blocks of a package. A target can define a module or a test suite.
      // Targets can depend on other targets in this package, and on products in packages which this package depends on.
      .target(
         name: "Stencil",
         dependencies: ["PathKit"]),
  ]
)
