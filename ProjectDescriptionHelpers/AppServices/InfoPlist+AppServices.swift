//
//  InfoPlist+AppServices.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 06.06.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    // MARK: - Accessibility
    
    /// - Parameter value: A Boolean value that indicates to the system that your app supports the Music Haptics feature.
    ///
    /// To notify the system that your app supports the Music Haptics feature, add `MusicHapticsSupported` with a value of `YES` to your app’s `Info.plist`. When you add this key to your `Info.plist`, your app appears in the list of apps that support Music Haptics in Settings. For more information, read [Music Haptics](https://developer.apple.com/documentation/mediaaccessibility/music-haptics).
    ///
    /// Availability: iOS 18.0+, iPadOS 18.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/musichapticssupported)
    static func MusicHapticsSupported(_ value: Bool) -> Self {
        Self(
            name: "Supports Music Haptics",
            key: "MusicHapticsSupported",
            value: .boolean(value),
            availabilities: .init(
                iOS: "18.0",
                iPadOS: "18.0"
            )
        )
    }
    
    // MARK: - Accessories
    
    /// - Parameter values: An array of strings that indicates the interfaces AccessorySetupKit uses when discovering and configuring accessories.
    ///
    /// Availability: iOS 18.0+, iPadOS 18.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsaccessorysetupsupports)
    static func NSAccessorySetupSupports(_ values: [InfoPlistValue.NSAccessorySetupSupportsValue]) -> Self {
        Self(
            name: "AccessorySetupKit - Supports",
            key: "NSAccessorySetupSupports",
            value: .array(values.map { .string($0.rawValue) }),
            availabilities: .init(
                iOS: "18.0",
                iPadOS: "18.0"
            )
        )
    }
    
    /// Availability: iOS 18.0+, iPadOS 18.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsaccessorysetupbluetoothcompanyidentifiers)
    static func NSAccessorySetupBluetoothCompanyIdentifiers(_ values: [String]) -> Self {
        Self(
            name: "AccessorySetupKit - Bluetooth Company Identifiers",
            key: "NSAccessorySetupBluetoothCompanyIdentifiers",
            value: .array(values.map { .string($0) }),
            availabilities: .init(
                iOS: "18.0",
                iPadOS: "18.0"
            )
        )
    }
    
    /// Availability: iOS 18.0+, iPadOS 18.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsaccessorysetupbluetoothnames)
    static func NSAccessorySetupBluetoothNames(_ values: [String]) -> Self {
        Self(
            name: "AccessorySetupKit - Bluetooth Names",
            key: "NSAccessorySetupBluetoothNames",
            value: .array(values.map { .string($0) }),
            availabilities: .init(
                iOS: "18.0",
                iPadOS: "18.0"
            )
        )
    }
    
    /// Availability: iOS 18.0+, iPadOS 18.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsaccessorysetupbluetoothservices)
    static func NSAccessorySetupBluetoothServices(_ values: [String]) -> Self {
        Self(
            name: "AccessorySetupKit - Bluetooth Services",
            key: "NSAccessorySetupBluetoothServices",
            value: .array(values.map { .string($0) }),
            availabilities: .init(
                iOS: "18.0",
                iPadOS: "18.0"
            )
        )
    }
    
    
    
    // MARK: - Ad attributions
    
    /// Availability: iOS 17.4+, iPadOS 17.4+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/adnetworkidentifiers)
    static func AdNetworkIdentifiers(_ values: [String]) -> Self {
        Self(
            name: nil,
            key: "AdNetworkIdentifiers",
            value: .array(values.map { .string($0) }),
            availabilities: .init(
                iOS: "17.4",
                iPadOS: "17.4"
            )
        )
    }
    
    /// Availability: iOS 17.4+, iPadOS 17.4+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/attributioncopyendpoint)
    static func AttributionCopyEndpoint(_ value: String) -> Self {
        Self(
            name: nil,
            key: "AttributionCopyEndpoint",
            value: .string(value),
            availabilities: .init(
                iOS: "17.4",
                iPadOS: "17.4"
            )
        )
    }
    
    /// Availability: iOS 18.0+, iPadOS 18.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/eligibleforadattributionkitreengagementpostbackcopies)
    static func EligibleForAdAttributionKitReengagementPostbackCopies(_ value: Bool) -> Self {
        Self(
            name: nil,
            key: "EligibleForAdAttributionKitReengagementPostbackCopies",
            value: .boolean(value),
            availabilities: .init(
                iOS: "18.0",
                iPadOS: "18.0"
            )
        )
    }
    
    // MARK: - Always On display
    
    /// - Parameter value: A Boolean value that determines whether the system displays the app in the Always On state.
    ///
    /// If `true`, the system displays the app in the Always On state when the app is the frontmost app or running an active background session. Apps compiled for watchOS 8 and later have Always On enabled by default; however, users can disable Always On for the entire device or on a per-app basis by selecting Settings > Display & Brightness > Always On.
    ///
    /// For more information, see `Designing Your App for the Always On State`.
    ///
    /// Availability: watchOS 8.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/wksupportsalwaysondisplay)
    static func WKSupportsAlwaysOnDisplay(_ value: Bool) -> Self {
        Self(
            name: nil,
            key: "WKSupportsAlwaysOnDisplay",
            value: .boolean(value),
            availabilities: .init(
                watchOS: "8.0"
            )
        )
    }
    
    // MARK: - Authentication
    
    /// - Parameter value: A Boolean value that indicates the system shouldn’t show security recommendation prompts when users sign in using the app.
    ///
    /// Availability: iOS 14.0+, iPadOS 14.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/asaccountauthenticationmodificationoptoutofsecuritypromptsonsignin)
    static func ASAccountAuthenticationModificationOptOutOfSecurityPromptsOnSignIn(_ value: Bool) -> Self {
        Self(
            name: nil,
            key: "ASAccountAuthenticationModificationOptOutOfSecurityPromptsOnSignIn",
            value: .boolean(value),
            availabilities: .init(
                iOS: "14.0",
                iPadOS: "14.0"
            )
        )
    }
    
    /// - Parameter values: A collection of keys that a browser app uses to declare its ability to handle authentication requests from other apps.
    ///
    /// Add a dictionary for this key to your app’s [`Information Property List`](https://developer.apple.com/documentation/bundleresources/information_property_list) if your app is a web browser and it supports web authentication. In the dictionary, include the keys [`IsSupported`](https://developer.apple.com/documentation/bundleresources/information_property_list/aswebauthenticationsessionwebbrowsersupportcapabilities/issupported) and [`EphemeralBrowserSessionIsSupported`](https://developer.apple.com/documentation/bundleresources/information_property_list/aswebauthenticationsessionwebbrowsersupportcapabilities/ephemeralbrowsersessionissupported) to indicate your browser app’s capabilities. For more information, see [Supporting Single Sign-On in a Web Browser App](https://developer.apple.com/documentation/authenticationservices/supporting_single_sign-on_in_a_web_browser_app).
    ///
    /// Availability: macOS 10.15+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/aswebauthenticationsessionwebbrowsersupportcapabilities)
    static func ASWebAuthenticationSessionWebBrowserSupportCapabilities(_ values: [ASWebAuthenticationSessionWebBrowserSupportCapabilitiesEntry]) -> Self {
        Self.dict(
            name: nil,
            key: "ASWebAuthenticationSessionWebBrowserSupportCapabilities",
            childEntries: values,
            availabilities: .init(
                macOS: "10.15"
            )
        )
    }
    
    // MARK: - Core spotlight
    
    /// - Parameter values: A dictionary that contains details about actions available to users for Spotlight search results.
    ///
    /// Availability: iOS 15.0+, iPadOS 15.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/corespotlightactions)
    static func CoreSpotlightActions(_ values: [[CoreSpotlightActionsEntry]]) -> Self {
        Self.dictArray(
            name: nil,
            key: "CoreSpotlightActions",
            childEntries: values,
            availabilities: .init(
                iOS: "15.0",
                iPadOS: "15.0",
                visionOS: "1.0"
            )
        )
    }
    
    // MARK: - Exposure notification
    
    /// - Parameter value: A number that specifies the version of the API to use.
    ///
    /// - Important: This type is available in iOS 12.5, and in iOS 13.7 and later.
    ///
    /// iOS 13.7 introduces a new method to calculate the user’s Exposure Risk Value, described in [`ENExposureConfiguration`](https://developer.apple.com/documentation/exposurenotification/enexposureconfiguration). Set this value to `2` to use this new version and its calculation method, or set this value to `1` to use the earlier API and its calculation method. If you don’t explicitly set this value, the default is `1`.
    ///
    /// Availability: iOS 13.7+, iPadOS 13.7+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/enapiversion)
    static func ENAPIVersion(_ value: InfoPlistValue.ENAPIVersionValue) -> Self {
        Self(
            name: nil,
            key: "ENAPIVersion",
            value: .integer(value.rawValue),
            availabilities: .init(
                iOS: "13.7",
                iPadOS: "13.7"
            )
        )
    }
    
    /// - Parameter value: A string that specifies the region that the app supports.
    ///
    /// - Important: This type is available in iOS 12.5, and in iOS 13.7 and later.
    ///
    /// All ExposureNotification apps must specify the region for which they work by adding this key to the app’s `Info.plist` file. The value is a string that represents the app’s region. This value can be an ISO 3166-1 country code (e.g. “CA” for Canada), or the ISO 3166-1/3166-2 country code plus subdivision code (“US-CA” for California).
    ///
    /// Availability: iOS 13.7+, iPadOS 13.7+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/endeveloperregion)
    static func ENDeveloperRegion(_ value: String) -> Self {
        Self(
            name: nil,
            key: "ENDeveloperRegion",
            value: .string(value),
            availabilities: .init(
                iOS: "13.7",
                iPadOS: "13.7"
            )
        )
    }
    
    // MARK: - External accessories
    
    /// - Parameter value: A Boolean value that indicates whether the app supports the Command-P keyboard shortcut.
    ///
    /// When the value for this key is `YES`, the system adds the Command-P keyboard shortcut to the app. When someone enters Command-P while using the app, the system calls the [`printContent(_:)`](https://developer.apple.com/documentation/uikit/uiresponderstandardeditactions/3750910-printcontent) method on the first responder that implements the method found in the responder chain.
    ///
    /// An iPad app running in iPadOS shows a Print command in the discoverability HUD when the value for the `UIApplicationSupportsPrintCommand` key is `YES`. When the same app runs on a Mac with Apple silicon, the system adds Print and Export to PDF menu commands to the File menu.
    ///
    /// When an app built with Mac Catalyst includes the `UIApplicationSupportsPrintCommand` key with a value of `YES`, the system adds the Print and Export to PDF commands to the File menu. However, the app must also include the [`com.apple.security.print`](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_print) and [`com.apple.security.files.user-selected.read-write`](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_files_user-selected_read-write) App Sandbox entitlements to make printing and exporting content available to the app when running in macOS.
    ///
    /// Availability: iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationsupportsprintcommand)
    static func UIApplicationSupportsPrintCommand(_ value: Bool) -> Self {
        Self(
            name: "Supports Print Command",
            key: "UIApplicationSupportsPrintCommand",
            value: .boolean(value),
            availabilities: .init(
                iOS: "15.0",
                iPadOS: "15.0",
                macCatalyst: "15.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter values: The protocols that the app uses to communicate with external accessory hardware.
    ///
    /// Add this key to your app’s `Info.plist` file, and set the value to the names of the hardware protocols your app supports. You format protocol names as reverse-DNS strings. For example, the string "`com.apple.myProtocol`" might represent a custom protocol that Apple defines. Manufacturers can define custom protocols for their accessories or work with other manufacturers and organizations to define standard protocols for different accessory types.
    ///
    /// Availability: iOS 3.0+, iPadOS 3.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uisupportedexternalaccessoryprotocols)
    static func UISupportedExternalAccessoryProtocols(_ values: [String]) -> Self {
        Self(
            name: "Supported external accessory protocols",
            key: "UISupportedExternalAccessoryProtocols",
            value: .array(values.map { .string($0) }),
            availabilities: .init(
                iOS: "3.0",
                iPadOS: "3.0"
            )
        )
    }
    
    // MARK: - Games
    
    /// - Parameter value: A key that ignores the system spatial-audio toggle in Control Center.
    ///
    /// In iOS 18 and tvOS 18 and later, the system automatically adds spatial audio to the output for games. To opt out of automatic spatial audio and support just your preferred spatial audio setup, add this key to your app’s Info.plist.
    ///
    /// Availability: iOS 18.0+, iPadOS 18.0+, tvOS 18.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/avgamebypasssystemspatialaudio)
    static func AVGameBypassSystemSpatialAudio(_ value: Bool) -> Self {
        Self(
            name: nil,
            key: "AVGameBypassSystemSpatialAudio",
            value: .boolean(value),
            availabilities: .init(
                iOS: "18.0",
                iPadOS: "18.0",
                tvOS: "18.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value indicating whether GameKit can add badges to a turn-based game icon.
    ///
    /// Availability: iOS 7.0+, iPadOS 7.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/gkgamecenterbadgingdisabled)
    static func GKGameCenterBadgingDisabled(_ value: Bool) -> Self {
        Self(
            name: nil,
            key: "GKGameCenterBadgingDisabled",
            value: .boolean(value),
            availabilities: .init(
                iOS: "7.0",
                iPadOS: "7.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value that indicates whether GameKit can display challenge banners in a game.
    ///
    /// Availability: iOS 7.0+, iPadOS 7.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/gkshowchallengebanners)
    static func GKShowChallengeBanners(_ value: Bool) -> Self {
        Self(
            name: nil,
            key: "GKShowChallengeBanners",
            value: .boolean(value),
            availabilities: .init(
                iOS: "7.0",
                iPadOS: "7.0"
            )
        )
    }
    
    /// - Parameter values: The types of game controller profiles that the app supports or requires.
    ///
    /// The game controller profiles you can support are:
    ///
    /// ExtendedGamepad
    ///     The extended set of gamepad controls. See [`GCExtendedGamepad`](https://developer.apple.com/documentation/gamecontroller/gcextendedgamepad).
    ///
    /// MicroGamepad
    ///     The 1st Generation Siri Remote. See [`GCMicroGamepad`](https://developer.apple.com/documentation/gamecontroller/gcmicrogamepad).
    ///
    /// DirectionalGamepad
    ///     The 2nd Generation Siri Remote. A directional pad without motion or rotation. See [`GCDirectionalGamepad`](https://developer.apple.com/documentation/gamecontroller/gcdirectionalgamepad).
    ///
    /// Available in iOS 14.3 and later, macOS 11.1 and later, Mac Catalyst 14.3 and later, tvOS 14.3 and later.
    ///
    /// Availability: iOS 7.0+, iPadOS 7.0+, macOS 10.9+, tvOS 9.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/gcsupportedgamecontrollers)
    static func GCSupportedGameControllers(_ values: [InfoPlistValue.GCSupportedGameControllersValue]) -> Self {
        let valueDicts: [Plist.Value] = values
            .map { Plist.Value.string($0.rawValue) }
            .map { .dictionary(["ProfileName" : $0]) }
        return Self(
            name: "Supported game controller types",
            key: "GCSupportedGameControllers",
            value: .array(valueDicts),
            availabilities: .init(
                iOS: "7.0",
                iPadOS: "7.0",
                macOS: "10.9",
                tvOS: "9.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value indicating whether the app supports a game controller.
    ///
    /// To add this key to the information property list, enable the Game Controllers capability in Xcode. If you set this key to `YES` and check ExtendedGamepad under the Game Controllers capability in your project, App Store adds a game controller support badge to your app. Then users can customize their game controller mappings in Settings and Preferences.
    ///
    /// - Important: To recommend the use of a game controller on iOS or if your app requires a game controller on visionOS, add an entry into the [`GCRequiresControllerUserInteraction`](https://developer.apple.com/documentation/bundleresources/information_property_list/gcrequirescontrolleruserinteraction) dictionary for that platform and set the value to `YES`.
    ///
    /// Availability: iOS 7.0+, iPadOS 7.0+, macOS 10.9+, tvOS 9.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/gcsupportscontrolleruserinteraction)
    static func GCSupportsControllerUserInteraction(_ value: Bool) -> Self {
        Self(
            name: "Supports Controller User Interaction",
            key: "GCSupportsControllerUserInteraction",
            value: .boolean(value),
            availabilities: .init(
                iOS: "7.0",
                iPadOS: "7.0",
                macOS: "10.9",
                tvOS: "9.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter values: The platforms for which your app requires or you recommend a game controller.
    ///
    /// Add this key to your information property list if your app requires a game controller in visionOS or to recommend a game controller in iOS. Adding this key requires you to enable the Game Controllers capability in Xcode and ExtendedGamepad under the Game Controllers capability. Xcode sets the value of [`GCSupportsControllerUserInteraction`](https://developer.apple.com/documentation/bundleresources/information_property_list/gcsupportscontrolleruserinteraction) to `YES` and includes an entry in the [`GCSupportedGameControllers`](https://developer.apple.com/documentation/bundleresources/information_property_list/gcsupportedgamecontrollers) dictionary with ProfileName set to ExtendedGamepad.
    ///
    /// If your app requires a game controller for input in visionOS, add [`visionOS`](https://developer.apple.com/documentation/bundleresources/information_property_list/gcrequirescontrolleruserinteraction/visionos) to the `GCRequiresControllerUserInteraction` dictionary and set the value to `YES`. If the value is `YES`, the App Store adds a Controller Required badge to your app.
    ///
    /// To recommend a game controller in iOS, add [`iOS`](https://developer.apple.com/documentation/bundleresources/information_property_list/gcrequirescontrolleruserinteraction/ios) to the dictionary and set the value to `YES`. If the value is `YES`, the App Store adds a Controller Recommended badge to your app.
    ///
    /// For apps built for visionOS, use only a [`visionOS`](https://developer.apple.com/documentation/bundleresources/information_property_list/gcrequirescontrolleruserinteraction/visionos) platform key in the dictionary. For iOS apps, you can include iOS or visionOS platform keys to indicate behavior in iOS or a compatible iPad or iPhone app running in visionOS.
    ///
    /// - Important: If your app doesn’t provide an alternate to the game controller for input in visionOS then you need to include an entry in the `GCRequiresControllerUserInteraction` dictionary and set the value to `YES`.
    ///
    /// Availability: iOS 15.0+, iPadOS 15.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/gcrequirescontrolleruserinteraction)
    static func GCRequiresControllerUserInteraction(_ values: [GCRequiresControllerUserInteractionEntry]) -> Self {
        Self.dict(
            name: nil,
            key: "GCRequiresControllerUserInteraction",
            childEntries: values,
            availabilities: .init(
                iOS: "15.0",
                iPadOS: "15.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value indicating whether the physical Apple TV Remote and the Apple TV Remote app operate as separate game controllers.
    ///
    /// If set to `YES`, your app supports multiple remotes with gamepads; otherwise, it doesn’t. If you support the 2nd Generation Siri Remote, set this key to `YES`. If you don’t set this key to `YES`, the combined micro gamepads won’t have the extra inputs of the 2nd Generation Siri Remote.
    ///
    /// Availability: tvOS 9.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/gcsupportsmultiplemicrogamepads)
    static func GCSupportsMultipleMicroGamepads(_ value: Bool) -> Self {
        Self(
            name: nil,
            key: "GCSupportsMultipleMicroGamepads",
            value: .boolean(value),
            availabilities: .init(
                tvOS: "9.0"
            )
        )
    }
    
    // MARK: - Intents
    
    /// - Parameter values: The names of the intent classes your app handles directly.
    ///
    /// Provide the class name of each [`INIntent`](https://developer.apple.com/documentation/sirikit/inintent) subclass your app can handle. To specify this information in Xcode, add the class names in the Supported Intents section of your app target in the Project Editor.
    ///
    /// For more information on handling intents in your app, see [`application(_:handlerFor:)`](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/3548063-application).
    ///
    /// - Tip: You can start handling an intent in your app even if you want to support the intent in iOS 13. List the intent in the Supported Intents sections for both the app target and the extension target. For an app running on iOS 13, the system routes the intent with [`handler(for:)`](https://developer.apple.com/documentation/sirikit/inintenthandlerproviding/1638898-handler), and for later iOS versions, it routes the intent with [`application(_:handlerFor:)`](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/3548063-application).
    ///
    /// Availability: iOS 14.0+, iPadOS 14.0+, tvOS 14.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/inintentssupported)
    static func INIntentsSupported(_ values: [String]) -> Self {
        Self(
            name: "Intents eligible for in-app handling",
            key: "INIntentsSupported",
            value: .array(values.map { .string($0) }),
            availabilities: .init(
                iOS: "14.0",
                iPadOS: "14.0",
                tvOS: "14.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter values: The names of the intent classes your app can’t handle when the user locks the device.
    ///
    /// To specify this information in Xcode, add the intent class name to your app target’s Supported Intents in the Project Editor. Then set the Authentication level to Restricted While Locked.
    ///
    /// Availability: iOS 14.0+, iPadOS 14.0+, tvOS 14.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/inintentsrestrictedwhilelocked)
    static func INIntentsRestrictedWhileLocked(_ values: [String]) -> Self {
        Self(
            name: "Restricted While Locked",
            key: "INIntentsRestrictedWhileLocked",
            value: .array(values.map { .string($0) }),
            availabilities: .init(
                iOS: "14.0",
                iPadOS: "14.0",
                tvOS: "14.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter values: The names of the intent classes your app can’t handle when the user locks the device or the system blocks access to protected data.
    ///
    /// To specify this information in Xcode, add the intent class name to your app target’s Supported Intents in the Project Editor. Then set the Authentication level to Restricted While Locked or Protected Data Unavailable.
    ///
    /// Availability: iOS 14.0+, iPadOS 14.0+, tvOS 14.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/inintentsrestrictedwhileprotecteddataunavailable)
    static func INIntentsRestrictedWhileProtectedDataUnavailable(_ values: [String]) -> Self {
        Self(
            name: "Intents restricted while locked or protected data unavailable",
            key: "INIntentsRestrictedWhileProtectedDataUnavailable",
            value: .array(values.map { .string($0) }),
            availabilities: .init(
                iOS: "14.0",
                iPadOS: "14.0",
                tvOS: "14.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter values: Types of media supported by your app’s media-playing intents.
    ///
    /// Specify one or more media categories to allow Siri to invoke your app’s intent handling when a user asks to play media. Use `INMediaCategoryGeneral` for media that doesn’t fit into any of the other categories, like white noise or sound effects.
    ///
    /// To specify this information in Xcode, add [`INPlayMediaIntent`](https://developer.apple.com/documentation/sirikit/inplaymediaintent) to your app’s list of Supported Intents. Then select the relevant media types in the list that appears.
    ///
    /// Availability: iOS 14.0+, iPadOS 14.0+, tvOS 14.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/insupportedmediacategories)
    static func INSupportedMediaCategories(_ values: [InfoPlistValue.INSupportedMediaCategoriesValue]) -> Self {
        Self(
            name: "Supported intent media categories",
            key: "INSupportedMediaCategories",
            value: .array(values.map { .string($0.rawValue) }),
            availabilities: .init(
                iOS: "14.0",
                iPadOS: "14.0",
                tvOS: "14.0",
                visionOS: "1.0"
            )
        )
    }
    
    // MARK: - Interprocess communication
    
    /// Availability: iOS 6.0+, iPadOS 6.0+, macOS 10.8+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/xpcservice)
    static func XPCService(_ values: [XPCServiceEntry]) -> Self {
        Self.dict(
            name: nil,
            key: "XPCService",
            childEntries: values,
            availabilities: .init(
                iOS: "6.0",
                iPadOS: "6.0",
                macOS: "10.8",
                tvOS: "9.0",
                watchOS: "2.0",
                visionOS: "1.0"
            )
        )
    }
    
    // MARK: - Live Activities
    
    /// - Parameter value: A Boolean value that indicates whether an app supports Live Activities.
    ///
    /// Set the corresponding value to `true` to enable your app to display live data on the Lock Screen and in the Dynamic Island. For more information, see [Displaying live data with Live Activities](https://developer.apple.com/documentation/activitykit/displaying-live-data-with-live-activities).
    ///
    /// Availability: iOS 16.1+, iPadOS 16.1+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssupportsliveactivities)
    static func NSSupportsLiveActivities(_ value: Bool) -> Self {
        Self(
            name: "Supports Live Activities",
            key: "NSSupportsLiveActivities",
            value: .boolean(value),
            availabilities: .init(
                iOS: "16.1",
                iPadOS: "16.1"
            )
        )
    }
    
    /// - Parameter value: A Boolean value that indicates whether an app can update its Live Activities frequently.
    ///
    /// Set the corresponding value to `true` to enable your Live Activities to receive frequent updates with remote push notifications. For more information, see Updating and ending your `Live Activity with ActivityKit push notifications`.
    ///
    /// Availability: iOS 16.2+, iPadOS 16.2+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssupportsliveactivitiesfrequentupdates)
    static func NSSupportsLiveActivitiesFrequentUpdates(_ value: Bool) -> Self {
        Self(
            name: nil,
            key: "NSSupportsLiveActivitiesFrequentUpdates",
            value: .boolean(value),
            availabilities: .init(
                iOS: "16.2",
                iPadOS: "16.2"
            )
        )
    }
    
    // MARK: - Maps
    
    /// - Parameter values: The modes of transportation for which the app is capable of giving directions.
    ///
    /// Availability: iOS 6.0+, iPadOS 6.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/mkdirectionsapplicationsupportedmodes)
    static func MKDirectionsApplicationSupportedModes(_ values: [InfoPlistValue.MKDirectionsApplicationSupportedModesValue]) -> Self {
        Self(
            name: "Maps routing app supported modes",
            key: "MKDirectionsApplicationSupportedModes",
            value: .array(values.map { .string($0.rawValue) }),
            availabilities: .init(
                iOS: "6.0",
                iPadOS: "6.0",
                visionOS: "1.0"
            )
        )
    }
    
    // MARK: - Messages
    
    /// Availability: iOS 17.0+, iPadOS 17.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsstickersharinglevel)
    static func NSStickerSharingLevel(_ value: String) -> Self {
        Self(
            name: nil,
            key: "NSStickerSharingLevel",
            value: .string(value),
            availabilities: .init(
                iOS: "17.0",
                iPadOS: "17.0"
            )
        )
    }
    
    // MARK: - Network
    
    /// - Parameter values: A list of service providers and the devices that they support.
    ///
    /// Use this key to define which devices [DeviceDiscoveryUI](https://developer.apple.com/documentation/devicediscoveryui) can connect with. The application services’s [`Browses`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapplicationservices/browses) key takes an array of dictionaries, where each dictionary contains a unique identifier, a usage description string, and a list of supported operating systems. You can define more than one application service for your apps. Each service has its own identifier, and can connect to a different subset of devices.
    ///
    /// Set these in your tvOS app target’s Info tab, or in its `Info.plist` file.
    ///
    /// ```
    /// <key>NSApplicationServices</key>
    /// <dict>
    ///     <key>Browses</key>
    ///     <array>
    ///         <dict>
    ///             <key>NSApplicationServiceIdentifier</key>
    ///             <string>MyApp-Controller</string>
    ///             <key>NSApplicationServiceUsageDescription</key>
    ///             <string>You can control this app using an iOS device.</string>
    ///             <key>NSApplicationServicePlatformSupport</key>
    ///             <array>
    ///                 <string>iOS</string>
    ///                 <string>iPadOS</string>
    ///             </array>
    ///         </dict>
    ///         <dict>
    ///             <key>NSApplicationServiceIdentifier</key>
    ///             <string>MyApp-Workout</string>
    ///             <key>NSApplicationServiceUsageDescription</key>
    ///             <string>Connects to a watchOS app to read heart-rate and active calories /// burned from a workout session.</string>
    ///             <key>NSApplicationServicePlatformSupport</key>
    ///             <array>
    ///                 <string>watchOS</string>
    ///             </array>
    ///         </dict>
    ///     </array>
    /// </dict>
    /// ```
    ///
    /// `NSApplicationServiceIdentifier`
    ///     A string that identifies your application service. You can use any string for your service, but you must use the same string for both your tvOS app and the iOS, iPadOS, and watchOS apps.
    ///
    /// `NSApplicationServiceUsageDescription`
    ///     A string that describes why you want to access the other devices. This is displayed to the user in the picker view.
    ///
    /// `NSApplicationServicePlatformSupport`
    ///     This is an array that contains strings representing the types of devices your application service can connect to. The valid values are “`iOS`”, “`iPadOS`”, and “`watchOS`”.
    ///
    /// You can use the human-readable key names in Xcode’s property list editor.
    ///
    /// ![](https://docs-assets.developer.apple.com/published/1d501bf574/rendered2x-1652989527.png)
    ///
    /// In the iOS, iPadOS, or watchOS app, use the [`Advertises`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapplicationservices/advertises) key, and give it an array of dictionaries where each dictionary lists the application service identifier for the connection types supported on this platform.
    ///
    /// ```
    /// <key>NSApplicationServices</key>
    /// <dict>
    ///     <key>Advertises</key>
    ///     <array>
    ///         <dict>
    ///             <key>NSApplicationServiceIdentifier</key>
    ///             <string>MyApp-Workout</string>
    ///         </dict>
    ///     </array>
    /// </dict>
    /// ```
    ///
    /// You can use the human-readable key names in Xcode’s property list editor.
    ///
    /// ![](https://docs-assets.developer.apple.com/published/7bba874047/rendered2x-1652989525.png)
    ///
    /// Availability: iOS 16.0+, iPadOS 16.0+, tvOS 16.0+, watchOS 9.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapplicationservices)
    static func NSApplicationServices(_ values: [NSApplicationServicesEntry]) -> Self {
        Self.dict(
            name: nil,
            key: "NSApplicationServices",
            childEntries: values,
            availabilities: .init(
                iOS: "16.0",
                iPadOS: "16.0",
                tvOS: "16.0",
                watchOS: "9.0"
            )
        )
    }
    
    // MARK: - NFC
    
    /// - Parameter values: A list of FeliCa system codes that the app supports.
    ///
    /// Each system code must be a discrete value. The wild card value (0xFF) isn't allowed.
    ///
    /// Availability: iOS 13.0+, iPadOS 13.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/systemcodes)
    static func comAppleDeveloperNFCReadersessionFelicaSystemcodes(_ values: [String]) -> Self {
        Self(
            name: "ISO18092 system codes for NFC Tag Reader Session",
            key: "com.apple.developer.nfc.readersession.felica.systemcodes",
            value: .array(values.map { .string($0) }),
            availabilities: .init(
                iOS: "13.0",
                iPadOS: "13.0"
            )
        )
    }
    
    /// - Parameter values: A list of application identifiers that the app supports.
    ///
    /// Availability: iOS 13.0+, iPadOS 13.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/select-identifiers)
    static func comAppleDeveloperNFCReadersessionIso7816SelectIdentifiers(_ values: [String]) -> Self {
        Self(
            name: "ISO7816 application identifiers for NFC Tag Reader Session",
            key: "com.apple.developer.nfc.readersession.iso7816.select-identifiers",
            value: .array(values.map { .string($0) }),
            availabilities: .init(
                iOS: "13.0",
                iPadOS: "13.0"
            )
        )
    }
    
    // MARK: - Safari Services
    
    /// - Parameter value: A string bundle ID that identifies the corresponding iOS app that contains a content blocker or Safari web extension.
    ///
    /// To enable extension syncing for your macOS app that contains a content blocker or Safari web extension, specify the bundle ID of the corresponding iOS app that contains the same content blocker or Safari web extension.
    ///
    /// Only add this to your `Info.plist` if the bundle ID for your macOS app is different from the bundle ID for your iOS app.
    ///
    /// For more information, see [Syncing Safari web extensions across devices and platforms](https://developer.apple.com/documentation/safariservices/safari_web_extensions/syncing_safari_web_extensions_across_devices_and_platforms).
    ///
    /// Availability: macOS 13.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/sfsafaricorrespondingiosappbundleidentifier)
    static func SFSafariCorrespondingIOSAppBundleIdentifier(_ value: String) -> Self {
        Self(
            name: "Safari - Associated iOS App Bundle Identifier",
            key: "SFSafariCorrespondingIOSAppBundleIdentifier",
            value: .string(value),
            availabilities: .init(
                macOS: "13.0"
            )
        )
    }
    
    /// - Parameter value: A string bundle ID that identifies the corresponding content blocker extension or Safari web extension on iOS.
    ///
    /// To enable extension syncing for your macOS content blocker extension or Safari web extension, specify the bundle ID of the corresponding iOS content blocker extension or Safari web extension.
    ///
    /// Only add this to your `Info.plist` if the bundle ID for your macOS app is different from the bundle ID for your iOS app.
    ///
    /// For more information, see [Syncing Safari web extensions across devices and platforms](https://developer.apple.com/documentation/safariservices/safari_web_extensions/syncing_safari_web_extensions_across_devices_and_platforms).
    ///
    /// Availability: macOS 13.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/sfsafaricorrespondingiosextensionbundleidentifier)
    static func SFSafariCorrespondingIOSExtensionBundleIdentifier(_ value: String) -> Self {
        Self(
            name: "Safari - Associated iOS Extension Bundle Identifier",
            key: "SFSafariCorrespondingIOSExtensionBundleIdentifier",
            value: .string(value),
            availabilities: .init(
                macOS: "13.0"
            )
        )
    }
    
    /// - Parameter value: A string bundle ID that identifies the corresponding macOS app that contains a content blocker or Safari web extension.
    ///
    /// To enable extension syncing for your iOS app that contains a content blocker or Safari web extension, specify the bundle ID of the corresponding macOS app that contains the same content blocker or Safari web extension.
    ///
    /// Only add this to your `Info.plist` if the bundle ID for your iOS app is different from the bundle ID for your macOS app.
    ///
    /// For more information, see [Syncing Safari web extensions across devices and platforms](https://developer.apple.com/documentation/safariservices/safari_web_extensions/syncing_safari_web_extensions_across_devices_and_platforms).
    ///
    /// Availability: iOS 16.0+, iPadOS 16.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/sfsafaricorrespondingmacosappbundleidentifier)
    static func SFSafariCorrespondingMacOSAppBundleIdentifier(_ value: String) -> Self {
        Self(
            name: "Safari - Associated macOS App Bundle Identifier",
            key: "SFSafariCorrespondingMacOSAppBundleIdentifier",
            value: .string(value),
            availabilities: .init(
                iOS: "16.0",
                iPadOS: "16.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A string bundle ID that identifies the corresponding content blocker extension or Safari web extension on macOS.
    ///
    /// To enable extension syncing for your iOS content blocker extension or Safari web extension, specify the bundle ID of the corresponding macOS content blocker extension or Safari web extension.
    ///
    /// Only add this to your `Info.plist` if the bundle ID for your iOS app is different from the bundle ID for your macOS app.
    ///
    /// For more information, see [Syncing Safari web extensions across devices and platforms](https://developer.apple.com/documentation/safariservices/safari_web_extensions/syncing_safari_web_extensions_across_devices_and_platforms).
    ///
    /// Availability: iOS 16.0+, iPadOS 16.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/sfsafaricorrespondingmacosextensionbundleidentifier)
    static func SFSafariCorrespondingMacOSExtensionBundleIdentifier(_ value: String) -> Self {
        Self(
            name: "Safari - Associated macOS Extension Bundle Identifier",
            key: "SFSafariCorrespondingMacOSExtensionBundleIdentifier",
            value: .string(value),
            availabilities: .init(
                iOS: "16.0",
                iPadOS: "16.0",
                visionOS: "1.0"
            )
        )
    }
    
    // MARK: - Sensors
    
    /// - Parameter value: A Boolean value that indicates whether use of an app contributes data to SensorKit while the user is enrolled in a health research study.
    ///
    /// The default value is `YES`.
    ///
    /// Availability: iOS 17.0+, iPadOS 17.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/srresearchdatageneration)
    static func SRResearchDataGeneration(_ value: Bool) -> Self {
        Self(
            name: nil,
            key: "SRResearchDataGeneration",
            value: .boolean(value),
            availabilities: .init(
                iOS: "17.0",
                iPadOS: "17.0"
            )
        )
    }
    
    // MARK: - Service management
    
    /// - Parameter values: The Service Management clients authorized to add and remove tools.
    ///
    /// Availability: macOS 10.6+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/smauthorizedclients)
    static func SMAuthorizedClients(_ values: [String]) -> Self {
        Self(
            name: "Clients allowed to add and remove tool",
            key: "SMAuthorizedClients",
            value: .array(values.map { .string($0) }),
            availabilities: .init(
                macOS: "10.6"
            )
        )
    }
    
    /// - Parameter value: The Service Management tools owned by the app.
    ///
    /// Availability: macOS 10.6+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/smprivilegedexecutables)
    static func SMPrivilegedExecutables(_ values: [String: String]) -> Self {
        var valueDict: [String: Plist.Value] = [:]
        for (key, value) in values {
            valueDict[key] = .string(value)
        }
        return Self(
            name: "Tools owned after installation",
            key: "SMPrivilegedExecutables",
            value: .dictionary(valueDict),
            availabilities: .init(
                macOS: "10.6"
            )
        )
    }
    
    // MARK: - StoreKit
    
    /// - Parameter values: An array of dictionaries containing a list of ad network IDs.
    ///
    /// Apps that display ads and initiate install-validation information to share with ad networks need to include the ad network IDs in this key.
    ///
    /// Each dictionary contains one [`SKAdNetworkIdentifier`](https://developer.apple.com/documentation/bundleresources/information_property_list/skadnetworkitems/skadnetworkidentifier). Provide one dictionary for each ad network that you work with.
    ///
    /// - Important: Ad network IDs are case-sensitive and are in lowercase.
    ///
    /// For more information, see [Configuring a source app](https://developer.apple.com/documentation/storekit/skadnetwork/configuring_a_source_app).
    ///
    /// Availability: iOS 11.3+, iPadOS 11.3+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/skadnetworkitems)
    static func SKAdNetworkItems(_ values: [[SKAdNetworkItemsEntry]]) -> Self {
        Self.dictArray(
            name: nil,
            key: "SKAdNetworkItems",
            childEntries: values,
            availabilities: .init(
                iOS: "11.3",
                iPadOS: "11.3"
            )
        )
    }
    
    /// - Parameter values: A dictionary that contains localized URLs to an external website for account creation or management.
    ///
    /// A dictionary with keys that are lowercase ISO 3166-1 alpha-2 country codes and values that are URLs. The dictionary must contain a key with the string \* that maps to a default URL.
    ///
    /// Use this information property list key if your app has the [`com.apple.developer.storekit.external-link.account`](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_developer_storekit_external-link_account) entitlement. The following shows a property list with a default URL and a specific URL for the `jp` locale:
    ///
    /// ```
    /// <plist>
    /// <dict>
    ///     <key>SKExternalLinkAccount</key>
    ///     <dict>
    ///         <key>*</key>
    ///         <string>https://example.com</string>
    ///         <key>jp</key>
    ///         <string>https://example.com/jp</string>
    ///     </dict>
    /// </dict>
    /// </plist>
    /// ```
    ///
    /// Availability: iOS 15.4+, iPadOS 15.4+, tvOS 16.4+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/skexternallinkaccount)
    static func SKExternalLinkAccount(_ values: [String: String]) -> Self {
        var valueDict: [String: Plist.Value] = [:]
        for (key, value) in values {
            valueDict[key] = .string(value)
        }
        return Self(
            name: nil,
            key: "SKExternalLinkAccount",
            value: .dictionary(valueDict),
            availabilities: .init(
                iOS: "15.4",
                iPadOS: "15.4",
                tvOS: "16.4"
            )
        )
    }
    
    /// - Parameter values: A string array of country codes that indicates your app supports external purchases.
    ///
    /// Use this information property list key if your app has the [`com.apple.developer.storekit.external-purchase`](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_developer_storekit_external-purchase) entitlement.
    ///
    /// To the array, add a string containing the lowercased ISO 3166-1 alpha-2 country code for each country where your app supports external purchases. The following code example shows a property list entry with two strings, for the Netherlands (`nl`) and Italy (`it`):
    ///
    /// ```
    /// <plist>
    /// <dict>
    ///     <key>SKExternalPurchase</key>
    ///     <array>
    ///         <string>nl</string>
    ///         <string>it</string>
    ///     </array>
    /// </dict>
    /// </plist>
    /// ```
    ///
    /// Use valid country codes for the following allowed countries or regions:
    ///
    /// - In the European Union: Austria (`at`), Belgium (`be`), Bulgaria (`bg`), Croatia (`hr`), Cyprus (`cy`), Czechia (`cz`), Denmark (`dk`), Estonia (`ee`), Finland (`fi`), France (`fr`), Germany (`de`), Greece (`gr`), Hungary (`hu`), Ireland (`ie`), Italy (`it`), Latvia (`lv`), Lithuania (`lt`), Luxembourg (`lu`), Malta (`mt`), Netherlands (`nl`), Poland (`pl`), Portugal (`pt`), Romania (`ro`), Slovakia (`sk`), Slovenia (`si`), Spain (`es`), Sweden (`se`)
    ///
    /// - South Korea (`kr`)
    ///
    /// For more information, see [External Purchase](https://developer.apple.com/documentation/storekit/external_purchase).
    ///
    /// Availability: iOS 15.4+, iPadOS 15.4+, Mac Catalyst 17.4+, macOS 14.4+, tvOS 17.4+, watchOS 10.4+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/skexternalpurchase)
    static func SKExternalPurchase(_ values: [String]) -> Self {
        Self(
            name: nil,
            key: "SKExternalPurchase",
            value: .array(values.map { .string($0) }),
            availabilities: .init(
                iOS: "15.4",
                iPadOS: "15.4",
                macCatalyst: "17.4",
                macOS: "14.4",
                tvOS: "17.4",
                watchOS: "10.4",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter values: A dictionary that contains URLs to websites where people using your app can make external purchases, for supported regions.
    ///
    /// A dictionary that contains URLs to websites where people using your app can make external purchases, for supported regions.
    ///
    /// Valid country codes include those for the European Union: Austria (`at`), Belgium (`be`), Bulgaria (`bg`), Croatia (`hr`), Cyprus (`cy`), Czechia (`cz`), Denmark (`dk`), Estonia (`ee`), Finland (`fi`), France (`fr`), Germany (`de`), Greece (`gr`), Hungary (`hu`), Ireland (`ie`), Italy (`it`), Latvia (`lv`), Lithuania (`lt`), Luxembourg (`lu`), Malta (`mt`), Netherlands (`nl`), Poland (`pl`), Portugal (`pt`), Romania (`ro`), Slovakia (`sk`), Slovenia (`si`), Spain (`es`), Sweden (`se`); and Iceland (`is`), Norway (`no`), Russia (`ru`), and United States (`us`).
    ///
    /// Use this information property list key if your app has the [`com.apple.developer.storekit.external-purchase-link`](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_developer_storekit_external-purchase-link) entitlement and your app has a minimum OS version prior to iOS 17.5, macOS 14.5, watchOS 10.5, tvOS 17.5, or visionOS 1.2. Otherwise, use the [`SKExternalPurchaseMultiLink`](https://developer.apple.com/documentation/bundleresources/information_property_list/skexternalpurchasemultilink) property list key to provide multiple URLs for country codes that allow multiple links.
    ///
    /// Include one key entry for each country code where your app supports an external purchase link. Provide a destination URL (link to your website) for your app to open when the country code in the key matches the device’s App Store storefront. If you support multiple country codes, you may provide the same or different destination URLs for each country code.
    ///
    /// - Important: At all times, the destination URLs that you provide in the property list key must match the values in your app binary that you submit to App Review.
    ///
    /// Make sure the destination URL meets all of the following conditions:
    ///
    /// - Uses the HTTPS scheme
    ///
    /// - Forms a valid, absolute URL
    ///
    /// - Contains no query parameters
    ///
    /// - Contains 1,000 or fewer ASCII characters.
    ///
    /// The following code example shows a property list entry with a single country code key, for the Netherlands (`nl`). Replace the string \"`https://example.com`\" below with your link:
    ///
    /// ```
    /// <plist>
    /// <dict>
    ///     <key>SKExternalPurchaseLink</key>
    ///     <dict>
    ///         <key>nl</key>
    ///         <string>https://example.com</string>
    ///     </dict>
    /// </dict>
    /// </plist>
    /// ```
    ///
    /// The following code example shows a property list entry with keys for more than one country code. Replace the \“`https://example.com`\“ strings with your links:
    ///
    /// ```
    /// <plist>
    /// <dict>
    ///     <key>SKExternalPurchaseLink</key>
    ///     <dict>
    ///         <key>at</key>
    ///         <string>https://ex1.example.com</string>
    ///         <key>nl</key>
    ///         <string>https://ex2.example.com</string>
    ///         <key>it</key>
    ///         <string>https://ex2.example.com</string>
    ///     </dict>
    /// </dict>
    /// </plist>
    /// ```
    ///
    /// For more information, see [External Purchase](https://developer.apple.com/documentation/storekit/external_purchase).
    ///
    /// Availability: iOS 15.4+, iPadOS 15.4+, Mac Catalyst 17.4+, macOS 14.4+, tvOS 17.4+, watchOS 10.4+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/skexternalpurchaselink)
    static func SKExternalPurchaseLink(_ values: [String: String]) -> Self {
        var valueDict: [String: Plist.Value] = [:]
        for (key, value) in values {
            valueDict[key] = .string(value)
        }
        return Self(
            name: nil,
            key: "SKExternalPurchaseLink",
            value: .dictionary(valueDict),
            availabilities: .init(
                iOS: "15.4",
                iPadOS: "15.4",
                macCatalyst: "17.4",
                macOS: "14.4",
                tvOS: "17.4",
                watchOS: "10.4",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter values: A dictionary that contains an array of URLs to websites where people using your app can make external purchases.
    ///
    /// A dictionary with a key that is the lowercased ISO 3166-1 alpha-2 country code, and an array of strings that represent valid destination URLs.
    ///
    /// Valid country codes include those for the European Union: Austria (`at`), Belgium (`be`), Bulgaria (`bg`), Croatia (`hr`), Cyprus (`cy`), Czechia (`cz`), Denmark (`dk`), Estonia (`ee`), Finland (`fi`), France (`fr`), Germany (`de`), Greece (`gr`), Hungary (`hu`), Ireland (`ie`), Italy (`it`), Latvia (`lv`), Lithuania (`lt`), Luxembourg (`lu`), Malta (`mt`), Netherlands (`nl`), Poland (`pl`), Portugal (`pt`), Romania (`ro`), Slovakia (`sk`), Slovenia (`si`), Spain (`es`), Sweden (`se`); and Iceland (`is`), Norway (`no`), Russia (`ru`), and United States (`us`).
    ///
    /// Use this information property list key if your app has the [`com.apple.developer.storekit.external-purchase-link`](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_developer_storekit_external-purchase-link) entitlement.
    ///
    /// Include a key entry for each country code where your app supports an external purchase link. Provide from one to five destination URLs (links to your website) for your app to choose from for each country code.
    ///
    /// - Note: You can provide up to five links if your app qualifies for the StoreKit External Purchase Link entitlement as described in [Distributing music streaming apps in the EEA that provide an external purchase link](https://developer.apple.com/support/music-streaming-services-entitlement-eea/).  Otherwise, provide one link for each country code.
    ///
    /// Your app accesses these URLs through the [`eligibleURLs`](https://developer.apple.com/documentation/storekit/externalpurchaselink/4390145-eligibleurls) array in the [`ExternalPurchaseLink`](https://developer.apple.com/documentation/storekit/externalpurchaselink) object, and uses the link you select with the [`open(url:)`](https://developer.apple.com/documentation/storekit/externalpurchaselink/4390146-open) method in the [`ExternalPurchaseLink`](https://developer.apple.com/documentation/storekit/externalpurchaselink) object.
    ///
    /// - Important: At all times, the destination URLs that you provide in the property list key must match the values in your app binary that you submit to App Review.
    ///
    /// Make sure each destination URL meets all of the following conditions:
    ///
    /// - Uses the HTTPS scheme
    ///
    /// - Forms a valid, absolute URL
    ///
    /// - Contains no query parameters
    
    /// - Contains 1,000 or fewer ASCII characters.
    ///
    /// The following code example shows a property list entry with keys for several country codes, and links for each entry:
    ///
    /// ```
    /// <key>SKExternalPurchaseMultiLink</key>
    /// <dict>
    ///     <key>es</key>
    ///     <array>
    ///         <string>https://www.example.com/es1</string>
    ///         <string>https://www.example.com/new-user-es</string>
    ///         <string>https://www.example.com/seasonal-sale-es</string>
    ///         <string>https://www.example.com/es2</string>
    ///         <string>https://www.example.com/es3</string>
    ///     </array>
    ///     <key>fr</key>
    ///     <array>
    ///         <string>https://www.example.com/fr</string>
    ///         <string>https://www.example.com/global-sale</string>
    ///         <string>https://www.example.com/new-user-fr</string>
    ///     </array>
    ///     <key>it</key>
    ///     <array>
    ///         <string>https://www.example.com/global-sale</string>
    ///     </array>
    /// </dict>
    /// ```
    ///
    /// The order of the links is not significant.
    ///
    /// For more information, see [External Purchase](https://developer.apple.com/documentation/storekit/external_purchase) and [`ExternalPurchaseLink`](https://developer.apple.com/documentation/storekit/externalpurchaselink).
    ///
    /// ## Provide up to the maximum number of links
    ///
    /// The following country codes have a maximum of five links for apps that qualify for the StoreKit External Purchase Link entitlement as described in [Distributing music streaming apps in the EEA that provide an external purchase link](https://developer.apple.com/support/music-streaming-services-entitlement-eea/): Austria (`at`), Belgium (`be`), Bulgaria (`bg`), Croatia (`hr`), Cyprus (`cy`), Czechia (`cz`), Denmark (`dk`), Estonia (`ee`), Finland (`fi`), France (`fr`), Germany (`de`), Greece (`gr`), Hungary (`hu`), Ireland (`ie`), Italy (`it`), Latvia (`lv`), Lithuania (`lt`), Luxembourg (`lu`), Malta (`mt`), Netherlands (`nl`), Poland (`pl`), Portugal (`pt`), Romania (`ro`), Slovakia (`sk`), Slovenia (`si`), Spain (`es`), Sweden (`se`), Iceland (`is`), Norway (`no`). Otherwise, the maximum is one link, for valid country codes.
    ///
    /// Count the total number of unique links you provide for each country code by adding together the number of links you provide in the `SKExternalPurchaseMultiLink` and [`SKExternalPurchaseLink`](https://developer.apple.com/documentation/bundleresources/information_property_list/skexternalpurchaselink) property list keys.
    ///
    /// For example, if a country code has a maximum of five links and you provide five unique links in the `SKExternalPurchaseMultiLink` key, then specify one of the same five links in the `SKExternalPurchaseLink` key to avoid exceeding the maximum allowed links. If a country code has a maximum of one link, the `SKExternalPurchaseMultiLink` and `SKExternalPurchaseLink` keys need to specify the same link.
    ///
    /// Availability: iOS 17.5+, iPadOS 17.5+, Mac Catalyst 17.5+, macOS 14.5+, tvOS 17.5+, watchOS 10.5+, visionOS 1.2+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/skexternalpurchasemultilink)
    static func SKExternalPurchaseMultiLink(_ values: [String: String]) -> Self {
        var valueDict: [String: Plist.Value] = [:]
        for (key, value) in values {
            valueDict[key] = .string(value)
        }
        return Self(
            name: nil,
            key: "SKExternalPurchaseMultiLink",
            value: .dictionary(valueDict),
            availabilities: .init(
                iOS: "17.5",
                iPadOS: "17.5",
                macCatalyst: "17.5",
                macOS: "14.5",
                tvOS: "17.5",
                watchOS: "10.5",
                visionOS: "1.2"
            )
        )
    }
    
    /// - Parameter value: A Boolean value that determines whether StoreKit includes finished consumable in-app purchases in transaction information.
    ///
    /// By default, this value is `false`. When it’s `false`, StoreKit doesn’t return finished consumables (unless refunded or revoked) in the transaction information from the following APIs:
    ///
    /// - The [`all`](https://developer.apple.com/documentation/storekit/transaction/3851203-all) sequence in [`Transaction`](https://developer.apple.com/documentation/storekit/transaction), which returns the customer’s transaction history for your app
    ///
    /// - The [`latest(for:)`](https://developer.apple.com/documentation/storekit/transaction/3792063-latest) in Transaction, which returns the customer’s most recent transaction for a specific product
    ///
    /// - The [`latestTransaction`](https://developer.apple.com/documentation/storekit/product/3803206-latesttransaction) in [`Product`](https://developer.apple.com/documentation/storekit/product), which provides the customer’s most recent transaction for the product
    ///
    /// When you set this value to `true`, StoreKit includes all in-app purchase transactions — including all finished consumables — in the transaction information when you use the `all`, `latest(for:)`, and `latestTransaction` APIs.
    ///
    /// - Warning: Before you set `SKIncludeConsumableInAppPurchaseHistory` to `true`, be sure you have a way to reconcile a customer’s consumable transactions on your server, not only on the device. For example, store a transaction’s unique transaction identifier, [`Transaction.ID`](https://developer.apple.com/documentation/storekit/transaction/id), along with its finish state to avoid unintentionally delivering content multiple times if the customer reinstalls the app. Use [`unfinished`](https://developer.apple.com/documentation/storekit/transaction/3856631-unfinished) to get and process unfinished transactions.
    ///
    /// Availability: iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, watchOS 11.0+, visionOS 2.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/skincludeconsumableinapppurchasehistory)
    static func SKIncludeConsumableInAppPurchaseHistory(_ value: Bool) -> Self {
        Self(
            name: nil,
            key: "SKIncludeConsumableInAppPurchaseHistory",
            value: .boolean(value),
            availabilities: .init(
                iOS: "18.0",
                iPadOS: "18.0",
                macCatalyst: "18.0",
                macOS: "15.0",
                tvOS: "18.0",
                watchOS: "11.0",
                visionOS: "2.0"
            )
        )
    }
    
    // MARK: - User activities
    
    /// - Parameter values: The user activity types that the app supports.
    ///
    /// Availability: iOS 8.0+, iPadOS 8.0+, macOS 10.10+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsuseractivitytypes)
    static func NSUserActivityTypes(_ values: [String]) -> Self {
        Self(
            name: nil,
            key: "NSUserActivityTypes",
            value: .array(values.map { .string($0) }),
            availabilities: .init(
                iOS: "8.0",
                iPadOS: "8.0",
                macOS: "10.10"
            )
        )
    }
    
}

extension InfoPlistEntry.InfoPlistValue {
    
    enum NSAccessorySetupSupportsValue: String {
        case Bluetooth
        case WiFi
    }
    
    enum ENAPIVersionValue: Int {
        case v1 = 1
        case v2 = 2
    }
    
    enum GCSupportedGameControllersValue: String {
        /// The extended set of gamepad controls. See [`GCExtendedGamepad`](https://developer.apple.com/documentation/gamecontroller/gcextendedgamepad).
        case ExtendedGamepad
        /// The 1st Generation Siri Remote. See [`GCMicroGamepad`](https://developer.apple.com/documentation/gamecontroller/gcmicrogamepad).
        case MicroGamepad
        /// The 2nd Generation Siri Remote. A directional pad without motion or rotation. See [`GCDirectionalGamepad`](https://developer.apple.com/documentation/gamecontroller/gcdirectionalgamepad).
        case DirectionalGamepad
    }
    
    enum INSupportedMediaCategoriesValue: String {
        /// Audiobooks
        case INMediaCategoryAudiobooks
        /// Music
        case INMediaCategoryMusic
        /// General
        case INMediaCategoryGeneral
        /// Podcasts
        case INMediaCategoryPodcasts
        /// Radio
        case INMediaCategoryRadio
        
    }
    
    enum MKDirectionsApplicationSupportedModesValue: String {
        case MKDirectionsModePlane
        case MKDirectionsModeBike
        case MKDirectionsModeBus
        case MKDirectionsModeCar
        case MKDirectionsModeFerry
        case MKDirectionsModePedestrian
        case MKDirectionsModeRideShare
        case MKDirectionsModeStreetCar
        case MKDirectionsModeSubway
        case MKDirectionsModeTaxi
        case MKDirectionsModeTrain
        case MKDirectionsModeOther
    }
    
}
