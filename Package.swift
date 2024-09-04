// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "MPVKit",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [
        .library(
            name: "MPVKit",
            targets: ["_MPVKit"]
        ),
        .library(
            name: "MPVKit-GPL",
            targets: ["_MPVKit-GPL"]
        ),
    ],
    targets: [
        .target(
            name: "_MPVKit",
            dependencies: [
                "Libmpv", "_FFmpeg", "Libuchardet", "Libbluray",
                .target(name: "Libluajit", condition: .when(platforms: [.macOS])),
            ],
            path: "Sources/_MPVKit",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreAudio"),
            ]
        ),
        .target(
            name: "_FFmpeg",
            dependencies: [
                "Libavcodec", "Libavfilter", "Libavformat", "Libavutil", "Libswresample", "Libswscale",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "gmp", "nettle", "hogweed", "gnutls", "Libdav1d"
            ],
            path: "Sources/_FFmpeg",
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("expat"),
                .linkedLibrary("resolv"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
            ]
        ),
        .target(
            name: "_MPVKit-GPL",
            dependencies: [
                "Libmpv-GPL", "_FFmpeg-GPL", "Libuchardet", "Libbluray",
                .target(name: "Libluajit", condition: .when(platforms: [.macOS])),
            ],
            path: "Sources/_MPVKit-GPL",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreAudio"),
            ]
        ),
        .target(
            name: "_FFmpeg-GPL",
            dependencies: [
                "Libavcodec-GPL", "Libavfilter-GPL", "Libavformat-GPL", "Libavutil-GPL", "Libswresample-GPL", "Libswscale-GPL",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "Libsmbclient", "gmp", "nettle", "hogweed", "gnutls", "Libdav1d"
            ],
            path: "Sources/_FFmpeg-GPL",
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("expat"),
                .linkedLibrary("resolv"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
            ]
        ),

        .binaryTarget(
            name: "Libmpv-GPL",
            path: "Sources/XCFrameworks/Libmpv-GPL.xcframework"
        ),
        .binaryTarget(
            name: "Libavcodec-GPL",
            path: "Sources/XCFrameworks/Libavcodec-GPL.xcframework"
        ),
        .binaryTarget(
            name: "Libavformat-GPL",
            path: "Sources/XCFrameworks/Libavformat-GPL.xcframework"
        ),
        .binaryTarget(
            name: "Libavfilter-GPL",
            path: "Sources/XCFrameworks/Libavfilter-GPL.xcframework"
        ),
        .binaryTarget(
            name: "Libavutil-GPL",
            path: "Sources/XCFrameworks/Libavutil-GPL.xcframework"
        ),
        .binaryTarget(
            name: "Libswresample-GPL",
            path: "Sources/XCFrameworks/Libswresample-GPL.xcframework"
        ),
        .binaryTarget(
            name: "Libswscale-GPL",
            path: "Sources/XCFrameworks/Libswscale-GPL.xcframework"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "Libcrypto",
            path: "Sources/XCFrameworks/Libcrypto.xcframework"
        ),
        .binaryTarget(
            name: "Libssl",
            path: "Sources/XCFrameworks/Libssl.xcframework"
        ),

        .binaryTarget(
            name: "gmp",
            path: "Sources/XCFrameworks/gmp.xcframework"
        ),

        .binaryTarget(
            name: "nettle",
            path: "Sources/XCFrameworks/nettle.xcframework"
        ),
        .binaryTarget(
            name: "hogweed",
            path: "Sources/XCFrameworks/hogweed.xcframework"
        ),

        .binaryTarget(
            name: "gnutls",
            path: "Sources/XCFrameworks/gnutls.xcframework"
        ),

        .binaryTarget(
            name: "Libunibreak",
            path: "Sources/XCFrameworks/Libunibreak.xcframework"
        ),

        .binaryTarget(
            name: "Libfreetype",
            path: "Sources/XCFrameworks/Libfreetype.xcframework"
        ),

        .binaryTarget(
            name: "Libfribidi",
            path: "Sources/XCFrameworks/Libfribidi.xcframework"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            path: "Sources/XCFrameworks/Libharfbuzz.xcframework"
        ),

        .binaryTarget(
            name: "Libass",
            path: "Sources/XCFrameworks/Libass.xcframework"
        ),

        .binaryTarget(
            name: "Libsmbclient",
            path: "Sources/XCFrameworks/Libsmbclient.xcframework"
        ),

        .binaryTarget(
            name: "Libdovi",
            path: "Sources/XCFrameworks/Libdovi.xcframework"
        ),

        .binaryTarget(
            name: "MoltenVK",
            path: "Sources/XCFrameworks/MoltenVK.xcframework"
        ),

        .binaryTarget(
            name: "Libshaderc_combined",
            path: "Sources/XCFrameworks/Libshaderc_combined.xcframework"
        ),

        .binaryTarget(
            name: "lcms2",
            path: "Sources/XCFrameworks/lcms2.xcframework"
        ),

        .binaryTarget(
            name: "Libplacebo",
            path: "Sources/XCFrameworks/Libplacebo.xcframework"
        ),

        .binaryTarget(
            name: "Libdav1d",
            path: "Sources/XCFrameworks/Libdav1d.xcframework"
        ),

        .binaryTarget(
            name: "Libavcodec",
            path: "Sources/XCFrameworks/Libavcodec.xcframework"
        ),
        .binaryTarget(
            name: "Libavformat",
            path: "Sources/XCFrameworks/Libavformat.xcframework"
        ),
        .binaryTarget(
            name: "Libavfilter",
            path: "Sources/XCFrameworks/Libavfilter.xcframework"
        ),
        .binaryTarget(
            name: "Libavutil",
            path: "Sources/XCFrameworks/Libavutil.xcframework"
        ),
        .binaryTarget(
            name: "Libswresample",
            path: "Sources/XCFrameworks/Libswresample.xcframework"
        ),
        .binaryTarget(
            name: "Libswscale",
            path: "Sources/XCFrameworks/Libswscale.xcframework"
        ),

        .binaryTarget(
            name: "Libuchardet",
            path: "Sources/XCFrameworks/Libuchardet.xcframework"
        ),

        .binaryTarget(
            name: "Libluajit",
            path: "Sources/XCFrameworks/Libluajit.xcframework"
        ),

        .binaryTarget(
            name: "Libbluray",
            path: "Sources/XCFrameworks/Libbluray.xcframework"
        ),

        .binaryTarget(
            name: "Libmpv",
            path: "Sources/XCFrameworks/Libmpv.xcframework"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
