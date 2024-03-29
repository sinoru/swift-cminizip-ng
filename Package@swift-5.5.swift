// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

var applePlatforms: [Platform] {
    return [.iOS, .macOS, .macCatalyst, .tvOS, .watchOS]
}

var otherPlatforms: [Platform] {
    return [.android, .linux, .wasi, .windows]
}

var cSettings: [CSetting] {
    [
        .define("HAVE_STDINT_H"),
        .define("HAVE_INTTYPES_H"),
        .define("__USE_LARGEFILE64"),
        .define("_LARGEFILE64_SOURCE"),
        .define("HAVE_LIBCOMP", .when(platforms: applePlatforms)),
        .define("HAVE_ZLIB", .when(platforms: otherPlatforms)),
        .define("ZLIB_COMPAT"),
        .define("HAVE_BZIP2"),
        .define("HAVE_PKCRYPT"),
        .define("HAVE_WZAES"),
        .define("HAVE_ICONV"),
    ]
}

var linkerSettings: [LinkerSetting] {
    [
        .linkedLibrary("compression", .when(platforms: applePlatforms)),
        .linkedLibrary("z", .when(platforms: otherPlatforms)),
        .linkedLibrary("bz2"),
        .linkedFramework("CoreFoundation", .when(platforms: applePlatforms)),
        .linkedFramework("Security", .when(platforms: applePlatforms)),
        .linkedLibrary("ssl", .when(platforms: otherPlatforms)),
        .linkedLibrary("crypto", .when(platforms: otherPlatforms)),
        .linkedLibrary("iconv", .when(platforms: applePlatforms)),
    ]
}

let package = Package(
    name: "swift-cminizip-ng",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Cminizip-ng",
            targets: ["Cminizip-ng"]),
        .executable(
            name: "minizip",
            targets: ["minizip"]),
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
            cSettings: cSettings,
            linkerSettings: linkerSettings),
        .executableTarget(
            name: "minizip",
            dependencies: ["Cminizip-ng"],
            cSettings: cSettings,
            linkerSettings: linkerSettings),
    ]
)
