//
//  InfoPlist+ApplicationSceneManifest.swift
//  ProjectDescriptionHelpers
//
//  Created by Thomas Meyer on 07.05.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    struct ApplicationSceneManifest {
        
        var supportsMultipleScenes: Bool? = nil
        var supportsTabbedSceneCollection: Bool? = nil
        var supportsDashboardNavigationScene: Bool? = nil
        var supportsInstrumentClusterNavigationScene: Bool? = nil
        /// The default configuration details the system uses to create new scenes
        var sceneConfigurations: SceneConfigurations? = nil
        
        func entries() -> [ApplicationSceneManifestEntry] {
            
            var entries: [ApplicationSceneManifestEntry] = []
            
            if let supportsMultipleScenes {
                entries.append(.UIApplicationSupportsMultipleScenes(supportsMultipleScenes))
            }
            
            if let supportsTabbedSceneCollection {
                entries.append(.UIApplicationSupportsTabbedSceneCollection(supportsTabbedSceneCollection))
            }
            
            return entries
        }
        
    }
    
    struct SceneConfigurations {
        
        var sceneSessionRoleApplication: UIWindowSceneSessionRoleApplication? = nil
        var sceneSessionRoleExternalDisplayNonInteractive: UIWindowSceneSessionRoleExternalDisplayNonInteractive? = nil
        var sceneSessionRoleExternalDisplay: UIWindowSceneSessionRoleExternalDisplay? = nil
        var sessionRoleImmersiveSpaceApplication: UISceneSessionRoleImmersiveSpaceApplication? = nil
        var sceneSessionRoleImmersiveSpaceApplication: CPSceneSessionRoleImmersiveSpaceApplication? = nil
        var templateApplicationSceneSessionRoleApplication: CPTemplateApplicationSceneSessionRoleApplication? = nil
        var templateApplicationDashboardSceneSessionRoleApplication: CPTemplateApplicationDashboardSceneSessionRoleApplication? = nil
        var templateApplicationInstrumentClusterSceneSessionRoleApplication: CPTemplateApplicationInstrumentClusterSceneSessionRoleApplication? = nil
        
        //  MARK: Window scene roles
        
        struct UIWindowSceneSessionRoleApplication {
            
            // TODO: check if this needs to be optional or not
            
            let UISceneConfigurationName: String?
            let UISceneClassName: String?
            let UISceneDelegateClassName: String?
            let UISceneStoryboardFile: String?
            
        }
        
        
        struct UIWindowSceneSessionRoleExternalDisplayNonInteractive {
            
            // TODO: check if this needs to be optional or not
            
            let UISceneConfigurationName: String?
            let UISceneClassName: String?
            let UISceneDelegateClassName: String?
            let UISceneStoryboardFile: String?
            
        }
        
        struct UIWindowSceneSessionRoleExternalDisplay {
            
            // TODO: check if this needs to be optional or not
            
            let UISceneConfigurationName: String?
            let UISceneClassName: String?
            let UISceneDelegateClassName: String?
            let UISceneStoryboardFile: String?
            
        }
        
        // MARK: Immersize space scene roles
        
        struct UISceneSessionRoleImmersiveSpaceApplication {
            
            let UISceneConfigurationName: String?
            let UISceneInitialImmersionStyle: ImmersionStyle?
            
            enum ImmersionStyle: String {
                case UIImmersionStyleFull
                case UIImmersionStyleMixed
                case UIImmersionStyleProgressive
            }
            
        }
        
        struct CPSceneSessionRoleImmersiveSpaceApplication {
            
            let UISceneConfigurationName: String?
            
        }
        
        // MARK: CarPlay scene roles
        
        struct CPTemplateApplicationSceneSessionRoleApplication {
            
            let UISceneConfigurationName: String?
            let UISceneClassName: String?
            let UISceneDelegateClassName: String?
            
        }
        
        struct CPTemplateApplicationDashboardSceneSessionRoleApplication {
            
            let UISceneConfigurationName: String?
            let UISceneClassName: String?
            let UISceneDelegateClassName: String?
            
        }
        
        struct CPTemplateApplicationInstrumentClusterSceneSessionRoleApplication {
            
            let UISceneConfigurationName: String?
            let UISceneClassName: String?
            let UISceneDelegateClassName: String?
            
        }
        
    }

}

extension InfoPlistEntry {
    
    public struct ApplicationSceneManifestEntry: PlistEntry {
        
        public let name: String?
        public let key: String
        public let value: ProjectDescription.Plist.Value
        public let availabilities: PlatformAvailability?
        public let childEntries: [PlistEntry]?
        public let isRequired: Bool
        
        public init(name: String?, key: String, value: ProjectDescription.Plist.Value, childEntries: [any PlistEntry]? = nil, availabilities: PlatformAvailability?, isRequired: Bool = false) {
            self.name = name
            self.key = key
            self.value = value
            self.availabilities = availabilities
            self.childEntries = childEntries
            self.isRequired = isRequired
        }
        
        // MARK: Multiple Windows
        
        /// - Parameter value: A Boolean value indicating whether the app supports two or more scenes simultaneously.
        ///
        /// If your app supports multiple scenes, set the value of this key to `true`. If you set the value to `false`, UIKit never creates more than one scene for your app.
        ///
        /// Setting this key to `true` has implications for your code. An app that supports multiple scenes must coordinate operations to prevent scenes from interfering with each other. For example, if two scenes access the same shared resource, you must synchronize access to that resource using a serial dispatch queue or some other mechanism. Failure to do so may lead to corrupted data or unexpected behavior from your app.
        ///
        /// Availability: iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uiapplicationsupportsmultiplescenes)
        static func UIApplicationSupportsMultipleScenes(_ value: Bool) -> Self {
            Self(
                name: "Enable Multiple Windows",
                key: "UIApplicationSupportsMultipleScenes",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "13.0",
                    iPadOS: "13.0",
                    macCatalyst: "13.0",
                    macOS: "13.0",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: A Boolean value indicating whether an app built with Mac Catalyst supports automatic tabbing mode.
        ///
        /// By default, the tabbing mode for an app built with Mac Catalyst that support multiple scenes is [NSWindow.TabbingMode.automatic](https://developer.apple.com/documentation/appkit/nswindow/tabbingmode/automatic). Starting with macOS 12, you can disable this behavior by adding the `UIApplicationSupportsTabbedSceneCollection` key with a value of `false` to the [UIApplicationSceneManifest](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest) key in your app’s Info.plist file.
        ///
        /// Availability: Mac Catalyst 15.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uiapplicationsupportstabbedscenecollection)
        static func UIApplicationSupportsTabbedSceneCollection(_ value: Bool) -> Self {
            Self(
                name: "Supports Tabbed Scene Collection",
                key: "UIApplicationSupportsTabbedSceneCollection",
                value: .boolean(value),
                availabilities: .init(
                    macCatalyst: "15.0"
                )
            )
        }
        
        // MARK: - Car Play
        
        /// - Parameter value: A Boolean value that indicates whether your app supports displaying navigation content in the CarPlay Dashboard.
        ///
        /// To declare support for displaying navigation content in the CarPlay Dashboard, add this key and set its value to YES. You specify the scene configurations using the [CPTemplateApplicationDashboardSceneSessionRoleApplication](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/cptemplateapplicationdashboardscenesessionroleapplication) key.
        ///
        /// For more information, see [Displaying Content in CarPlay](https://developer.apple.com/documentation/carplay/displaying-content-in-carplay).
        ///
        /// Availability: iOS 13.1+, iPadOS 13.1+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/cpsupportsdashboardnavigationscene)
        static func CPSupportsDashboardNavigationScene(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "CPSupportsDashboardNavigationScene",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "13.1",
                    iPadOS: "13.1"
                )
            )
        }
        
        /// - Parameter value: A Boolean value that indicates whether your app supports displaying navigation content in the CarPlay Instrument Cluster.
        ///
        /// To declare support for displaying navigation content in the CarPlay Instruments Cluster, add this key and set its value to YES. You specify the scene configurations using the [CPTemplateApplicationInstrumentClusterSceneSessionRoleApplication](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/cptemplateapplicationinstrumentclusterscenesessionroleapplication) key.
        ///
        /// For more information, see [Displaying Content in CarPlay](https://developer.apple.com/documentation/carplay/displaying-content-in-carplay).
        ///
        /// Availability: iOS 15.4+, iPadOS 15.4+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/cpsupportsinstrumentclusternavigationscene)
        static func CPSupportsInstrumentClusterNavigationScene(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "CPSupportsInstrumentClusterNavigationScene",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "15.4",
                    iPadOS: "15.4"
                )
            )
        }
        
        /// - Parameter values: The default configuration details the system uses to create new scenes.
        ///
        /// The keys in the dictionary correspond to the roles played by your scenes.
        ///
        /// `UISceneConfigurations` supports the following keys:
        /// - [UIWindowSceneSessionRoleApplication](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleapplication)
        /// - [UIWindowSceneSessionRoleExternalDisplayNonInteractive](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleexternaldisplaynoninteractive)
        ///
        /// For visionOS apps, it also supports:
        /// - [UISceneSessionRoleImmersiveSpaceApplication](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiscenesessionroleimmersivespaceapplication)
        /// - [CPSceneSessionRoleImmersiveSpaceApplication](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/cpscenesessionroleimmersivespaceapplication)
        ///
        /// For applications with [CarPlay](https://developer.apple.com/documentation/carplay) capabilities, it also supports these additional keys:
        /// - [CPTemplateApplicationSceneSessionRoleApplication](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/cptemplateapplicationscenesessionroleapplication)
        /// - [CPTemplateApplicationDashboardSceneSessionRoleApplication](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/cptemplateapplicationdashboardscenesessionroleapplication)
        /// - [CPTemplateApplicationInstrumentClusterSceneSessionRoleApplication](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/cptemplateapplicationinstrumentclusterscenesessionroleapplication)
        ///
        /// - Note: If you don’t include this key in your Info.plist file, you must implement the [application(_:configurationForConnecting:options:)](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/3197905-application) method in your app delegate.
        ///
        /// Availability: iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/cpsupportsinstrumentclusternavigationscene)
        static func UISceneConfigurations(_ values: [SceneConfigurationEntry]) -> Self {
            Self.dict(
                name: "Scene Configuration",
                key: "UISceneConfigurations",
                childEntries: values,
                availabilities: .init(
                    iOS: "13.0",
                    iPadOS: "13.0",
                    macCatalyst: "13.0",
                    visionOS: "1.0"
                )
            )
        }
        
    }
}

extension InfoPlistEntry {
    
    public struct SceneConfigurationEntry: PlistEntry {
        
        public let name: String?
        public let key: String
        public let value: ProjectDescription.Plist.Value
        public let availabilities: PlatformAvailability?
        public let childEntries: [PlistEntry]?
        public let isRequired: Bool
        
        public init(name: String?, key: String, value: ProjectDescription.Plist.Value, childEntries: [any PlistEntry]? = nil, availabilities: PlatformAvailability?, isRequired: Bool = false) {
            self.name = name
            self.key = key
            self.value = value
            self.availabilities = availabilities
            self.childEntries = childEntries
            self.isRequired = isRequired
        }
        
        // MARK: - Window Scene Roles
        
        /// - Parameter values: Configurations for scenes you use to display content on the device’s main screen and respond to user interactions.
        ///
        /// Use this key to specify scene configurations for a session role. Each scene configuration corresponds to one you use for content you display on the device. The first item in the array represents the default scene configuration for this role.
        ///
        /// Availability: iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleapplication)
        static func UIWindowSceneSessionRoleApplication(_ values: [[UIWindowSceneSessionRoleApplicationEntry]]) -> Self {
            Self.dictArray(
                name: "Application Session Role",
                key: "UIWindowSceneSessionRoleApplication",
                childEntries: values,
                availabilities: .init(
                    iOS: "13.0",
                    iPadOS: "13.0",
                    macCatalyst: "13.0"
                )
            )
        }
        
        /// - Parameter values: Configurations for scenes you use to display noninteractive content on an externally connected display.
        ///
        /// Use this key to specify scene configurations for a session role. Each scene configuration corresponds to one you use for content you display on the device. The first item in the array represents the default scene configuration for this role.
        ///
        /// Availability: iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleexternaldisplaynoninteractive)
        static func UIWindowSceneSessionRoleExternalDisplayNonInteractive(_ values: [[UIWindowSceneSessionRoleExternalDisplayNonInteractiveEntry]]) -> Self {
            Self.dictArray(
                name: "External Display Session Role Non-Interactive",
                key: "UIWindowSceneSessionRoleExternalDisplayNonInteractive",
                childEntries: values,
                availabilities: .init(
                    iOS: "16.0",
                    iPadOS: "16.0",
                    macCatalyst: "16.0"
                )
            )
        }
        
        /// - Parameter values: Configurations for scenes you use to display noninteractive content on an externally connected display.
        ///
        /// Use this key to specify scene configurations for a session role. Each scene configuration corresponds to one you use for content you display on the device. The first item in the array represents the default scene configuration for this role.
        ///
        /// Deprecated:
        ///
        /// Use [UIWindowSceneSessionRoleExternalDisplayNonInteractive](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleexternaldisplaynoninteractive) for a scene that displays noninteractive windows on an externally connected screen. A scene that displays interactive windows uses [UIWindowSceneSessionRoleApplication](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleapplication), even if the windows display on an externally connected screen.
        ///
        /// Availability: iOS 13.0-16.0, iPadOS 13.0-16.0, Mac Catalyst 13.0-16.0
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleexternaldisplay)
        static func UIWindowSceneSessionRoleExternalDisplay(_ values: [[UIWindowSceneSessionRoleExternalDisplayEntry]]) -> Self {
            Self.dictArray(
                name: "External Display Session Role (Legacy)",
                key: "UIWindowSceneSessionRoleExternalDisplay",
                childEntries: values,
                availabilities: .init(
                    iOS: "13.0"..."16.0",
                    iPadOS: "13.0"..."16.0",
                    macCatalyst: "13.0"..."16.0"
                )
            )
        }
        
        // MARK: - Immersize space scene roles
        
        /// - Parameter values: Configurations for scenes you use to display SwiftUI content in an immersive space.
        ///
        /// Use this key to specify scene configurations for a session role. Each scene configuration corresponds to one you use for content you display on the device. The first item in the array represents the default scene configuration for this role. Use [UIApplicationPreferredDefaultSceneSessionRole](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationpreferreddefaultscenesessionrole) to indicate a preferred initial scene session role for your app.
        ///
        /// - Note: Immersive space scenes don’t provide support for custom scene delegate classes or scene sub-classes. The system ignores [UISceneClassName](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleapplication/uisceneclassname), [UISceneStoryboardFile](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleapplication/uiscenestoryboardfile) and [UISceneDelegateClassName](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleapplication/uiscenedelegateclassname) keys you provide in a `UISceneSessionRoleImmersiveSpaceApplication` dictionary.
        ///
        /// Availability: visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiscenesessionroleimmersivespaceapplication)
        static func UISceneSessionRoleImmersiveSpaceApplication(_ values: [[UISceneSessionRoleImmersiveSpaceApplicationEntry]]) -> Self {
            Self.dictArray(
                name: nil,
                key: "UISceneSessionRoleImmersiveSpaceApplication",
                childEntries: values,
                availabilities: .init(
                    visionOS: "1,0"
                )
            )
        }
        
        /// - Parameter values: Configurations for scenes you use to display Compositor Services content in an immersive space.
        ///
        /// Use this key to specify scene configurations for a session role. Each scene corresponds to one you use for content you display on the device. Make the default scene the first entry in the array. Use [UIApplicationPreferredDefaultSceneSessionRole](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationpreferreddefaultscenesessionrole) to indicate a preferred initial scene session role.
        ///
        /// - Note: Immersive space scenes don’t provide support for custom scene delegate classes or scene sub-classes, the system ignores [UISceneClassName](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleapplication/uisceneclassname), [UISceneStoryboardFile](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleapplication/uiscenestoryboardfile) and [UISceneDelegateClassName](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleapplication/uiscenedelegateclassname) keys your provide in a `CPSceneSessionRoleImmersiveSpaceApplication` dictionary.
        ///
        /// Availability: visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/cpscenesessionroleimmersivespaceapplication)
        static func CPSceneSessionRoleImmersiveSpaceApplication(_ values: [[CPSceneSessionRoleImmersiveSpaceApplicationEntry]]) -> Self {
            Self.dictArray(
                name: nil,
                key: "CPSceneSessionRoleImmersiveSpaceApplication",
                childEntries: values,
                availabilities: .init(
                    visionOS: "1.0"
                )
            )
        }
        
        // MARK: - CarPlay scene roles

        /// - Parameter values: Configurations for scenes that you use to display template content on a CarPlay-enabled vehicle screen.
        ///
        /// Use this key to specify the scene configuration you use when displaying content on a CarPlay-enabled vehicle screen.
        ///
        /// For more information, see [Displaying Content in CarPlay](https://developer.apple.com/documentation/carplay/displaying-content-in-carplay).
        ///
        /// Availability: iOS 13.0+, iPadOS 13.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/cptemplateapplicationscenesessionroleapplication)
        static func CPTemplateApplicationSceneSessionRoleApplication(_ values: [[CPTemplateApplicationSceneSessionRoleApplicationEntry]]) -> Self {
            Self.dictArray(
                name: nil,
                key: "CPTemplateApplicationSceneSessionRoleApplication",
                childEntries: values,
                availabilities: .init(
                    iOS: "13.0",
                    iPadOS: "13.0"
                )
            )
        }
        
        /// - Parameter values: Configurations for scenes that you use to display navigation content on a CarPlay Dashboard.
        ///
        /// After setting [CPSupportsDashboardNavigationScene](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/cpsupportsdashboardnavigationscene) to `YES`, use this key to specify the scene configuration when displaying navigation content in the CarPlay Dashboard.
        ///
        /// For more information, see [Displaying Content in CarPlay](https://developer.apple.com/documentation/carplay/displaying-content-in-carplay).
        ///
        /// Availability: iOS 13.4+, iPadOS 13.4+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/cptemplateapplicationdashboardscenesessionroleapplication)
        static func CPTemplateApplicationDashboardSceneSessionRoleApplication(_ values: [[CPTemplateApplicationDashboardSceneSessionRoleApplicationEntry]]) -> Self {
            Self.dictArray(
                name: nil,
                key: "CPTemplateApplicationDashboardSceneSessionRoleApplication",
                childEntries: values,
                availabilities: .init(
                    iOS: "13.4",
                    iPadOS: "13.4"
                )
            )
        }
        
        /// - Parameter values: Configurations for scenes you use to display navigation content on a CarPlay Instrument Cluster.
        ///
        /// After setting [CPSupportsInstrumentClusterNavigationScene](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/cpsupportsinstrumentclusternavigationscene) to `YES`, use this key to specify a scene configuration when displaying navigation content in the CarPlay Instrument Cluster.
        ///
        /// For more information, see [Displaying Content in CarPlay](https://developer.apple.com/documentation/carplay/displaying-content-in-carplay).
        ///
        /// Availability: iOS 15.4+, iPadOS 15.4+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/cptemplateapplicationinstrumentclusterscenesessionroleapplication)
        static func CPTemplateApplicationInstrumentClusterSceneSessionRoleApplication(_ values: [[CPTemplateApplicationInstrumentClusterSceneSessionRoleApplicationEntry]]) -> Self {
            Self.dictArray(
                name: nil,
                key: "CPTemplateApplicationInstrumentClusterSceneSessionRoleApplication",
                childEntries: values,
                availabilities: .init(
                    iOS: "15.4",
                    iPadOS: "15.4"
                )
            )
        }
    }
    
}
