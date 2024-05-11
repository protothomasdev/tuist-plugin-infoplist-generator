//
//  InfoPlist+BundleConfiguration.swift
//  ProjectDescriptionHelpers
//
//  Created by Thomas Meyer on 05.05.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    // MARK: - Categorization
    
    /// - Parameter value: The type of bundle.
    ///
    /// This key consists of a four-letter code for the bundle type. For apps, the code is APPL, for frameworks, it's FMWK, and for bundles, it's BNDL. The default value is derived from the bundle extension or, if it can't be derived, the default value is BNDL.
    ///
    /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundlepackagetype)
    static func CFBundlePackageType(_ value: InfoPlistValue.CFBundlePackageType) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Bundle OS Type code",
            key: "CFBundlePackageType",
            value: .string(value.rawValue),
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
    
    /// - Parameter value: The category that best describes your app for the App Store.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/lsapplicationcategorytype)
    static func LSApplicationCategoryType(_ value: InfoPlistValue.ApplicationCategoryType) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Application Category",
            key: "LSApplicationCategoryType",
            value: .string(value.rawValue),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    // MARK: - Identification
    
    /// - Parameter value: A unique identifier for a bundle.
    ///
    /// A *bundle ID* uniquely identifies a single app throughout the system. The bundle ID string must contain only alphanumeric characters (A–Z, a–z, and 0–9), hyphens (-), and periods (.). Typically, you use a reverse-DNS format for bundle ID strings. Bundle IDs are case-insensitive.
    ///
    /// The operating system uses the bundle ID to identify the app when applying specified preferences. Similarly, [Launch Services](https://developer.apple.com/documentation/coreservices/launch_services) uses the bundle ID to locate an app capable of opening a particular file. The bundle ID also validates an app’s signature.
    ///
    /// - Important: The bundle ID in the information property list must match the bundle ID you enter in App Store Connect. After you upload a build to App Store Connect, you can’t change the bundle ID or delete the associated explicit App ID in your developer account.
    ///
    /// ## watchOS Apps with Companion iOS App Considerations
    ///
    /// For watchOS apps that have a companion iOS app in the same project, the embedded WatchKit app and WatchKit extension targets must have the same bundle ID prefix as the iOS app. The WatchKit app must have the format [Bundle ID].watchkitapp, and the WatchKit extension must have the format [Bundle ID].watchkitextension.
    ///
    /// If you change the iOS app's bundle ID, also change the WatchKit app's [WKCompanionAppBundleIdentifier](https://developer.apple.com/documentation/bundleresources/information_property_list/wkcompanionappbundleidentifier) key and the WatchKit extension's [WKAppBundleIdentifier](https://developer.apple.com/documentation/bundleresources/information_property_list/wkappbundleidentifier) key to match.
    ///
    /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleidentifier)
    static func CFBundleIdentifier(_ value: String) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Bundle identifier",
            key: "CFBundleIdentifier",
            value: .string(value),
            availabilities: .init(
                iOS: "2.0",
                iPadOS: "2.0",
                macOS: "10.0",
                tvOS: "9.0",
                watchOS: "2.0",
                visionOS: "1.0"
            ),
            isRequired: true
        )
    }
    
    /// - Parameter value: The bundle ID of the watchOS app.
    ///
    /// This key is automatically included in your WatchKit extension’s information property list when you create a watchOS project from a template.
    ///
    /// Availability: watchOS 2.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/wkappbundleidentifier)
    static func WKAppBundleIdentifier(_ value: String) -> InfoPlistEntry {
        InfoPlistEntry(
            name: nil,
            key: "WKAppBundleIdentifier",
            value: .string(value),
            availabilities: .init(
                watchOS: "2.0"
            )
        )
    }
    
    /// - Parameter value: The bundle ID of the watchOS app’s companion iOS app.
    ///
    /// Xcode automatically includes this key in the WatchKit app’s information property list when you create a watchOS project from a template. The value should be the same as the iOS app’s [CFBundleIdentifier](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleidentifier).
    ///
    /// Availability: watchOS 2.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/wkcompanionappbundleidentifier)
    static func WKCompanionAppBundleIdentifier(_ value: String) -> InfoPlistEntry {
        InfoPlistEntry(
            name: nil,
            key: "WKCompanionAppBundleIdentifier",
            value: .string(value),
            availabilities: .init(
                watchOS: "2.0"
            )
        )
    }
    
    // MARK: - Naming
    
    /// - Parameter value: A user-visible short name for the bundle.
    ///
    /// This name can contain up to 15 characters. The system may display it to users if [CFBundleDisplayName](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundledisplayname) isn't set.
    ///
    /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundlename)
    static func CFBundleName(_ value: String) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Bundle name",
            key: "CFBundleName",
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
    
    /// - Parameter value: The user-visible name for the bundle, used by Siri and visible on the iOS Home screen.
    ///
    /// Use this key if you want a product name that's longer than [CFBundleName](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundlename).
    ///
    /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundledisplayname)
    static func CFBundleDisplayName(_ value: String) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Bundle display name",
            key: "CFBundleDisplayName",
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
    
    /// - Parameter value: A replacement for the app name in text-to-speech operations.
    ///
    /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundlespokenname)
    static func CFBundleSpokenName(_ value: String) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Accessibility Bundle Name",
            key: "CFBundleSpokenName",
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
    
    // MARK: - Bundle version
    
    /// - Parameter value: The version of the build that identifies an iteration of the bundle.
    ///
    /// This key is a machine-readable string composed of one to three period-separated integers, such as 10.14.1. The string can only contain numeric characters (0-9) and periods.
    ///
    /// Each integer provides information about the build version in the format [Major].[Minor].[Patch]:
    /// - Major: A major revision number.
    /// - Minor: A minor revision number.
    /// - Patch: A maintenance release number.
    ///
    /// You can include more integers but the system ignores them.
    ///
    /// You can also abbreviate the build version by using only one or two integers, where missing integers in the format are interpreted as zeros. For example, 0 specifies 0.0.0, 10 specifies 10.0.0, and 10.5 specifies 10.5.0.
    ///
    /// This key is required by the App Store and is used throughout the system to identify the version of the build. For macOS apps, increment the build version before you distribute a build.
    ///
    /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleversion)
    static func CFBundleVersion(_ value: String) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Bundle version",
            key: "CFBundleVersion",
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
    
    /// - Parameter value: The release or version number of the bundle.
    ///
    /// This key is a user-visible string for the version of the bundle. The required format is three period-separated integers, such as 10.14.1. The string can only contain numeric characters (0-9) and periods.
    ///
    /// Each integer provides information about the build version in the format [Major].[Minor].[Patch]:
    /// - Major: A major revision number.
    /// - Minor: A minor revision number.
    /// - Patch: A maintenance release number.
    ///
    /// This key is used throughout the system to identify the version of the bundle.
    ///
    /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleshortversionstring)
    static func CFBundleShortVersionString(_ value: String) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Bundle versions string, short",
            key: "CFBundleShortVersionString",
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
    
    /// - Parameter value: The current version of the Information Property List structure.
    ///
    /// Xcode adds this key automatically. Don’t change the value.
    ///
    /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleinfodictionaryversion)
    static func CFBundleInfoDictionaryVersion(_ value: String) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "InfoDictionary version",
            key: "CFBundleInfoDictionaryVersion",
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
    
    /// - Parameter value: A human-readable copyright notice for the bundle.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nshumanreadablecopyright)
    static func NSHumanReadableCopyright(_ value: String) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Copyright (human-readable)",
            key: "NSHumanReadableCopyright",
            value: .string(value),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    // MARK: - Operating system version
    
    /// - Parameter value: The minimum version of the operating system required for the app to run in macOS.
    ///
    /// Use this key to indicate the minimum macOS release that your app supports. The App Store uses this key to indicate the macOS releases on which your app can run, and to show compatibility with a person’s Mac.
    ///
    /// Starting with macOS 11.4, the lowest version number you can specify as the value for the LSMinimumSystemVersion key is:
    /// - 10 if your app links against the macOS SDK.
    /// - 10.15 if your app links against the iOS 14.3 SDK (or later) and builds using Mac Catalyst.
    /// - 11 if your iPad or iPhone app links against the iOS 14.3 SDK (or later) and can run on a Mac with Apple silicon.
    ///
    /// To specify the minimum version of iOS, iPadOS, tvOS, or watchOS that your app supports, use [MinimumOSVersion](https://developer.apple.com/documentation/bundleresources/information_property_list/minimumosversion).
    ///
    /// Availability: macOS 10.0+, Mac Catalyst 13.0
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/lsminimumsystemversion)
    static func LSMinimumSystemVersion(_ value: String) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Minimum system version",
            key: "LSMinimumSystemVersion",
            value: .string(value),
            availabilities: .init(
                macCatalyst: "13.0",
                macOS: "10.0"
            )
        )
    }
    
    /// - Parameter values: The minimum version of macOS required for the app to run on a set of architectures.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/lsminimumsystemversionbyarchitecture)
    static func LSMinimumSystemVersionByArchitecture(_ values: [InfoPlistKey.MinimumSystemVersionArchitecture: String]) -> InfoPlistEntry {
        var valueDict: [String: Plist.Value] = [:]
        for (key, value) in values {
            valueDict[key.rawValue] = .string(value)
        }
        return InfoPlistEntry(
            name: "Minimum system versions, per-architecture",
            key: "LSMinimumSystemVersionByArchitecture",
            value: .dictionary(valueDict),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    /// - Parameter value: The minimum version of the operating system required for the app to run in iOS, iPadOS, tvOS, and watchOS.
    ///
    /// The App Store uses this key to indicate the OS releases on which your app can run.
    ///
    /// Don’t specify MinimumOSVersion in the Info.plist file for apps built in Xcode. It uses the value of the Deployment Target in the General settings pane.
    ///
    /// For macOS, see [LSMinimumSystemVersion](https://developer.apple.com/documentation/bundleresources/information_property_list/lsminimumsystemversion).
    ///
    /// Availability:  iOS 3.0+, iPadOS 3.0+,  tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/minimumosversion)
    static func MinimumOSVersion(_ value: String) -> InfoPlistEntry {
        return InfoPlistEntry(
            name: nil,
            key: "MinimumOSVersion",
            value: .string(value),
            availabilities: .init(
                iOS: "3.0",
                iPadOS: "3.0",
                tvOS: "9.0",
                watchOS: "2.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value indicating whether the app must run in iOS.
    ///
    /// Availability:  iOS 12.0+, iPadOS 12.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/minimumosversion)
    static func LSRequiresIPhoneOS(_ value: Bool) -> InfoPlistEntry {
        return InfoPlistEntry(
            name: "Application requires iPhone environment",
            key: "LSRequiresIPhoneOS",
            value: .boolean(value),
            availabilities: .init(
                iOS: "12.0",
                iPadOS: "12.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean indication that your project has a WatchKit App Extension target.
    ///
    /// Availability:  watchOS 7.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/wkapplication)
    static func WKApplication(_ value: Bool) -> InfoPlistEntry {
        return InfoPlistEntry(
            name: nil,
            key: "WKApplication",
            value: .boolean(value),
            availabilities: .init(
                watchOS: "7.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value that indicates whether the bundle is a watchOS app.
    ///
    /// Xcode automatically includes this key in the WatchKit app’s information property list when you create a watchOS project from a template.
    ///
    /// Availability:  watchOS 2.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/wkwatchkitapp)
    static func WKWatchKitApp(_ value: Bool) -> InfoPlistEntry {
        return InfoPlistEntry(
            name: nil,
            key: "WKWatchKitApp",
            value: .boolean(value),
            availabilities: .init(
                watchOS: "2.0"
            )
        )
    }
    
    // MARK: Localization
    
    /// - Parameter value: The default language and region for the bundle, as a language ID.
    ///
    /// The system uses this key as the language if it can't locate a resource for the user’s preferred language. The value should be a language ID that identifies a language, dialect, or script.
    ///
    /// ## Languages
    /// For a language used in many regions, use a code that represents a language designator. To specify English, use the en language designator. Use the two-letter ISO 639-1 standard (preferred) or the three-letter ISO 639-2 standard. If an ISO 639-1 code isn't available for a particular language, use the ISO 639-2 code instead. There's no ISO 639-1 code for the Hawaiian language, so use the ISO 639-2 code.
    ///
    /// ## Dialects
    /// To distinguish between different languages and regional dialects, use a language designator with a region designator and a script designator separated by hyphens. To specify the English language as it's used in the United Kingdom, use en-GB, where GB is the region designator. To represent Mandarin Chinese, spoken in Taiwan, and written in Traditional Chinese script, use zh-Hant-TW.
    ///
    /// To specify a script, combine a language designator with a script designator separated by a hyphen, as in az-Arab for Azerbaijani in the Arabic script.
    ///
    /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundledevelopmentregion)
    static func CFBundleDevelopmentRegion(_ value: String) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Localization native development region",
            key: "CFBundleDevelopmentRegion",
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
    
    /// - Parameter values: The localizations handled manually by your app.
    ///
    /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundlelocalizations)
    static func CFBundleLocalizations(_ values: [InfoPlistValue.LocalizationsValue]) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Localizations",
            key: "CFBundleLocalizations",
            value: .array(values.map { .string($0.rawValue) }),
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
    
    /// - Parameter value: A Boolean value that indicates whether the bundle supports the retrieval of localized strings from frameworks.
    ///
    /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleallowmixedlocalizations)
    static func CFBundleAllowMixedLocalizations(_ value: Bool) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Localized resources can be mixed",
            key: "CFBundleAllowMixedLocalizations",
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
    
    /// - Parameter value: A Boolean value that enables the Caps Lock key to switch between Latin and non-Latin input sources.
    ///
    /// Latin input sources, such as ABC, U.S., and Vietnamese, output characters in Latin script. Non-Latin input sources, such as Bulgarian (Cyrillic script), Hindi (Devanagari script), and Urdu (Arabic script), output characters in scripts other than Latin.
    ///
    /// After implementing the key, users can enable or disable this functionality by modifying the “Use Caps Lock to switch to and from” preference, which can be found in System Preferences > Keyboard > Input Sources.
    ///
    /// Availability: macOS 10.15+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/ticapslocklanguageswitchcapable)
    static func TICapsLockLanguageSwitchCapable(_ value: Bool) -> InfoPlistEntry {
        InfoPlistEntry(
            name: nil,
            key: "TICapsLockLanguageSwitchCapable",
            value: .boolean(value),
            availabilities: .init(
                macOS: "10.15"
            )
        )
    }
    
    /// - Parameter value: The name of the bundle’s HTML help file.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfapplehelpanchor)
    static func CFAppleHelpAnchor(_ value: String) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Help file",
            key: "CFAppleHelpAnchor",
            value: .string(value),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    /// - Parameter value: The name of the help file that will be opened in Help Viewer.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundlehelpbookname)
    static func CFBundleHelpBookName(_ value: String) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Help Book Identifier",
            key: "CFBundleHelpBookName",
            value: .string(value),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    /// - Parameter value: The name of the folder containing the bundle’s help files.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundlehelpbookname)
    static func CFBundleHelpBookFolder(_ value: String) -> InfoPlistEntry {
        InfoPlistEntry(
            name: "Help Book directory name",
            key: "CFBundleHelpBookFolder",
            value: .string(value),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
}

extension InfoPlistEntry.InfoPlistKey {
    
    enum MinimumSystemVersionArchitecture: String {
        case i386
        case ppc
        case ppc64
        case x86_64
    }
    
}

extension InfoPlistEntry.InfoPlistValue {
    
    enum CFBundlePackageType: String {
        /// The four letter code for Applications
        case app = "APPL"
        /// The four letter code for Frameworks
        case framework = "FMWK"
        /// The four letter code for Bundles
        case bundle = "BNDL"
    }
    
    enum ApplicationCategoryType: String {
        /// public.app-category.business
        case business = "public.app-category.business"
        /// public.app-category.developer-tools
        case developerTools = "public.app-category.developer-tools"
        /// public.app-category.education
        case education = "public.app-category.education"
        /// public.app-category.entertainment
        case entertainment = "public.app-category.entertainment"
        /// public.app-category.finance
        case finance = "public.app-category.finance"
        /// public.app-category.games
        case games = "public.app-category.games"
        /// public.app-category.action-games
        case actionGames = "public.app-category.action-games"
        /// public.app-category.adventure-games
        case adventureGames = "public.app-category.adventure-games"
        /// public.app-category.arcade-games
        case arcadeGames = "public.app-category.arcade-games"
        /// public.app-category.board-games
        case boardGames = "public.app-category.board-games"
        /// public.app-category.card-games
        case cardGames = "public.app-category.card-games"
        /// public.app-category.casino-games
        case casinoGames = "public.app-category.casino-games"
        /// public.app-category.dice-games
        case diceGames = "public.app-category.dice-games"
        /// public.app-category.educational-games
        case educationalGames = "public.app-category.educational-games"
        /// public.app-category.family-games
        case familyGames = "public.app-category.family-games"
        /// public.app-category.kids-games
        case kidsGames = "public.app-category.kids-games"
        /// public.app-category.music-games
        case musicGames = "public.app-category.music-games"
        /// public.app-category.puzzle-games
        case puzzleGames = "public.app-category.puzzle-games"
        /// public.app-category.racing-games
        case racingGames = "public.app-category.racing-games"
        /// public.app-category.role-playing-games
        case rolePlayingGames = "public.app-category.role-playing-games"
        /// public.app-category.simulation-games
        case simulationGames = "public.app-category.simulation-games"
        /// public.app-category.sports-games
        case sportsGames = "public.app-category.sports-games"
        /// public.app-category.strategy-games
        case strategyGames = "public.app-category.strategy-games"
        /// public.app-category.trivia-games
        case triviaGames = "public.app-category.trivia-games"
        /// public.app-category.word-games
        case wordGames = "public.app-category.word-games"
        /// public.app-category.graphics-design
        case graphicsDesign = "public.app-category.graphics-design"
        /// public.app-category.healthcare-fitness
        case healthcareFitness = "public.app-category.healthcare-fitness"
        /// public.app-category.lifestyle
        case lifestyle = "public.app-category.lifestyle"
        /// public.app-category.medical
        case medical = "public.app-category.medical"
        /// public.app-category.music
        case music = "public.app-category.music"
        /// public.app-category.news
        case news = "public.app-category.news"
        /// public.app-category.photography
        case photography = "public.app-category.photography"
        /// public.app-category.productivity
        case productivity = "public.app-category.productivity"
        /// public.app-category.reference
        case reference = "public.app-category.reference"
        /// public.app-category.social-networking
        case socialNetworking = "public.app-category.social-networking"
        /// public.app-category.sports
        case sports = "public.app-category.sports"
        /// public.app-category.travel
        case travel = "public.app-category.travel"
        /// public.app-category.utilities
        case utilities = "public.app-category.utilities"
        /// public.app-category.video
        case video = "public.app-category.video"
        /// public.app-category.weather
        case weather = "public.app-category.weather"
    }
    
    enum LocalizationsValue: String {
        case zh
        case zh_CN
        case zh_TW
        case en
        case fr
        case de
        case it
        case ja
        case ko
    }
    
}
