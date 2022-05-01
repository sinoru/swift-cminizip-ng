// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Cminizip-ng",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Cminizip-ng",
            targets: ["Cminizip-ng"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Cminizip-ng",
            cSettings: [
                .define("HAVE_STDINT_H"),
                .define("HAVE_INTTYPES_H"),
                .define("__USE_LARGEFILE64"),
                .define("_LARGEFILE64_SOURCE"),
                .define("HAVE_LIBCOMP", .when(platforms: [.iOS, .macOS, .tvOS, .watchOS])),
                .define("HAVE_ZLIB", .when(platforms: [.android, .linux])),
                .define("ZLIB_COMPAT"),
                .define("HAVE_BZIP2"),
                .define("HAVE_PKCRYPT"),
                .define("HAVE_WZAES"),
                .define("HAVE_ICONV"),
            ],
            linkerSettings: [
                .linkedLibrary("compression", .when(platforms: [.iOS, .macOS, .tvOS, .watchOS])),
                .linkedLibrary("z", .when(platforms: [.android, .linux])),
                .linkedLibrary("bz2"),
                .linkedFramework("CoreFoundation", .when(platforms: [.iOS, .macOS, .tvOS, .watchOS])),
                .linkedFramework("Security", .when(platforms: [.iOS, .macOS, .tvOS, .watchOS])),
                .linkedFramework("CommonCrypto", .when(platforms: [.iOS, .macOS, .tvOS, .watchOS])),
                .linkedLibrary("ssl", .when(platforms: [.android, .linux])),
                .linkedLibrary("iconv"),
            ]),
    ]
)
