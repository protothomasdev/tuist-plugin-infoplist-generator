//
//  InfoPlist+AppExecution.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 11.05.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    // MARK: - Launch
    
    /// - Parameter value: The name of the bundle’s main executable class.
    ///
    /// The system uses the class identified by this key to set the [principalClass](https://developer.apple.com/documentation/foundation/bundle/1409048-principalclass) property of a bundle when it’s loaded.
    ///
    /// Xcode sets the default value of this key to [NSApplication](https://developer.apple.com/documentation/appkit/nsapplication) for macOS apps, and to [UIApplication](https://developer.apple.com/documentation/uikit/uiapplication) for iOS and tvOS apps. For other types of bundles, you must set this key in [The Info.plist File](https://developer.apple.com/library/archive/documentation/Carbon/Conceptual/ProvidingUserAssitAppleHelp/authoring_help/authoring_help_book.html#//apple_ref/doc/uid/TP30000903-CH206-SW22).
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsprincipalclass)
    static func NSPrincipalClass(_ value: String) -> Self {
        Self(
            name: "Principal class",
            key: "NSPrincipalClass",
            value: .string(value),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    /// - Parameter value: The name of the class that implements the complication data source protocol.
    ///
    /// Xcode automatically includes this key in the information property list when you modify the WatchKit extension’s data source (General > Complication Configuration > Data Source class).
    ///
    /// Availability: watchOS 2.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/clkcomplicationprincipalclass)
    static func CLKComplicationPrincipalClass(_ value: String) -> Self {
        Self(
            name: "ClockKit Complication - Principal Class",
            key: "CLKComplicationPrincipalClass",
            value: .string(value),
            availabilities: .init(
                watchOS: "2.0"
            )
        )
    }
    
    /// - Parameter value: The name of the bundle’s executable file.
    ///
    /// For an app, this key is the executable. For a loadable bundle, it's the binary that's loaded dynamically by the bundle. For a framework, it's the shared library framework and must have the same name as the framework but without the `.framework` extension.
    ///
    /// macOS uses this key to locate the bundle’s executable or shared library in cases where the user renames the app or bundle directory.
    ///
    /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleexecutable)
    static func CFBundleExecutable(_ value: String) -> Self {
        Self(
            name: "Executable file",
            key: "CFBundleExecutable",
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
    
    /// - Parameter values: Environment variables to set before launching the app.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/lsenvironment)
    static func LSEnvironment(_ values: [String: String]) -> Self {
        var valueDict: [String: Plist.Value] = [:]
        for (key, value) in values {
            valueDict[key] = .string(value)
        }
        return Self(
            name: "Environment variables",
            key: "LSEnvironment",
            value: .dictionary(valueDict),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    /// - Parameter values: ShortCut Items
    ///
    /// Availability: iOS 9.0+, iPadOS 9.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationshortcutitems)
    static func UIApplicationShortcutItems(_ values: [[UIApplicationShortcutItemsEntry]]) -> Self {
        Self.dictArray(
            name: nil,
            key: "UIApplicationShortcutItems",
            childEntries: values,
            availabilities: .init(
                iOS: "9.0",
                iPadOS: "9.0"
            )
        )
    }
    
    // MARK: - Launch conditions
    
    /// - Parameter values: The device-related features that your app requires to run.
    ///
    /// The App Store prevents customers from installing an app on a device that doesn’t support the required capabilities for that app. Use this key to declare the capabilities your app requires. For a list of the features that different devices support, see [Required Device Capabilities](https://developer.apple.com/support/required-device-capabilities/).
    ///
    /// You typically use an array for the key’s associated value. The presence in that array of any of the above possible values indicates that the app requires the corresponding feature. Omit a value to indicate that the app doesn’t require the feature, but it can be present.
    ///
    /// Alternatively, you can use a dictionary as the associated value for the `UIRequiredDeviceCapabilities` key. In that case, use the values above as the dictionary’s keys, each with an associated Boolean value. Set the value to true to require the corresponding feature. Set the value to `false` to indicate that the feature must not be present on the device. Omit the feature from the dictionary to indicate that your app neither requires nor disallows it.
    ///
    /// Specify only the features that your app absolutely requires. If your app can accommodate missing features by avoiding the code paths that use those features, don’t include the corresponding key.
    ///
    /// - Important: Your app must include the `UIRequiredDeviceCapabilities` key in the [Information Property List](https://developer.apple.com/documentation/bundleresources/information_property_list) file that you submit with your binary. For app updates, you can only maintain or relax capability requirements. Submitting an update with added requirements would prevent some customers who previously downloaded your app from running the update.
    ///
    /// Availability: iOS 3.0+, iPadOS 3.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uirequireddevicecapabilities)
    static func UIRequiredDeviceCapabilitiesAsArray(_ values: [InfoPlistValue.UIRequiredDeviceCapabilities]) -> Self {
        Self(
            name: "Required device capabilities",
            key: "UIRequiredDeviceCapabilities",
            value: .array(values.map { .string($0.rawValue) }),
            availabilities: .init(
                iOS: "3.0",
                iPadOS: "3.0",
                tvOS: "9.0",
                watchOS: "2.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter values: The device-related features that your app requires to run.
    ///
    /// The App Store prevents customers from installing an app on a device that doesn’t support the required capabilities for that app. Use this key to declare the capabilities your app requires. For a list of the features that different devices support, see [Required Device Capabilities](https://developer.apple.com/support/required-device-capabilities/).
    ///
    /// You typically use an array for the key’s associated value. The presence in that array of any of the above possible values indicates that the app requires the corresponding feature. Omit a value to indicate that the app doesn’t require the feature, but it can be present.
    ///
    /// Alternatively, you can use a dictionary as the associated value for the `UIRequiredDeviceCapabilities` key. In that case, use the values above as the dictionary’s keys, each with an associated Boolean value. Set the value to true to require the corresponding feature. Set the value to `false` to indicate that the feature must not be present on the device. Omit the feature from the dictionary to indicate that your app neither requires nor disallows it.
    ///
    /// Specify only the features that your app absolutely requires. If your app can accommodate missing features by avoiding the code paths that use those features, don’t include the corresponding key.
    ///
    /// - Important: Your app must include the `UIRequiredDeviceCapabilities` key in the [Information Property List](https://developer.apple.com/documentation/bundleresources/information_property_list) file that you submit with your binary. For app updates, you can only maintain or relax capability requirements. Submitting an update with added requirements would prevent some customers who previously downloaded your app from running the update.
    ///
    /// Availability: iOS 3.0+, iPadOS 3.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uirequireddevicecapabilities)
    static func UIRequiredDeviceCapabilitiesAsDictionary(_ values: [InfoPlistValue.UIRequiredDeviceCapabilities: Bool]) -> Self {
        var valueDict: [String: Plist.Value] = [:]
        for (key, value) in values {
            valueDict[key.rawValue] = .boolean(value)
        }
        return Self(
            name: "Required device capabilities",
            key: "UIRequiredDeviceCapabilities",
            value: .dictionary(valueDict),
            availabilities: .init(
                iOS: "3.0",
                iPadOS: "3.0",
                tvOS: "9.0",
                watchOS: "2.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value indicating whether more than one user can launch the app simultaneously.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/lsmultipleinstancesprohibited)
    static func LSMultipleInstancesProhibited(_ value: Bool) -> Self {
        Self(
            name: "Application prohibits multiple instances",
            key: "LSMultipleInstancesProhibited",
            value: .boolean(value),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    /// - Parameter values: An array of the architectures that the app supports, arranged according to their preferred usage.
    ///
    /// Use this key to prioritize the execution of a specific architecture in a universal binary. This key contains an array of strings, with each string specifying the name of a supported architecture. The order of the strings in the array represents your preference for executing the app. For example, if you specify the x86_64 architecture first for a universal app, the system runs that app under Rosetta translation on Apple silicon. For more information about Rosetta translation, see [About the Rosetta Translation Environment](https://developer.apple.com/documentation/apple-silicon/about-the-rosetta-translation-environment).
    ///
    /// Availability: macOS 10.1+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/lsarchitecturepriority)
    static func LSArchitecturePriority(_ values: [InfoPlistValue.LSArchitecturePriority]) -> Self {
        Self(
            name: "Architecture priority",
            key: "LSArchitecturePriority",
            value: .array(values.map { .string($0.rawValue) }),
            availabilities: .init(
                macOS: "10.1"
            )
        )
    }
    
    /// - Parameter value: A Boolean value that indicates whether to require the execution of the app’s native architecture when multiple architectures are available.
    ///
    /// The presence of this key causes the system to choose a native architecture over one that requires translation. For example, this key prevents the system from using the Rosetta translation process to execute the Intel portion of a universal app on Apple silicon.
    ///
    /// If your app’s binary supports only the Intel architecture and you link the app against the macOS 11 SDK or later, the inclusion of this key prevents your app from running on Apple silicon. If you link the app against an earlier macOS SDK, the app runs under Rosetta translation.
    ///
    /// Availability:macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/lsrequiresnativeexecution)
    static func LSRequiresNativeExecution(_ value: Bool) -> Self {
        Self(
            name: "Application requires native environment",
            key: "LSRequiresNativeExecution",
            value: .boolean(value),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value that indicates whether an app requires network access on launch.
    ///
    /// In low-power mode, the system turns off cellular data to preserve battery life. If this key is `NO`, the system waits until an app requests a network connection before turning on cellular data. This can cause a few seconds of delay before your app can perform network requests.
    ///
    /// If your app needs access to the network immediately upon launch, set this key to `YES`.
    ///
    /// `WKPrefersNetworkUponForeground` defaults to `NO`.
    ///
    /// Availability: watchOS 9.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/wkprefersnetworkuponforeground)
    static func WKPrefersNetworkUponForeground(_ value: Bool) -> Self {
        Self(
            name: nil,
            key: "WKPrefersNetworkUponForeground",
            value: .boolean(value),
            availabilities: .init(
                watchOS: "9.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value indicating whether the user can install and run the watchOS app independently of its iOS companion app.
    ///
    /// Xcode automatically includes this key in the WatchKit extension’s information property list and sets its value to `YES` when you create a project using the iOS App with Watch App template. When you set the value of this key to `YES`, the app doesn’t need its iOS companion app to operate properly. Users can choose to install the iOS app, the watchOS app, or both.
    ///
    /// Availability: watchOS 6.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/wkrunsindependentlyofcompanionapp)
    static func WKRunsIndependentlyOfCompanionApp(_ value: Bool) -> Self {
        Self(
            name: "App can run independently of companion iPhone app",
            key: "WKRunsIndependentlyOfCompanionApp",
            value: .boolean(value),
            availabilities: .init(
                watchOS: "6.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value indicating whether the app is a watch-only app.
    ///
    /// Xcode automatically includes this key in the WatchKit extension’s information property list and sets its value to `YES` when you create a project using the Watch App template. When you set the value of this key to `YES`, the app is only available on Apple Watch, with no related iOS app.
    ///
    /// Availability: watchOS 6.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/wkwatchonly)
    static func WKWatchOnly(_ value: Bool) -> Self {
        Self(
            name: "App is only available as a standalone watchOS app",
            key: "WKWatchOnly",
            value: .boolean(value),
            availabilities: .init(
                watchOS: "6.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value that indicates whether a watchOS app should opt out of automatically launching when its companion iOS app starts playing audio content.
    ///
    /// If your watchOS app does not act as a remote control for the iOS app, set this key to `YES` in your WatchKit extension’s information property list.
    ///
    /// Availability: watchOS 5.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/puicautolaunchaudiooptout)
    static func PUICAutoLaunchAudioOptOut(_ value: Bool) -> Self {
        Self(
            name: "Opt out of Auto-launch Audio App (Watch)",
            key: "PUICAutoLaunchAudioOptOut",
            value: .boolean(value),
            availabilities: .init(
                watchOS: "5.0"
            )
        )
    }
    
    /// - Parameter values: The complication families for which the app can provide data.
    ///
    /// To add this key to the information property list, enable the desired families in the WatchKit extension’s Complication Configuration settings.
    ///
    /// - Deprecated:
    /// Use [WidgetKit](https://developer.apple.com/documentation/widgetkit) to create complications for watchOS 10 or later. For more information, see [Migrating to WidgetKit](https://developer.apple.com/documentation/clockkit/clkcomplicationdatasource#4037623).
    ///
    /// Availability: watchOS 2.0-7.0
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/clkcomplicationsupportedfamilies)
    static func CLKComplicationSupportedFamilies(_ values: [InfoPlistValue.CLKComplicationSupportedFamilies]) -> Self {
        Self(
            name: "ClockKit Complication - Supported Families",
            key: "CLKComplicationSupportedFamilies",
            value: .array(values.map { .string($0.rawValue) }),
            availabilities: .init(
                watchOS: "2.0"..."7.0"
            )
        )
    }
    
    // MARK: - Extensions and services
    
    /// - Parameter values: The properties of an app extension.
    ///
    /// Availability: iOS 8.0+, iPadOS 8.0+, macOS 10.10+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension)
    static func NSExtension(_ values: [NSExtensionEntry]) -> Self {
        Self.dict(
            name: nil,
            key: "NSExtension",
            childEntries: values,
            availabilities: .init(
                iOS: "8.0",
                iPadOS: "8.0",
                macOS: "10.10",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter values: The services provided by an app.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsservices)
    static func NSServices(_ values: [[NSServicesEntry]]) -> Self {
        Self.dictArray(
            name: "Services",
            key: "NSServices",
            childEntries: values,
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    /// - Parameter value: The name of your watchOS app’s extension delegate.
    ///
    /// This key provides the name of a class that adopts the [WKExtensionDelegate](https://developer.apple.com/documentation/watchkit/wkextensiondelegate) protocol. Xcode automatically includes this key in the WatchKit extension’s information property list when you create a watchOS project from a template. You only modify this value when you rename or replace the extension delegate.
    ///
    /// Availability: watchOS 2.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/wkextensiondelegateclassname)
    static func WKExtensionDelegateClassName(_ value: String) -> Self {
        Self(
            name: nil,
            key: "WKExtensionDelegateClassName",
            value: .string(value),
            availabilities: .init(
                watchOS: "2.0"
            )
        )
    }
    
    /// - Parameter value: The bundle ID of the widget that's available as a Home screen quick action in apps that have more than one widget.
    ///
    /// Availability: iOS 10.0+, iPadOS 10.0+, tvOS 9.0+, watchOS 2.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationshortcutwidget)
    static func UIApplicationShortcutWidget(_ value: String) -> Self {
        Self(
            name: "Home Screen Widget",
            key: "UIApplicationShortcutWidget",
            value: .string(value),
            availabilities: .init(
                iOS: "10.0",
                iPadOS: "10.0",
                tvOS: "9.0",
                watchOS: "2.0"
            )
        )
    }
    
    // MARK: - App Clips
    
    /// - Parameter values: A collection of keys that an App Clip uses to get additional capabilities.
    ///
    /// Availability: iOS 14.0+, iPadOS 14.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsappclip)
    static func NSAppClip(_ values: [NSAppClipEntry]) -> Self {
        Self.dict(
            name: "App Clip",
            key: "NSAppClip",
            childEntries: values,
            availabilities: .init(
                iOS: "14.0",
                iPadOS: "14.0"
            )
        )
    }
    
    // MARK: - Background execution
    
    /// - Parameter values: Services provided by an app that require it to run in the background.
    ///
    /// To add this key to your Information Property List, enable the Background Modes capability in Xcode. For information on configuring background execution modes and the platforms that support them, see [Configuring background execution modes](https://developer.apple.com/documentation/xcode/configuring-background-execution-modes).
    ///
    /// Availability: iOS 4.0+, iPadOS 4.0+, watchOS 4.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uibackgroundmodes)
    static func UIBackgroundModes(_ values: [InfoPlistValue.UIBackgroundModes]) -> Self {
        Self(
            name: "Required background modes",
            key: "UIBackgroundModes",
            value: .array(values.map { .string($0.rawValue) }),
            availabilities: .init(
                iOS: "4.0",
                iPadOS: "4.0",
                watchOS: "4.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter values: The services a watchOS app provides that require it to continue running in the background.
    ///
    /// To add this key to the Information Property List, enable your WatchKit extension’s Background Modes capability in Xcode.
    ///
    /// - Important: You can only enable one of the extended runtime session modes (`self-care`, `mindfulness`, `physical-therapy`, or `alarm`). However, you can enable both an extended runtime session mode and the `workout-processing` mode. If you set the background modes using Xcode’s Signing & Capabilities tab, Xcode ensures that these values are set properly.
    ///
    /// Availability: watchOS 3.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/wkbackgroundmodes)
    static func WKBackgroundModes(_ values: [InfoPlistValue.WKBackgroundModes]) -> Self {
        Self(
            name: "Required background modes (Watch)",
            key: "WKBackgroundModes",
            value: .array(values.map { .string($0.rawValue) }),
            availabilities: .init(
                watchOS: "3.0"
            )
        )
    }
    
    /// - Parameter values: An array of strings containing developer-specified task identifiers in reverse URL notation.
    ///
    /// Availability: iOS 13.0+, iPadOS 13.0+, tvOS 13.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/bgtaskschedulerpermittedidentifiers)
    static func BGTaskSchedulerPermittedIdentifiers(_ values: [String]) -> Self {
        Self(
            name: "Permitted background task scheduler identifiers",
            key: "BGTaskSchedulerPermittedIdentifiers",
            value: .array(values.map { .string($0) }),
            availabilities: .init(
                iOS: "13.0",
                iPadOS: "13.0",
                tvOS: "13.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value indicating whether the app runs only in the background.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/lsbackgroundonly)
    static func LSBackgroundOnly(_ value: Bool) -> Self {
        Self(
            name: "Application is background only",
            key: "LSBackgroundOnly",
            value: .boolean(value),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    // MARK: - Endpoint security
    
    /// If set to TRUE, the ES subsystem will hold up all third party executions (anything that is not a platform binary) until all early boot ES extensions make their first subscription.
    ///
    /// Availability: macOS 10.15+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsendpointsecurityearlyboot)
    static func NSEndpointSecurityEarlyBoot(_ value: Bool) -> Self {
        Self(
            name: nil,
            key: "NSEndpointSecurityEarlyBoot",
            value: .boolean(value),
            availabilities: .init(
                macOS: "10.15"
            )
        )
    }
    
    /// If not set or set to FALSE, the new version of the extension is started immediately after terminating the old version.
    ///
    /// If set to TRUE, the new version of the extension is NOT started until the system reboots. When the system reboots, only the new version will be started and the old version will be removed. This ensures there is no gap in monitoring of subscribed events.
    ///
    /// Availability: macOS 10.15+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsendpointsecurityrebootrequired)
    static func NSEndpointSecurityRebootRequired(_ value: Bool) -> Self {
        Self(
            name: nil,
            key: "NSEndpointSecurityRebootRequired",
            value: .boolean(value),
            availabilities: .init(
                macOS: "10.15"
            )
        )
    }
    
    // MARK: - Plug-in support
    
    /// - Parameter value: The name of the app's plug-in bundle.
    ///
    /// Set this key to the name of the plug-in with the `.docktileplugin` filename extension that resides in the app’s `Contents/PlugIns` folder.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsdocktileplugin)
    static func NSDockTilePlugIn(_ value: String) -> Self {
        Self(
            name: "Dock Tile plugin path",
            key: "NSDockTilePlugIn",
            value: .string(value),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    // MARK: - Plug-in configuration
    
    /// - Parameter value: The function to use when dynamically registering a plug-in.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfplugindynamicregisterfunction)
    static func CFPlugInDynamicRegisterFunction(_ value: String) -> Self {
        Self(
            name: "Plug-in dynamic registration function name",
            key: "CFPlugInDynamicRegisterFunction",
            value: .string(value),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value indicating whether the host loads this plug-in.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfplugindynamicregistration)
    static func CFPlugInDynamicRegistration(_ value: Bool) -> Self {
        Self(
            name: "Plug-in should be registered dynamically",
            key: "CFPlugInDynamicRegistration",
            value: .boolean(value),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    /// - Parameter values: The interfaces supported by the plug-in for static registration.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfpluginfactories)
    static func CFPlugInFactories(_ values: [String: String]) -> Self {
        var valueDict: [String: Plist.Value] = [:]
        for (key, value) in values {
            valueDict[key] = .string(value)
        }
        return Self(
            name: "Plug-in factory interfaces",
            key: "CFPlugInFactories",
            value: .dictionary(valueDict),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    /// - Parameter values: One or more groups of interfaces supported by the plug-in for static registration.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfplugintypes)
    static func CFPlugInTypes(_ values: [String: String]) -> Self {
        var valueDict: [String: Plist.Value] = [:]
        for (key, value) in values {
            valueDict[key] = .string(value)
        }
        return Self(
            name: "Plug-in types",
            key: "CFPlugInTypes",
            value: .dictionary(valueDict),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    /// - Parameter value: The name of the function to call to unload the plug-in code from memory.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfpluginunloadfunction)
    static func CFPlugInUnloadFunction(_ value: Bool) -> Self {
        Self(
            name: "Plug-in unload function name",
            key: "CFPlugInUnloadFunction",
            value: .boolean(value),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    // MARK: - Termination
    
    /// - Parameter value: A Boolean value indicating whether the app is notified when a child process dies.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/lsgetappdiedevents)
    static func LSGetAppDiedEvents(_ value: Bool) -> Self {
        Self(
            name: "Application should get App Died events",
            key: "LSGetAppDiedEvents",
            value: .boolean(value),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value indicating whether the system may terminate the app to log out or shut down more quickly.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssupportssuddentermination)
    static func NSSupportsSuddenTermination(_ value: Bool) -> Self {
        Self(
            name: "Application can be killed immediately after launch",
            key: "NSSupportsSuddenTermination",
            value: .boolean(value),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value indicating whether the app terminates, rather than moves to the background, when the app quits.
    ///
    /// - Deprecated: The system now automatically suspends apps leaving the foreground when they don’t require background execution. For more information, see [About the background execution sequence](https://developer.apple.com/documentation/uikit/app_and_environment/scenes/preparing_your_ui_to_run_in_the_background/about_the_background_execution_sequence).
    ///
    /// Availability: iOS 4.0-13.0, iPadOS 4.0-13.0, tvOS 9.0-13.0, watchOS 2.0-6.0, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationexitsonsuspend)
    static func UIApplicationExitsOnSuspend(_ value: Bool) -> Self {
        Self(
            name: "Application does not run in background",
            key: "UIApplicationExitsOnSuspend",
            value: .boolean(value),
            availabilities: .init(iOSMin: "4.0", iOSMax: "13.0",
                                  iPadOSMin: "4.0", iPadOSMax: "13.0",
                                  tvOSMin: "9.0", tvOSMax: "13.0",
                                  watchOSMin: "2.0", watchOSMax: "6.0",
                                  visionOSMin: "1.0")
        )
    }
    
}

extension InfoPlistEntry.InfoPlistValue {
    
    enum UIRequiredDeviceCapabilities: String {
        /// The presence of accelerometers. Use the [Core Motion](https://developer.apple.com/documentation/coremotion) framework to receive accelerometer events. You don’t need to include this value if your app detects only device orientation changes. Available in iOS 3.0 and later. Unavailable in visionOS.
        case accelerometer
        /// Support for [ARKit](https://developer.apple.com/documentation/arkit). Available in iOS 11.0 and later, and Full Space apps in visionOS. Unavailable for iPadOS and iOS apps running in visionOS.
        case arkit
        /// Compilation for the armv7 instruction set, or as a 32- or 64-bit universal app. Available in iOS 3.1 and later, and visionOS.
        case armv7
        /// Compilation for the arm64 instruction set. Include this key for all 64-bit apps and embedded bundles, like extensions and frameworks. Available in iOS 8.0 and later, and visionOS.
        case arm64
        /// Autofocus capabilities in the device’s still camera. You might need to include this value if your app supports macro photography or requires sharper images to perform certain image-processing tasks. Available in iOS 3.0 and later. Unavailable in visionOS.
        case autoFocusCamera = "auto-focus-camera"
        /// Bluetooth low-energy hardware. Available in iOS 5.0 and later, and visionOS.
        case bluetoothLE = "bluetooth-le"
        /// A camera flash. Use the [cameraFlashMode](https://developer.apple.com/documentation/uikit/uiimagepickercontroller/1619124-cameraflashmode) property of a [UIImagePickerController](https://developer.apple.com/documentation/uikit/uiimagepickercontroller) instance to control the camera’s flash. Available in iOS 3.0 and later. Unavailable in visionOS.
        case cameraFlash = "camera-flash"
        /// Support for [DriverKit](https://developer.apple.com/documentation/driverkit) on devices with M1 or later chips. Available on iPadOS 16.0 or later. Unavailable in visionOS.
        case driverkit
        /// A forward-facing camera. Use the [cameraDevice](https://developer.apple.com/documentation/uikit/uiimagepickercontroller/1619117-cameradevice) property of a [UIImagePickerController](https://developer.apple.com/documentation/uikit/uiimagepickercontroller) instance to select the device’s camera. Available in iOS 3.0 and later, and iPadOS and iOS apps running in visionOS. Unavailable in apps built for visionOS.
        case frontFacingCamera = "front-facing-camera"
        /// Access to the Game Center service. Enable the Game Center capability in Xcode to add this value to your app. Available in iOS 4.1 and later, and visionOS.
        case gamekit
        /// GPS (or AGPS) hardware for tracking locations. If you include this value, you should also include the location-services value. Require GPS only if your app needs location data more accurate than the cellular or Wi-Fi radios provide. Available in iOS 3.0 and later. Unavailable in visionOS.
        case gps
        /// A gyroscope. Use the [Core Motion](https://developer.apple.com/documentation/coremotion) framework to retrieve information from gyroscope hardware. Available in iOS 3.0 and later. Unavailable in visionOS.
        case gyroscope
        /// Support for [HealthKit](https://developer.apple.com/documentation/healthkit). The system uses this value to limit apps to iPhone. In order to ship Universal apps, remove this key. Available in iOS 8.0 and later. Unavailable in visionOS.
        case healthkit
        /// Requires the graphics performance and gaming features equivalent to the iPhone 15 Pro and iPhone 15 Pro Max. Available in iOS 17.0 and later. Unavailable in visionOS.
        case iphonePerformanceGamingTier = "iphone-performance-gaming-tier"
        /// Performance and capabilities of the A12 Bionic and later chips. Available in iOS 12.0 and later, and iPadOS and iOS apps running in visionOS. Unavailable in apps built for visionOS.
        case iphoneIpadMinimumPerformanceA12 = "iphone-ipad-minimum-performance-a12"
        /// Access to the device’s current location using the [Core Location](https://developer.apple.com/documentation/corelocation) framework. This value refers to the general location services feature. If you specifically need GPS-level accuracy, also include the gps feature. Available in iOS 3.0 and later, and visionOS.
        case locationServices = "location-services"
        /// Magnetometer hardware. Apps use this hardware to receive heading-related events through the [Core Location](https://developer.apple.com/documentation/corelocation) framework. Available in iOS 3.0 and later. Unavailable in visionOS.
        case magnetometer
        /// Support for graphics processing with [Metal](https://developer.apple.com/documentation/metal). Available in iOS 8.0 and later, and visionOS.
        case metal
        /// The built-in microphone or accessories that provide a microphone. Available in iOS 3.0 and later, and visionOS.
        case microphone
        /// Near Field Communication (NFC) tag detection and access to messages that contain NFC Data Exchange Format data. Use the [Core NFC](https://developer.apple.com/documentation/corenfc) framework to detect and read NFC tags. Available in iOS 11.0 and later. Unavailable in visionOS.
        case nfc
        /// The OpenGL ES 1.1 interface. Available in iOS 3.0 and later, and iPadOS and iOS apps running in visionOS. Unavailable in apps built for visionOS.
        case opengles1 = "opengles-1"
        /// The OpenGL ES 2.0 interface. Available in iOS 3.0 and later, and iPadOS and iOS apps running in visionOS. Unavailable in apps built for visionOS.
        case opengles2 = "opengles-2"
        /// The OpenGL ES 3.0 interface. Available in iOS 7.0 and later, and iPadOS and iOS apps running in visionOS. Unavailable in apps built for visionOS.
        case opengles3 = "opengles-3"
        /// Peer-to-peer connectivity over a Bluetooth network. Available in iOS 3.1 and later, and visionOS. The App Store doesn’t prevent distributing an app to a device that doesn’t support this capability, but iOS prevents running the app.
        case peerToPeer = "peer-peer"
        /// The Messages app. You might require this feature if your app opens URLs with the sms scheme. Available in iOS 3.0 and later. Unavailable in visionOS.
        case sms
        /// A camera on the device. Use the [UIImagePickerController](https://developer.apple.com/documentation/uikit/uiimagepickercontroller) interface to capture images from the device’s still camera. Available in iOS 3.0 and later. Unavailable in visionOS.
        case stillCamera = "still-camera"
        /// The Phone app. You might require this feature if your app opens URLs with the tel scheme. Available in iOS 3.0 and later. Unavailable in visionOS.
        case telephony
        /// A camera with video capabilities on the device. Use the [UIImagePickerController](https://developer.apple.com/documentation/uikit/uiimagepickercontroller) interface to capture video from the device’s camera. Available in iOS 3.0 and later, and visionOS.
        case videoCamera = "video-camera"
        /// Networking features related to Wi-Fi access. Available in iOS 3.0 and later, and visionOS.
        case wifi
    }
    
    enum LSArchitecturePriority: String {
        /// The 32-bit Intel architecture.
        case i386
        // The 64-bit Intel architecture.
        case x86_64
        /// The 64-bit ARM architecture.
        case arm64
        /// The 64-bit ARM architecture with pointer authentication code support.
        case arm64e
    }
    
    /// Deprecated
    enum CLKComplicationSupportedFamilies: String {
        case CLKComplicationFamilyModularSmall
        case CLKComplicationFamilyModularLarge
        case CLKComplicationFamilyUtilitarianSmall
        case CLKComplicationFamilyUtilitarianSmallFlat
        case CLKComplicationFamilyUtilitarianLarge
        case CLKComplicationFamilyCircularSmall
        case CLKComplicationFamilyExtraLarge
        case CLKComplicationFamilyGraphicCorner
        case CLKComplicationFamilyGraphicBezel
        case CLKComplicationFamilyGraphicCircular
        case CLKComplicationFamilyGraphicRectangular
        case CLKComplicationFamilyGraphicExtraLarge
    }
    
    enum UIBackgroundModes: String {
        case audio
        case location
        case voip
        case externalAccessory = "external-accessory"
        case bluetoothCentral = "bluetooth-central"
        case bluetoothPeripheral = "bluetooth-peripheral"
        case fetch
        case remoteNotification = "remote-notification"
        case processing
        case nearbyInteraction = "nearby-interaction"
        case networkAuthentication = "network-authentication"
        case newsstandContent = "newsstand-content"
        case pushToTalk = "push-to-talk"
    }
    
    enum WKBackgroundModes: String {
        /// Allows an active workout session to run in the background.
        case workoutProcessing = "workout-processing"
        /// Enables extended runtime sessions for brief activities focusing on health or emotional well-being.
        case selfCare = "self-care"
        /// Enables extended runtime sessions for silent meditation.
        case mindfulness
        /// Enables extended runtime sessions for stretching, strengthening, or range-of-motion exercises.
        case physicalTherapy = "physical-therapy"
        /// Enables extended runtime sessions for smart alarms.
        case alarm
        /// Enables extended runtime sessions for underwater depth experiences.
        case underwaterDepth = "underwater-depth"
    }
    
}

