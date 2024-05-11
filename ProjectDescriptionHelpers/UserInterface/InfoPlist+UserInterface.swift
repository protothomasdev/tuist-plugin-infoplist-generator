//
//  InfoPlist+UserInterface.swift
//  ProjectDescriptionHelpers
//
//  Created by Thomas Meyer on 06.05.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    // MARK: - Main User Interface
    
    /// - Parameter values: The information about the app’s scene-based life-cycle support.
    ///
    /// The presence of this key indicates that the app supports scenes and doesn’t use an app delegate object to manage transitions to and from the foreground or background.
    ///
    /// Availability: iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest)
    static func UIApplicationSceneManifest(_ values: [ApplicationSceneManifestEntry]) -> InfoPlistEntry {
        InfoPlistEntry.dict(
            name: "Application Scene Manifest",
            key: "UIApplicationSceneManifest",
            childEntries: values,
            availabilities: .init(
                iOS: "13.0",
                iPadOS: "13.0",
                macCatalyst: "13.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: The preferred initial scene session role for your app.
    ///
    /// The system references this key to determine the preferred initial scene session role to create the first scene for your app. If you specify [UISceneSessionRoleImmersiveSpaceApplication](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiscenesessionroleimmersivespaceapplication) or [CPSceneSessionRoleImmersiveSpaceApplication](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/cpscenesessionroleimmersivespaceapplication), the system creates an immersive space scene which connects to your application at launch. To define the style that [UISceneSessionRoleImmersiveSpaceApplication](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiscenesessionroleimmersivespaceapplication) uses initially, use the [UISceneInitialImmersionStyle](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiscenesessionroleimmersivespaceapplication/uisceneinitialimmersionstyle) key.
    ///
    /// Availability: visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationpreferreddefaultscenesessionrole)
    static func UIApplicationPreferredDefaultSceneSessionRole(_ value: InfoPlistValue.UIApplicationPreferredDefaultSceneSessionRole) -> InfoPlistEntry {
        InfoPlistEntry(
            name: nil,
            key: "UIApplicationPreferredDefaultSceneSessionRole",
            value: .string(value.rawValue),
            availabilities: .init(
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: The name of an app's storyboard resource file.
    ///
    /// Availability: macOS 10.10
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsmainstoryboardfile)
    static func NSMainStoryboardFile(_ value: String) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Main storyboard file base name",
            key: "NSMainStoryboardFile",
            value: .string(value),
            availabilities: .init(
                macOS: "10.10"
            )
        )
    }
    
    /// - Parameter value: The name of the app’s main storyboard file.
    ///
    /// Availability: iOS 5.0+, iPadOS 5.0+, tvOS 9.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uimainstoryboardfile)
    static func UIMainStoryboardFile(_ value: String) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Main storyboard file base name",
            key: "UIMainStoryboardFile",
            value: .string(value),
            availabilities: .init(
                iOS: "5.0",
                iPadOS: "5.0",
                tvOS: "9.0"
            )
        )
    }
    
    /// - Parameter value: The name of an app’s main user interface file.
    ///
    /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsmainnibfile)
    static func NSMainNibFile(_ value: String) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Main nib file base name",
            key: "NSMainNibFile",
            value: .string(value),
            availabilities: .init(
                iOS: "2.0",
                iPadOS: "2.0",
                macOS: "10.0",
                tvOS: "9.0",
                watchOS: "2.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value indicating whether the app is an agent app that runs in the background and doesn't appear in the Dock.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/lsuielement)
    static func LSUIElement(_ value: Bool) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Application is agent (UIElement)",
            key: "LSUIElement",
            value: .boolean(value),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value that indicates whether your iPad app supports arbitrary screen sizes and resolutions when running on a Mac.
    ///
    /// To declare support for arbitrary screen sizes and resolutions when running your iPad app in macOS, add this key to your app’s `Info.plist` file and set its value to `true`. This key has no effect when:
    /// - The app supports iPad multitasking and resizable windows. For more information, see [UIRequiresFullScreen](https://developer.apple.com/documentation/bundleresources/information_property_list/uirequiresfullscreen).
    /// - The app is running on other Apple platforms.
    /// - The app is built with [Mac Catalyst](https://developer.apple.com/documentation/uikit/mac_catalyst).
    ///
    /// The use of this key implies that your app is capable of handling a variety of display configurations available on a Mac, including:
    /// - Small to large display resolutions; for example, 640 x 480 to 8K and beyond.
    /// - Retina and non-Retina displays.
    /// - All conceivable aspect ratios, including portrait and 21:9 ultrawide.
    ///
    /// Use of the `UISupportsTrueScreenSizeOnMac` key also implies that your app is capable of handling portrait and landscape sizes even when they don’t align with the device orientation. For instance, if your app supports rotation in iPadOS, the device orientation is always landscape even though the display might have a portrait aspect ratio in reality.
    ///
    /// - Note: When running your iPad app on a Mac, macOS chooses the device orientation of your app from the set of app-supported orientations for iOS, regardless of the actual Mac display aspect ratio. This means that you don’t need to update the set of iOS-supported orientations (see [UISupportedInterfaceOrientations](https://developer.apple.com/documentation/bundleresources/information_property_list/uisupportedinterfaceorientations)), or alter your code to handle unsupported orientations when using the `UISupportsTrueScreenSizeOnMac` key.
    ///
    /// When you include `UISupportsTrueScreenSizeOnMac` in your app, your app is responsible for:
    /// - Handling memory management concerns that may occur when running at extreme resolutions.
    /// - Handling layout concerns for different aspect ratios, such as correct button placement.
    /// - Letterboxing and pillarboxing as needed if your app requires a specific aspect ratio.
    ///
    /// To provide a pixel-perfect, edge-to-edge, full-screen experience, use `UISupportsTrueScreenSizeOnMac` along with the [UILaunchToFullScreenByDefaultOnMac](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchtofullscreenbydefaultonmac) key.
    ///
    /// Availability: macOS 12.1+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uisupportstruescreensizeonmac)
    static func UISupportsTrueScreenSizeOnMac(_ value: Bool) -> InfoPlistEntry {
        InfoPlistEntry(
            name: nil,
            key: "UISupportsTrueScreenSizeOnMac",
            value: .boolean(value),
            availabilities: .init(
                macOS: "12.1"
            )
        )
    }
    
    // MARK: - Launch Interface
    
    /// - Parameter values: The user interface to show while an app launches.
    ///
    /// You use this key to define the launch screen that the system displays while your app launches. If you need to provide different launch screens in response to being launched by different URL schemes, use [UILaunchScreens](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens) instead.
    ///
    /// - Note: Use this key to configure the user interface during app launch in a way that doesn’t rely on storyboards. If you prefer to use storyboards, use [UILaunchStoryboardName](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchstoryboardname) instead.
    ///
    /// Availability: iOS 14.0+, iPadOS 14.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreen)
    static func UILaunchScreen(_ values: [UILaunchScreenEntry]) -> Self {
        Self.dict(
            name: nil,
            key: "UILaunchScreen",
            childEntries: values,
            availabilities: .init(
                iOS: "14.0",
                iPadOS: "14.0"
            )
        )
    }
    
    /// - Parameter values: The user interfaces to show while an app launches in response to different URL schemes.
    ///
    /// You use this key if your app supports launching in response to one or more URL schemes, and if you want to provide different launch screens for different launch triggers. If you need only one launch screen, use [UILaunchScreen](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreen) instead.
    ///
    /// To define launch screens, create an array of dictionaries, each similar to the one you might provide for [UILaunchScreen](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreen), but with an added [UILaunchScreenIdentifier](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uilaunchscreendefinitions/uilaunchscreenidentifier) key that uniquely identifies the screen. Store the array as the value for the [UILaunchScreenDefinitions](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uilaunchscreendefinitions) key.
    ///
    /// To map from URL schemes to a launch screens, create a dictionary of schemes and identifiers, and store it as the value for the [UIURLToLaunchScreenAssociations](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uiurltolaunchscreenassociations) key. Additionally, indicate a default launch screen by setting a value for the [UIDefaultLaunchScreen](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uidefaultlaunchscreen) key.
    ///
    /// - Note:Use this key to configure the user interface during app launch in a way that doesn’t rely on storyboards. If you prefer to use storyboards to define the launch screen, use the [UILaunchStoryboards](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchstoryboards) key instead.
    ///
    /// Availability: iOS 14.0+, iPadOS 14.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens)
    static func UILaunchScreens(_ values: [UILaunchScreensEntry]) -> Self {
        Self.dict(
            name: nil,
            key: "UILaunchScreens",
            childEntries: values,
            availabilities: .init(
                iOS: "14.0",
                iPadOS: "14.0"
            )
        )
    }
    
    /// - Parameter value: The filename of the storyboard from which to generate the app’s launch image.
    ///
    /// Specify the name of the storyboard file without the filename extension. For example, if the filename of your storyboard is `LaunchScreen.storyboard`, specify "LaunchScreen" as the value for this key.
    ///
    /// If you prefer to configure your app’s launch screen without storyboards, use [UILaunchScreen](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreen) instead.
    ///
    /// Availability: iOS 9.0+, iPadOS 9.0+, tvOS 9.0+, watchOS 2.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchstoryboardname)
    static func UILaunchStoryboardName(_ value: String) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Launch screen interface file base name",
            key: "UILaunchStoryboardName",
            value: .string(value),
            availabilities: .init(
                iOS: "9.0",
                iPadOS: "9.0",
                tvOS: "9.0",
                watchOS: "2.0"
            )
        )
    }
    
    /// - Parameter values: The launch storyboard to use to generate a launch image when your app opens from a supported scheme.
    ///
    /// Use `UILaunchStoryboards` when you want your app to show a different launch screen for different schemes. The schemes are the ones specified in your app’s [CFBundleURLTypes](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleurltypes). You can also specify a default launch storyboard.
    ///
    /// If your app has a single launch storyboard, use the simpler [UILaunchStoryboardName](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchstoryboardname) instead.
    ///
    /// Availability: iOS 9.0+, iPadOS 9.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchstoryboards)
    static func UILaunchStoryboards(_ values: [UILaunchStoryboardsEntry]) -> Self {
        Self.dict(
            name: nil,
            key: "UILaunchStoryboards",
            childEntries: values,
            availabilities: .init(
                iOS: "9.0",
                iPadOS: "9.0"
            )
        )
    }
    
    /// - Parameter value: The initial user-interface mode for the app.
    ///
    /// Availability:macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/lsuipresentationmode)
    static func LSUIPresentationMode(_ value: InfoPlistValue.UIPresentationMode) -> InfoPlistEntry {
        return InfoPlistEntry(
            name: "Application UI Presentation Mode",
            key: "LSUIPresentationMode",
            value: .integer(value.rawValue),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value that indicates whether to launch your iPad app in full-screen mode when running on a Mac.
    ///
    /// To launch your iPad app in full-screen mode when running in macOS, add this key to your app’s `Info.plist` file and set its value to `true`. State restoration can override this behavior if the person using your app exits full-screen mode before quitting the app.
    ///
    /// You can also provide a pixel-perfect, edge-to-edge, full-screen experience by including the [UISupportsTrueScreenSizeOnMac](https://developer.apple.com/documentation/bundleresources/information_property_list/uisupportstruescreensizeonmac) key with a value of `true` in your app’s `Info.plist` file.
    ///
    /// `UILaunchToFullScreenByDefaultOnMac` has no effect on your iPad app when:
    /// - The app supports iPad multitasking and resizable windows. For more information, see [UIRequiresFullScreen](https://developer.apple.com/documentation/bundleresources/information_property_list/uirequiresfullscreen).
    /// - The app is running on other Apple platforms.
    /// - The app is built with [Mac Catalyst](https://developer.apple.com/documentation/uikit/mac_catalyst).
    ///
    /// Availability: macOS 12.1+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchtofullscreenbydefaultonmac)
    static func UILaunchToFullScreenByDefaultOnMac(_ value: Bool) -> InfoPlistEntry {
        InfoPlistEntry(
            name: nil,
            key: "UILaunchToFullScreenByDefaultOnMac",
            value: .boolean(value),
            availabilities: .init(
                macOS: "12.1"
            )
        )
    }
    
    // MARK: - Icons
    
    /// - Parameter values: Information about all of the icons used by the app.
    ///
    /// Availability: iOS 5.0+, iPadOS 5.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleicons)
    static func CFBundleIcons(_ values: [CFBundleIconsEntry]) -> Self {
        Self.dict(
            name: "Icon files (iOS 5)",
            key: "CFBundleIcons",
            childEntries: values,
            availabilities: .init(
                iOS: "5.0",
                iPadOS: "5.0",
                tvOS: "9.0",
                watchOS: "2.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter values: The names of the bundle’s icon image files.
    ///
    /// - Note: For Action extensions, you can specify the `CFBundleSymbolName` key instead of [CFBundleIconFiles](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleicons/cfbundleprimaryicon/cfbundlesymbolname) to use a symbol from SF Symbols.
    ///
    /// Availability: iOS 3.2+, iPadOS 3.2+,  tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleiconfiles)
    static func CFBundleIconFiles(_ values: [String]) -> InfoPlistEntry {
        let fileNames = values.map { Plist.Value.string($0) }
        return InfoPlistEntry(
            name: "Icon files",
            key: "CFBundleIconFiles",
            value: .array(fileNames),
            availabilities: .init(
                iOS: "3.2",
                iPadOS: "3.2",
                tvOS: "9.0",
                watchOS: "2.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: The file containing the bundle's icon.
    ///
    /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleiconfile)
    static func CFBundleIconFile(_ value: String) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Icon file",
            key: "CFBundleIconFile",
            value: .string(value),
            availabilities: .init(
                iOS: "2.0",
                iPadOS: "2.0",
                macOS: "10.0",
                tvOS: "9.0",
                watchOS: "2.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: The name of the asset that represents the app icon.
    ///
    /// Availability: macOS 10.13+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleiconname)
    static func CFBundleIconName(_ value: String) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "The name of the asset that represents the app icon.",
            key: "CFBundleIconName",
            value: .string(value),
            availabilities: .init(
                macOS: "10.13"
            )
        )
    }
    
    /// - Parameter value: A Boolean value that indicates whether the app’s icon contains a shine effect.
    ///
    /// If `YES`, the system doesn’t apply a shine effect to the app icon; otherwise, it does. If your app icon already has a shine, set this key to `YES` to prevent the system from applying the same effect again. The default value is `NO`.
    ///
    /// Availability: iOS 2.0+, iPadOS 2.0+, tvOS 9.0+, watchOS 2.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiprerenderedicon)
    static func UIPrerenderedIcon(_ value: Bool) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Icon already includes gloss effects",
            key: "UIPrerenderedIcon",
            value: .boolean(value),
            availabilities: .init(
                iOS: "2.0",
                iPadOS: "2.0",
                tvOS: "9.0",
                watchOS: "2.0"
            )
        )
    }
    
    // MARK: - Orientation
    
    /// - Parameter value: The initial orientation of the app’s user interface.
    ///
    /// The default value is `UIInterfaceOrientationPortrait`. If you add the [UISupportedInterfaceOrientations](https://developer.apple.com/documentation/bundleresources/information_property_list/uisupportedinterfaceorientations) key to the information property list, the system ignores this key.
    ///
    /// For more information, see [UIInterfaceOrientation](https://developer.apple.com/documentation/uikit/uiinterfaceorientation).
    ///
    /// Availability: iOS 2.0+, iPadOS 2.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiinterfaceorientation)
    static func UIInterfaceOrientation(_ value: InfoPlistValue.UIInterfaceOrientationValue) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Initial interface orientation",
            key: "UIInterfaceOrientation",
            value: .string(value.rawValue),
            availabilities: .init(
                iOS: "2.0",
                iPadOS: "2.0"
            )
        )
    }
    
    /// - Parameter values: The interface orientations supported by your app.
    ///
    /// Availability: iOS 3.2+, iPadOS 3.2+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uisupportedinterfaceorientations)
    static func UISupportedInterfaceOrientations(_ values: [InfoPlistValue.UISupportedInterfaceOrientationValue]) -> InfoPlistEntry {
        let orientations = values.map { Plist.Value.string($0.rawValue) }
        return InfoPlistEntry(
            name: "Supported interface orientations",
            key: "UISupportedInterfaceOrientations",
            value: .array(orientations),
            availabilities: .init(
                iOS: "3.2",
                iPadOS: "3.2"
            )
        )
    }
    
    /// - Parameter value: A string that indicates the preferred initial interface orientation for iPad and iPhone apps running on visionOS.
    ///
    /// When compatible iPad and iPhone apps run on visionOS, the system references this key to determine the preferred initial interface orientation for the content that appears in a window in the person’s surroundings. This key is optional, and applications that don’t provide a value receive a default interface orientation that the system provides. The system evaluates the key, but might use a different value. For example, if a pre-existing state exists, that state defines the interface orientation. If a preferred interface orientation doesn’t exist in the app’s [UISupportedInterfaceOrientations](https://developer.apple.com/documentation/bundleresources/information_property_list/uisupportedinterfaceorientations), the app receives a default interface orientation provided by the system – landscape right for iPad apps, portrait for iPhone apps.
    ///
    /// - Note: This key doesn’t apply to app’s built against the visionOS SDK.
    ///
    /// Availability: iOS 17.0+, iPadOS 17.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uipreferreddefaultinterfaceorientation)
    static func UIPreferredDefaultInterfaceOrientation(_ value: InfoPlistValue.UIPreferredDefaultInterfaceOrientationValue) -> InfoPlistEntry {
        InfoPlistEntry(
            name: nil,
            key: "UIPreferredDefaultInterfaceOrientation",
            value: .string(value.rawValue),
            availabilities: .init(
                iOS: "17.0",
                iPadOS: "17.0"
            )
        )
    }
    
    // MARK: - Style
    
    /// - Parameter value: The user interface style for the app.
    ///
    /// Availability: iOS 13.0+, iPadOS 13.0+, tvOS 10.0
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiuserinterfacestyle)
    static func UIUserInterfaceStyle(_ value: InfoPlistValue.UIUserInterfaceStyleValue) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "User Interface Style",
            key: "UIUserInterfaceStyle",
            value: .string(value.rawValue),
            availabilities: .init(
                iOS: "13.0",
                iPadOS: "13.0",
                tvOS: "10.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value that indicates whether Core Animation layers use antialiasing when drawing a layer that isn’t aligned to pixel boundaries.
    ///
    /// If `YES`, layers use antialiasing by default; otherwise, they don’t.
    ///
    /// Availability: iOS 3.0+, iPadOS 3.0+, tvOS 9.0+, watchOS 2.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiviewedgeantialiasing)
    static func UIViewEdgeAntialiasing(_ value: Bool) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Renders with edge antialiasing",
            key: "UIViewEdgeAntialiasing",
            value: .boolean(value),
            availabilities: .init(
                iOS: "3.0",
                iPadOS: "3.0",
                tvOS: "9.0",
                watchOS: "2.0"
            )
        )
    }
    
    /// - Parameter value: The app’s white-point adaptivity style, enabled on devices with True Tone displays.
    ///
    /// In split view, the system applies the style on the entire screen from the app with the weaker adaptivity style setting. For example, if one app uses the `UIWhitePointAdaptivityStylePhoto` style and another uses the `UIWhitePointAdaptivityStyleReading` style, the system uses the weaker `UIWhitePointAdaptivityStyleReading` style for the entire screen.
    ///
    /// Availability: iOS 9.3+, iPadOS 9.3+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiwhitepointadaptivitystyle)
    static func UIWhitePointAdaptivityStyle(_ value: InfoPlistValue.UIWhitePointAdaptivityStyleValue) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "White Point Adaptivity Style",
            key: "UIWhitePointAdaptivityStyle",
            value: .string(value.rawValue),
            availabilities: .init(
                iOS: "9.3",
                iPadOS: "9.3"
            )
        )
    }
    
    /// - Parameter value: A Boolean value that indicates whether Core Animation sublayers inherit the opacity of their superlayer.
    ///
    /// If `YES`, sublayers inherit from the superlayer; otherwise, they don’t.
    ///
    /// Availability: iOS 3.0+, iPadOS 3.0+, tvOS 9.0+, watchOS 2.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiviewgroupopacity)
    static func UIViewGroupOpacity(_ value: Bool) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Renders with group opacity",
            key: "UIViewGroupOpacity",
            value: .boolean(value),
            availabilities: .init(
                iOS: "3.0",
                iPadOS: "3.0",
                tvOS: "9.0",
                watchOS: "2.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value that indicates whether an iPad app is capable of sharing the screen with other apps.
    ///
    /// iPad multitasking lets multiple apps appear on screen at the same time. Dragging the resize controls causes the system to change the size of each app’s window. Each app must then adjust its content to fit the newly available space.
    ///
    /// If your app’s content requires a full-screen presentation, include this key in your `Info.plist` and set its value to `true`. When you do, the system prevents your app from sharing the screen with other apps. On an external screen, the window for an app with this setting maintains its canvas size.
    ///
    /// Don’t include this key in your `Info.plist` file if your app supports iPad multitasking and is capable of running alongside other apps. To take advantage of the full size of an external screen consider adopting resizability and multitasking support. If this key is absent, or is present and set to `false`, the system lets your app share the screen with other apps.
    ///
    /// Availability: iOS 9.0+, iPadOS 9.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uirequiresfullscreen)
    static func UIRequiresFullScreen(_ value: Bool) -> InfoPlistEntry {
        InfoPlistEntry(
            name: nil,
            key: "UIRequiresFullScreen",
            value: .boolean(value),
            availabilities: .init(
                iOS: "9.0",
                iPadOS: "9.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value that indicates if an iOS or iPadOS app appears as full screen in Assistive Access.
    ///
    /// Assistive Access is an accessibility feature that tailors the iOS and iPadOS experience for people with cognitive disabilities. A trusted supporter sets up this feature in Settings > Accessibility > Assistive Access. They choose the system and third-party apps to make available in Assistive Access.
    ///
    /// ![](https://docs-assets.developer.apple.com/published/050bdf01b9/rendered2x-1685557706.png)
    ///
    /// Adding this key to your app’s Info.plist file with a value of YES allows your app’s UI to expand into all the available space above the Back button in Assistive Access. It also lists your app as Optimized for Assistive Access in Settings, so that a trusted supporter configuring Assistive Access on someone’s behalf knows that your app’s UI is optimized for this feature.
    ///
    /// If you add this key to your app, use the following best practices to create a great experience in Assistive Access:
    /// - Ensure your UI is adaptive so that it works with flexible screen dimensions. Don’t rely on fixed screen sizes in your app design or logic.
    /// - Use safe areas and layout guides to avoid overlapping your app’s UI with system UI or hardware elements. For more information, see [safeAreaInsets](https://developer.apple.com/documentation/uikit/uiview/2891103-safeareainsets) and [safeAreaLayoutGuide](https://developer.apple.com/documentation/uikit/uiview/2891102-safearealayoutguide).
    /// - Test your app in Assistive Access to ensure it provides a great experience. Don’t design or implement your app differently in Assistive Access; make sure your standard app design works well for this feature.
    /// - Follow accessible design principles from the [Accessibility](https://developer.apple.com/design/human-interface-guidelines/accessibility) Human Interface Guidelines. Align with the design principles of Assistive Access from the WWDC23 session 10032: [Meet Assistive Access](https://developer.apple.com/videos/play/wwdc2023/10032/).
    ///
    /// - Important: If you don’t add this key to your app’s `Info.plist`, a trusted supporter can still choose to make your app available in Assistive Access. By default, the system draws apps in a reduced frame to fit them onscreen with the prominent Back button in Assistive Access. This frame matches the dimensions of a smaller iPhone or iPad screen, so you don’t need to make changes to your existing UI for your app to work in Assistive Access.
    ///
    /// - Releated sessions from WWDC23: Session 10032: [Meet Assistive Access](https://developer.apple.com/videos/play/wwdc2023/10032/)
    ///
    /// Availability: iOS 17.0+, iPadOS 17.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uisupportsfullscreeninassistiveaccess)
    static func UISupportsFullScreenInAssistiveAccess(_ value: Bool) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Supports full screen in Assistive Access",
            key: "UISupportsFullScreenInAssistiveAccess",
            value: .boolean(value),
            availabilities: .init(
                iOS: "17.0",
                iPadOS: "17.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value that indicates whether the app prefers to run in compatibility mode when necessary.
    ///
    /// On Mac computers that include a camera housing in the screen bezel, the system provides a compatibility mode to prevent apps from unintentionally putting content in the region the housing occupies. When this mode is active, the system changes the active area of the display to avoid the camera housing. The new active area ensures your app’s contents are always visible and not obscured by the camera housing. The system activates this compatibility mode when an app that requires it places a window behind the camera housing in the current desktop or full-screen space.
    ///
    /// On Mac computers that include a camera housing, the Finder adds a checkbox to your app’s Get Info panel to enable or disable compatibility mode. If your app’s `Info.plist` file includes the `NSPrefersDisplaySafeAreaCompatibilityMode` key, the Finder doesn’t add that checkbox; instead, it uses the value of the key to determine whether to run your app in compatibility mode. Set the value of the key to `true` to always run your app in compatibility mode, and set it to `false` to never run your app in compatibility mode.
    ///
    /// After you audit your app and verify that it runs correctly on Mac computers that include a camera housing, add this key to your `Info.plist` file and set its value to `false`. If you discover issues during your audit, add the key and set its value to `true` until you’re able to fix those issues.
    ///
    /// - Note: On Mac computers that include a camera housing in the bezel, the [auxiliaryTopLeftArea](https://developer.apple.com/documentation/appkit/nsscreen/3882915-auxiliarytopleftarea) and [auxiliaryTopRightArea](https://developer.apple.com/documentation/appkit/nsscreen/3882916-auxiliarytoprightarea) properties of [NSScreen](https://developer.apple.com/documentation/appkit/nsscreen) contain the regions to the left and right of the camera housing. Use those properties and the [visibleFrame](https://developer.apple.com/documentation/appkit/nsscreen/1388369-visibleframe) property to determine where to display your content.
    ///
    /// Availability: macOS 12.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsprefersdisplaysafeareacompatibilitymode)
    static func NSPrefersDisplaySafeAreaCompatibilityMode(_ value: Bool) -> InfoPlistEntry {
        InfoPlistEntry(
            name: nil,
            key: "NSPrefersDisplaySafeAreaCompatibilityMode",
            value: .boolean(value),
            availabilities: .init(
                macOS: "12.0"
            )
        )
    }
    
    /// - Parameter value: The name of a color in an asset catalog to use for a target’s global accent color.
    ///
    /// This `Info.plist` value controls the global tint color (iOS and watchOS) or accent color (macOS) for the target. When set in a widget extension, the widget configuration user interface uses this color as the tint color while editing a widget.
    ///
    /// While you can set this directly in your `Info.plist`, the recommended approach is to use the `Global Accent Color` Name build setting (in the `Asset Catalog Compiler` - Options section) of the target. Set the value of the build setting to the name of the Color Set in the asset catalog. Xcode automatically sets `NSAccentColorName` to the appropriate value in the `Info.plist` file when building your project.
    ///
    /// Availability: iOS 14.0+, iPadOS 14.0+, macOS 11.0+, tvOS 14.0, watchOS 7.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsaccentcolorname)
    static func NSAccentColorName(_ value: String) -> InfoPlistEntry {
        InfoPlistEntry(
            name: nil,
            key: "NSAccentColorName",
            value: .string(value),
            availabilities: .init(
                iOS: "14.0",
                iPadOS: "14.0",
                macOS: "11.0",
                tvOS: "14.0",
                watchOS: "7.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: The name of a color in an asset catalog to use for a widget’s configuration interface.
    ///
    /// This `Info.plist` value controls the background color shown in the widget configuration interface while editing a widget.
    ///
    /// While you can set this directly in your `Info.plist`, the recommended approach is to use the Widget `Background Color` Name build setting (in the `Asset Catalog Compiler` - Options section) of the widget extension target. Set the value of the build setting to the name of the Color Set in the asset catalog. Xcode automatically sets `NSWidgetBackgroundColorName` to the appropriate value in the `Info.plist` file when building your project.
    ///
    /// Availability: iOS 14.0+, iPadOS 14.0+, macOS 11.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nswidgetbackgroundcolorname)
    static func NSWidgetBackgroundColorName(_ value: String) -> InfoPlistEntry {
        InfoPlistEntry(
            name: nil,
            key: "NSWidgetBackgroundColorName",
            value: .string(value),
            availabilities: .init(
                iOS: "14.0",
                iPadOS: "14.0",
                macOS: "11.0"
            )
        )
    }
    
    // MARK: - Fonts
    
    /// - Parameter value: The location of a font file or folder of fonts in the bundle’s Resources folder.
    ///
    /// If you set this key, the system allows the app in the bundle to use the fonts at the specified path. Set this key to the path relative to the bundle’s Resources folder. For example, if the fonts are in `.../Resources/MyFonts`, set this key to `MyFonts/`.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/atsapplicationfontspath)
    static func ATSApplicationFontsPath(_ value: String) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Application fonts resource path",
            key: "ATSApplicationFontsPath",
            value: .string(value),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    /// - Parameter values: App-specific font files located in the bundle and that the system loads at runtime.
    ///
    /// Set this key to an array of font filenames, including the filename extension, that reside in the app’s bundle.
    ///
    /// Availability: iOS 3.2+, iPadOS 3.2+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiappfonts)
    static func UIAppFonts(_ values: [String]) -> InfoPlistEntry {
        let filenames = values.map { Plist.Value.string($0) }
        return InfoPlistEntry(
            name: "Fonts provided by application",
            key: "UIAppFonts",
            value: .array(filenames),
            availabilities: .init(
                iOS: "3.2",
                iPadOS: "3.2",
                tvOS: "9.0",
                watchOS: "2.0",
                visionOS: "1.0"
            )
        )
    }
    
    // MARK: - Status Bar
    
    /// - Parameter value: A Boolean value that indicates whether the system initially hides the status bar when the app launches.
    ///
    /// If `YES`, the system hides the status bar. If `NO`, it displays the status bar.
    ///
    /// Availability: iOS 2.0+, iPadOS 2.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uistatusbarhidden)
    static func UIStatusBarHidden(_ value: Bool) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Status bar is initially hidden",
            key: "UIStatusBarHidden",
            value: .boolean(value),
            availabilities: .init(
                iOS: "2.0",
                iPadOS: "2.0"
            )
        )
    }
    
    /// - Parameter value: The style of the status bar as the app launches.
    ///
    /// Availability: iOS 2.0+, iPadOS 2.0+, Mac Catalyst 16.1+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uistatusbarstyle)
    static func UIStatusBarStyle(_ value: InfoPlistValue.UIStatusBarStyleValue) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Status bar style",
            key: "UIStatusBarStyle",
            value: .string(value.rawValue),
            availabilities: .init(
                iOS: "2.0",
                iPadOS: "2.0",
                macCatalyst: "16.1")
        )
    }
    
    /// - Parameter values: The status bar tint.
    ///
    /// Availability: iOS 2.0+, iPadOS 2.0+, Mac Catalyst 15.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uistatusbartintparameters)
    static func UIStatusBarTintParameters(_ values: [UIStatusBarTintParametersEntry]) -> Self {
        Self.dict(
            name: "Status bar tinting parameters",
            key: "UIStatusBarTintParameters",
            childEntries: values,
            availabilities: .init(
                iOS: "2.0",
                iPadOS: "2.0",
                macCatalyst: "15.0",
                tvOS: "9.0",
                watchOS: "2.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value that indicates whether the system bases the appearance of the status bar on the style preferred by the current view controller.
    ///
    /// If this key is `YES`, the system uses the current view controller’s preferred status bar style. If this key is `NO`, it uses the status bar style of the [UIApplication](https://developer.apple.com/documentation/uikit/uiapplication) object. The default value is YES.
    ///
    /// Availability: iOS 7.0+, iPadOS 7.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiviewcontrollerbasedstatusbarappearance)
    static func UIViewControllerBasedStatusBarAppearance(_ value: Bool) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "View controller-based status bar appearance",
            key: "UIViewControllerBasedStatusBarAppearance",
            value: .boolean(value),
            availabilities: .init(
                iOS: "7.0",
                iPadOS: "7.0"
            )
        )
    }
    
    // MARK: - Pointer Interactions
    
    /// - Parameter value: A Boolean value indicating that the app generally supports indirect input mechanisms.
    ///
    /// If the value of this key is YES:
    /// - When the user clicks an indirect pointing device, UIKit generates a `UITouch` of type [UITouch.TouchType.indirectPointer](https://developer.apple.com/documentation/uikit/uitouch/touchtype/indirectpointer).
    /// - When pinching or rotating using an indirect touch surface, UIKit drives [UIPinchGestureRecognizer](https://developer.apple.com/documentation/uikit/uipinchgesturerecognizer) and [UIRotationGestureRecognizer](https://developer.apple.com/documentation/uikit/uirotationgesturerecognizer) with an event of type [UIEvent.EventType.transform](https://developer.apple.com/documentation/uikit/uievent/eventtype/transform).
    /// - Currently, only certain prepackaged gestures in UIKit, like `UIPinchGestureRecognizer` and `UIRotationGestureRecognizer`, are capable of handling this event. Other gestures may be added to this list in future releases.
    /// - Gestures that may have worked previously with the simulated touches no longer work.
    /// - Be careful with certain [UIGestureRecognizer](https://developer.apple.com/documentation/uikit/uigesturerecognizer) APIs when gestures are driven by events of type [UIEvent.EventType.scroll](https://developer.apple.com/documentation/uikit/uievent/eventtype/scroll) or [UIEvent.EventType.transform](https://developer.apple.com/documentation/uikit/uievent/eventtype/transform).[numberOfTouches](https://developer.apple.com/documentation/uikit/uigesturerecognizer/1624200-numberoftouches) returns `0`, and [location(ofTouch:in:)](https://developer.apple.com/documentation/uikit/uigesturerecognizer/1624201-location) raises an exception because there are no touches driving these gestures with those events. For the case when exceptions might be raised, use either [shouldReceive(_:)](https://developer.apple.com/documentation/uikit/uigesturerecognizer/3538977-shouldreceive) or the delegate call of [gestureRecognizer(_:shouldReceive:)](https://developer.apple.com/documentation/uikit/uigesturerecognizerdelegate/3538976-gesturerecognizer) to determine that gesture recognizers are acting on a non-touch-based event.
    ///
    /// If the value of this key is NO:
    /// - When the user clicks an indirect pointing device, UIKit generates a [UITouch](https://developer.apple.com/documentation/uikit/uitouch) of type [UITouch.TouchType.direct](https://developer.apple.com/documentation/uikit/uitouch/touchtype/direct).
    /// - When pinching or rotating using an indirect touch surface, UIKit creates touches a fixed distance apart that simulate the gesture on the indirect touch surface.
    /// - Because these are normal `UITouch` events, they may incidentally activate other gesture recognizers
    ///
    /// If you *don’t* include this key in your app’s `Info.plist`:
    /// - In iOS 17 and later, the system defaults to supporting indirect input events, meaning it treats your app the same as if you specify YES.
    /// - In versions of iOS earlier than iOS 17, the system defaults to not supporting indirect input events, meaning it treats your app the same as if you specify NO.
    ///
    /// - Important: `UIApplicationSupportsIndirectInputEvents` is a compatibility affordance to ease the adoption of indirect input for a UIKit application. Avoid relying on this property and prepare your app to support indirect gestures on all platforms. For visionOS, the system always supports indirect input events and doesn’t consult this key.
    ///
    /// Availability: iOS 13.4+, iPadOS 13.4+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationsupportsindirectinputevents)
    static func UIApplicationSupportsIndirectInputEvents(_ value: Bool) -> InfoPlistEntry {
        InfoPlistEntry(
            name: nil,
            key: "UIApplicationSupportsIndirectInputEvents",
            value: .boolean(value),
            availabilities: .init(
                iOS: "13.4",
                visionOS: "1.0"
            )
        )
    }
    
    // MARK: - Preferences
    
    /// - Parameter value: The name of an image file used to represent a preference pane in the System Preferences app.
    ///
    /// Availability: macOS 10.1+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsprefpaneiconfile)
    static func NSPrefPaneIconFile(_ value: String) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Preference Pane icon file",
            key: "NSPrefPaneIconFile",
            value: .string(value),
            availabilities: .init(
                macOS: "10.1"
            )
        )
    }
    
    /// - Parameter value: The name of a preference pane displayed beneath the preference pane icon in the System Preferences app.
    ///
    /// For long names, you can split the name into two lines by including a newline character (‘\n’) in the string. If you omit this key, System Preferences uses the [CFBundleName](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundlename) key for the name.
    ///
    /// Availability: macOS 10.1+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsprefpaneiconlabel)
    static func NSPrefPaneIconLabel(_ value: String) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Preference Pane icon label",
            key: "NSPrefPaneIconLabel",
            value: .string(value),
            availabilities: .init(
                macOS: "10.1"
            )
        )
    }
    
    // MARK: - Graphics
    
    /// - Parameter value: A Boolean value that indicates whether the app supports HDR mode on Apple TV 4K.
    ///
    /// If you set this key to YES, Apple TV 4K remains in HDR mode when launching the app. If you set this key to NO, Apple TV switches to SDR mode before launching the app, and switches back to HDR mode after the app resigns. The default value for this key is YES.
    ///
    /// On Apple TV 4K, HDR mode uses the GPU to compose the content that appears onscreen. GPU-bound apps, such as games, can access more of the GPU by setting this key to NO. When an app switches between HDR and SDR modes, color flashing might appear onscreen, so only opt out when absolutely necessary.
    ///
    /// Availability: tvOS 11.2+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiappsupportshdr)
    static func UIAppSupportsHDR(_ value: Bool) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Supports HDR color mode",
            key: "UIAppSupportsHDR",
            value: .boolean(value),
            availabilities: .init(
                tvOS: "11.2"
            )
        )
    }
    
    /// - Parameter value: A Boolean value indicating whether the Cocoa app supports high-resolution displays.
    ///
    /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nshighresolutioncapable)
    static func NSHighResolutionCapable(_ value: Bool) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "High Resolution Capable",
            key: "NSHighResolutionCapable",
            value: .boolean(value),
            availabilities: .init(
                iOS: "2.0",
                iPadOS: "2.0",
                macOS: "10.0",
                tvOS: "9.0",
                watchOS: "2.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value indicating whether an OpenGL app may utilize the integrated GPU
    ///
    /// Availability: macOS 10.7+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssupportsautomaticgraphicsswitching)
    static func NSSupportsAutomaticGraphicsSwitching(_ value: Bool) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Supports Automatic Graphics Switching",
            key: "NSSupportsAutomaticGraphicsSwitching",
            value: .boolean(value),
            availabilities: .init(
                macOS: "10.7"
            )
        )
    }
    
    /// - Parameter value: The preferred system action when an external GPU is connected from the system.
    ///
    /// Availability: macOS 10.14+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/gpuejectpolicy)
    static func GPUEjectPolicy(_ value: InfoPlistValue.GPUEjectPolicy) -> InfoPlistEntry {
        InfoPlistEntry(
            name: nil,
            key: "GPUEjectPolicy",
            value: .string(value.rawValue),
            availabilities: .init(
                macOS: "10.14"
            )
        )
    }
    
    /// - Parameter value: The app's preference for whether it wants to use external graphics processors.
    ///
    /// This key is optional.
    ///
    /// Availability: macOS 10.14+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/gpuselectionpolicy)
    static func GPUSelectionPolicy(_ value: InfoPlistValue.GPUSelectionPolicy) -> Self {
        Self(
            name: nil,
            key: "GPUSelectionPolicy",
            value: .string(value.rawValue),
            availabilities: .init(
                macOS: "10.14"
            )
        )
    }
    
    // MARK: - QuickLook
    
    /// - Parameter value: A Boolean value indicating whether a Quick Look app's generator can be run in threads other than the main thread.
    ///
    /// Availability: iOS 4.0+, iPadOS 4.0+, macOS 10.5+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/qlneedstoberuninmainthread)
    static func QLNeedsToBeRunInMainThread(_ value: Bool) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Quick Look needs to be run in main thread",
            key: "QLNeedsToBeRunInMainThread",
            value: .boolean(value),
            availabilities: .init(
                iOS: "4.0",
                iPadOS: "4.0",
                macOS: "10.5",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A hint at the height, in points, of a Quick Look app’s previews.
    ///
    /// If the app’s generator takes too long to produce the preview, Quick Look uses this key.
    ///
    /// Availability: iOS 4.0+, iPadOS 4.0+, macOS 10.5+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/qlpreviewheight)
    static func QLPreviewHeight(_ value: Int) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Quick Look preview height",
            key: "QLPreviewHeight",
            value: .integer(value),
            availabilities: .init(
                iOS: "4.0",
                iPadOS: "4.0",
                macOS: "10.5",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A hint at the height, in points, of a Quick Look app’s previews.
    ///
    /// If the app’s generator takes too long to produce the preview, Quick Look uses this key.
    ///
    /// Availability: iOS 4.0+, iPadOS 4.0+, macOS 10.5+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/qlpreviewwidth)
    static func QLPreviewWidth(_ value: Int) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Quick Look preview height",
            key: "QLPreviewWidth",
            value: .integer(value),
            availabilities: .init(
                iOS: "4.0",
                iPadOS: "4.0",
                macOS: "10.5",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value indicating whether a Quick Look app's generator can handle concurrent thumbnail and preview requests.
    ///
    /// Availability: iOS 4.0+, iPadOS 4.0+, macOS 10.5+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/qlsupportsconcurrentrequests)
    static func QLSupportsConcurrentRequests(_ value: Bool) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Quick Look supports concurrent requests",
            key: "QLSupportsConcurrentRequests",
            value: .boolean(value),
            availabilities: .init(
                iOS: "4.0",
                iPadOS: "4.0",
                macOS: "10.5",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: The minimum size, in points, along one dimension of thumbnails for a Quick Look app’s generator.
    ///
    /// If you set this key, Quick Look uses the [GenerateThumbnailForURL](https://developer.apple.com/documentation/quicklook/qlgeneratorinterfacestruct/1402767-generatethumbnailforurl) property for thumbnail sizes greater than this value. If your app’s generator is fast, you can omit this key so that the thumbnail appears in standard lists.
    ///
    /// Availability: iOS 4.0+, iPadOS 4.0+, macOS 10.5+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/qlthumbnailminimumsize)
    static func QLThumbnailMinimumSize(_ value: Int) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Quick Look thumbnail minimum size",
            key: "QLThumbnailMinimumSize",
            value: .integer(value),
            availabilities: .init(
                iOS: "4.0",
                iPadOS: "4.0",
                macOS: "10.5",
                visionOS: "1.0"
            )
        )
    }
    
    // MARK: - Deprecated keys
    
    /// - Parameter values: A dictionary containing information about launch images.
    ///
    /// discussionUILaunchImages has been deprecated; use Xcode launch storyboards instead. For more information on how to construct and format your launch storyboard, see [Launch Screen](https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/launch-screen/).
    ///
    /// Availability: iOS 7.0-13.0, iPadOS 7.0-13.0, tvOS 9.0-13.0
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchimages)
    static func UILaunchImages(_ values: [[UILaunchImagesEntry]]) -> Self {
        Self.dictArray(
            name: nil,
            key: "UILaunchImages",
            childEntries: values,
            availabilities: .init(
                iOS: "7.0"..."13.0",
                iPadOS: "7.0"..."13.0",
                tvOS: "9.0"..."13.0"
            )
        )
    }
    
}

extension InfoPlistEntry.InfoPlistValue {
    
    enum UIApplicationPreferredDefaultSceneSessionRole: String {
        case UIWindowSceneSessionRoleApplication
        case UIWindowSceneSessionRoleVolumetricApplication
        case UISceneSessionRoleImmersiveSpaceApplication
        case CPSceneSessionRoleImmersiveSpaceApplication
    }
    
    enum UIPresentationMode: Int {
        /// Normal
        case mode0 = 0
        /// Content suppressed
        case mode1
        /// Content hidden
        case mode2
        /// All hidden
        case mode3
        /// All suppressed
        case mode4
    }
    
    enum UIInterfaceOrientationValue: String {
        /// The device is in portrait mode, with the device upright and the Home button on the bottom.
        case UIInterfaceOrientationPortrait
        /// The device is in portrait mode but is upside down, with the device upright and the Home button at the top.
        case UIInterfaceOrientationPortraitUpsideDown
        /// The device is in landscape mode, with the device upright and the Home button on the left.
        case UIInterfaceOrientationLandscapeLeft
        /// The device is in landscape mode, with the device upright and the Home button on the right.
        case UIInterfaceOrientationLandscapeRight
    }
    
    enum UISupportedInterfaceOrientationValue: String {
        /// The app supports the display in portrait mode, with the device upright and the front camera at the top.
        case UIInterfaceOrientationPortrait
        /// The app supports the display in portrait mode but is upside down, with the device upright and the front camera at the bottom. UIViewController ignores this option on devices without a Home button.
        case UIInterfaceOrientationPortraitUpsideDown
        /// The app supports the display in landscape mode, with the device upright and the front camera on the right.
        case UIInterfaceOrientationLandscapeLeft
        /// The app supports the display in landscape mode, with the device upright and the front camera on the left.
        case UIInterfaceOrientationLandscapeRight
    }
    
    enum UIPreferredDefaultInterfaceOrientationValue: String {
        case UIInterfaceOrientationPortrait
        case UIInterfaceOrientationPortraitUpsideDown
        case UIInterfaceOrientationLandscapeLeft
        case UIInterfaceOrientationLandscapeRight
    }
    
    enum UIUserInterfaceStyleValue: String {
        /// Set this value to adopt the systemwide user interface style, and observe any changes to that style. This is the default value, and provides the same functionality as if the key weren’t explicitly set.
        case Automatic
        /// Set this value to force the light user interface style, even when the systemwide style is set to dark. Your app will ignore any changes to the systemwide style.
        case Light
        /// Set this value to force the dark user interface style, even when the systemwide style is set to light. Your app will ignore any changes to the systemwide style.
        case Dark
    }
    
    enum UIWhitePointAdaptivityStyleValue: String {
        /// The default white-point adaptivity.
        case UIWhitePointAdaptivityStyleStandard
        /// A stronger adaptivity style designed for reading-focused apps.
        case UIWhitePointAdaptivityStyleReading
        /// A weaker adaptivity style designed for photography-focused apps.
        case UIWhitePointAdaptivityStylePhoto
        /// A weaker adaptivity style designed for video-focused apps.
        case UIWhitePointAdaptivityStyleVideo
        /// A weaker adaptifity style designed for games.
        case UIWhitePointAdaptivityStyleGame
    }
    
    enum UIStatusBarStyleValue: String {
        /// A style that automatically chooses light or dark content based on the user interface style. This is the default status bar style.
        case UIStatusBarStyleDefault
        /// A transparent black style.
        case UIStatusBarStyleBlackTranslucent
        /// An opaque black style.
        case UIStatusBarStyleBlackOpaque
        /// A light status bar, intended for use on dark backgrounds.
        case UIStatusBarStyleLightContent
        /// A dark status bar, intended for use on light backgrounds.
        case UIStatusBarStyleDarkContent
    }
    
    enum GPUEjectPolicy: String {
        /// Set this value to allow macOS to quit and relaunch your app with another GPU. Your app can implement the [application(_:willEncodeRestorableState:)](https://developer.apple.com/documentation/appkit/nsapplicationdelegate/1428400-application) method to save any state before it quits, and it can implement the [application(_:didDecodeRestorableState:)](https://developer.apple.com/documentation/appkit/nsapplicationdelegate/1428693-application) method to restore any saved state after it relaunches.
        case relaunch
        /// Set this value to manually respond to the safe disconnect request. Your app must register and respond to the [removalRequested](https://developer.apple.com/documentation/metal/mtldevicenotificationname/2869711-removalrequested) notification posted by Metal. macOS waits for your app to remove all references to the external GPU before notifying the user that it's safe to disconnect the GPU.
        case wait
        /// Set this value to allow macOS to force your app to quit.
        case kill
        /// Tells the system to ignore the disconnect message. Don’t use this key in new macOS apps.
        case ignore
    }
    
    enum GPUSelectionPolicy: String {
        /// Metal tries to avoid creating contexts on external GPUs. For legacy OpenGL apps, OpenGL also avoids creating contexts using external GPUs. Set this option only if your app doesn't support external GPU event handling.
        case avoidRemovable
        /// If external GPUs are visible to the system, Metal prefers them over other GPUs. Similarly, for legacy OpenGL apps, OpenGL also prefers to create contexts on the external GPU.
        case preferRemovable
    }
}
