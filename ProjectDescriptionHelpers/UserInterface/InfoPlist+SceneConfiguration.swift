//
//  InfoPlist+SceneConfiguration.swift
//  ProjectDescriptionHelpers
//
//  Created by Thomas Meyer on 07.05.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct UIWindowSceneSessionRoleApplicationEntry: PlistEntry {
        
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
        
        // MARK: - Configuration Name
        
        /// - Parameter value: The app-specific name you use to identify the scene.
        ///
        /// Assign all scene configurations a unique name to distinguish them in your app. Use this name in the [application(_:configurationForConnecting:options:)](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/3197905-application) method of your app delegate to identify the requested configuration.
        ///
        /// Availability: iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleapplication/uisceneconfigurationname)
        static func UISceneConfigurationName(_ value: String) -> Self {
            Self(
                name: "Configuration Name",
                key: "UISceneConfigurationName",
                value: .string(value),
                availabilities: .init(
                    iOS: "13.0",
                    iPadOS: "13.0",
                    macCatalyst: "13.0"
                )
            )
        }
        
        // MARK: - Scene objects
        
        /// - Parameter value: The name of the scene class you want UIKit to instantiate.
        ///
        /// Specify [UIWindowScene](https://developer.apple.com/documentation/uikit/uiwindowscene) for scenes meant for your app or an external display. Don’t specify `UIScene`.
        ///
        /// Availability: iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleapplication/uisceneclassname)
        static func UISceneClassName(_ value: String) -> Self {
            Self(
                name: "Class Name",
                key: "UISceneClassName",
                value: .string(value),
                availabilities: .init(
                    iOS: "13.0",
                    iPadOS: "13.0",
                    macCatalyst: "13.0"
                )
            )
        }
        
        /// - Parameter value: The name of the app-specific class that you want UIKit to instantiate and use as the scene delegate object.
        ///
        /// The class you specify for this key must adopt the [UISceneDelegate](https://developer.apple.com/documentation/uikit/uiscenedelegate) protocol. If the class you specify for the [UISceneClassName](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleapplication/uisceneclassname) key is [UIWindowScene](https://developer.apple.com/documentation/uikit/uiwindowscene), your class must adopt the [UIWindowSceneDelegate](https://developer.apple.com/documentation/uikit/uiwindowscenedelegate) protocol.
        ///
        /// Availability: iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleapplication/uiscenedelegateclassname)
        static func UISceneDelegateClassName(_ value: String) -> Self {
            Self(
                name: "Delegate Class Name",
                key: "UISceneDelegateClassName",
                value: .string(value),
                availabilities: .init(
                    iOS: "13.0",
                    iPadOS: "13.0",
                    macCatalyst: "13.0"
                )
            )
        }
        
        // MARK: - Storyboard
        
        /// - Parameter value: The name of the storyboard file containing the scene’s initial user interface.
        ///
        /// Specify the name of the storyboard file without the filename extension. For example, if the filename of your storyboard is `Main.storyboard`, specify Main as the value for this key.
        ///
        /// Availability:iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleapplication/uiscenestoryboardfile)
        static func UISceneStoryboardFile(_ value: String) -> Self {
            Self(
                name: "Storyboard Name",
                key: "UISceneStoryboardFile",
                value: .string(value),
                availabilities: .init(
                    iOS: "13.0",
                    iPadOS: "13.0",
                    macCatalyst: "13.0"
                )
            )
        }
        
    }
    
}

extension InfoPlistEntry {
    
    public struct UIWindowSceneSessionRoleExternalDisplayNonInteractiveEntry: PlistEntry {
        
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
        
        // MARK: - Configuration Name
        
        /// - Parameter value: The app-specific name you use to identify the scene.
        ///
        /// Assign all scene configurations a unique name to distinguish them in your app. Use this name in the [application(_:configurationForConnecting:options:)](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/3197905-application) method of your app delegate to identify the requested configuration.
        ///
        /// Availability: iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleapplication/uisceneconfigurationname)
        static func UISceneConfigurationName(_ value: String) -> Self {
            Self(
                name: "Configuration Name",
                key: "UISceneConfigurationName",
                value: .string(value),
                availabilities: .init(
                    iOS: "13.0",
                    iPadOS: "13.0",
                    macCatalyst: "13.0"
                )
            )
        }
        
        // MARK: - Scene objects
        
        /// - Parameter value: The name of the scene class you want UIKit to instantiate.
        ///
        /// Specify [UIWindowScene](https://developer.apple.com/documentation/uikit/uiwindowscene) for scenes meant for your app or an external display. Don’t specify `UIScene`.
        ///
        /// Availability: iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleapplication/uisceneclassname)
        static func UISceneClassName(_ value: String) -> Self {
            Self(
                name: "Class Name",
                key: "UISceneClassName",
                value: .string(value),
                availabilities: .init(
                    iOS: "13.0",
                    iPadOS: "13.0",
                    macCatalyst: "13.0"
                )
            )
        }
        
        /// - Parameter value: The name of the app-specific class that you want UIKit to instantiate and use as the scene delegate object.
        ///
        /// The class you specify for this key must adopt the [UISceneDelegate](https://developer.apple.com/documentation/uikit/uiscenedelegate) protocol. If the class you specify for the [UISceneClassName](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleapplication/uisceneclassname) key is [UIWindowScene](https://developer.apple.com/documentation/uikit/uiwindowscene), your class must adopt the [UIWindowSceneDelegate](https://developer.apple.com/documentation/uikit/uiwindowscenedelegate) protocol.
        ///
        /// Availability: iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleapplication/uiscenedelegateclassname)
        static func UISceneDelegateClassName(_ value: String) -> Self {
            Self(
                name: "Delegate Class Name",
                key: "UISceneDelegateClassName",
                value: .string(value),
                availabilities: .init(
                    iOS: "13.0",
                    iPadOS: "13.0",
                    macCatalyst: "13.0"
                )
            )
        }
        
        // MARK: - Storyboard
        
        /// - Parameter value: The name of the storyboard file containing the scene’s initial user interface.
        ///
        /// Specify the name of the storyboard file without the filename extension. For example, if the filename of your storyboard is `Main.storyboard`, specify Main as the value for this key.
        ///
        /// Availability:iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleapplication/uiscenestoryboardfile)
        static func UISceneStoryboardFile(_ value: String) -> Self {
            Self(
                name: "Storyboard Name",
                key: "UISceneStoryboardFile",
                value: .string(value),
                availabilities: .init(
                    iOS: "13.0",
                    iPadOS: "13.0",
                    macCatalyst: "13.0"
                )
            )
        }
        
    }
    
}

extension InfoPlistEntry {
    
    public struct UIWindowSceneSessionRoleExternalDisplayEntry: PlistEntry {
        
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
        
        // MARK: - Configuration Name
        
        /// - Parameter value: The app-specific name you use to identify the scene.
        ///
        /// Assign all scene configurations a unique name to distinguish them in your app. Use this name in the [application(_:configurationForConnecting:options:)](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/3197905-application) method of your app delegate to identify the requested configuration.
        ///
        /// Availability: iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleapplication/uisceneconfigurationname)
        static func UISceneConfigurationName(_ value: String) -> Self {
            Self(
                name: "Configuration Name",
                key: "UISceneConfigurationName",
                value: .string(value),
                availabilities: .init(
                    iOS: "13.0",
                    iPadOS: "13.0",
                    macCatalyst: "13.0"
                )
            )
        }
        
        // MARK: - Scene objects
        
        /// - Parameter value: The name of the scene class you want UIKit to instantiate.
        ///
        /// Specify [UIWindowScene](https://developer.apple.com/documentation/uikit/uiwindowscene) for scenes meant for your app or an external display. Don’t specify `UIScene`.
        ///
        /// Availability: iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleapplication/uisceneclassname)
        static func UISceneClassName(_ value: String) -> Self {
            Self(
                name: "Class Name",
                key: "UISceneClassName",
                value: .string(value),
                availabilities: .init(
                    iOS: "13.0",
                    iPadOS: "13.0",
                    macCatalyst: "13.0"
                )
            )
        }
        
        /// - Parameter value: The name of the app-specific class that you want UIKit to instantiate and use as the scene delegate object.
        ///
        /// The class you specify for this key must adopt the [UISceneDelegate](https://developer.apple.com/documentation/uikit/uiscenedelegate) protocol. If the class you specify for the [UISceneClassName](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleapplication/uisceneclassname) key is [UIWindowScene](https://developer.apple.com/documentation/uikit/uiwindowscene), your class must adopt the [UIWindowSceneDelegate](https://developer.apple.com/documentation/uikit/uiwindowscenedelegate) protocol.
        ///
        /// Availability: iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleapplication/uiscenedelegateclassname)
        static func UISceneDelegateClassName(_ value: String) -> Self {
            Self(
                name: "Delegate Class Name",
                key: "UISceneDelegateClassName",
                value: .string(value),
                availabilities: .init(
                    iOS: "13.0",
                    iPadOS: "13.0",
                    macCatalyst: "13.0"
                )
            )
        }
        
        // MARK: - Storyboard
        
        /// - Parameter value: The name of the storyboard file containing the scene’s initial user interface.
        ///
        /// Specify the name of the storyboard file without the filename extension. For example, if the filename of your storyboard is `Main.storyboard`, specify Main as the value for this key.
        ///
        /// Availability:iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleapplication/uiscenestoryboardfile)
        static func UISceneStoryboardFile(_ value: String) -> Self {
            Self(
                name: "Storyboard Name",
                key: "UISceneStoryboardFile",
                value: .string(value),
                availabilities: .init(
                    iOS: "13.0",
                    iPadOS: "13.0",
                    macCatalyst: "13.0"
                )
            )
        }
    }
    
}

extension InfoPlistEntry {
    
    public struct UISceneSessionRoleImmersiveSpaceApplicationEntry: PlistEntry {
        
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
        
        // MARK: - Configuration Name
        
        /// - Parameter value: The app-specific name you use to identify the scene.
        ///
        /// Assign all scene configurations a unique name to distinguish them in your app. Use this name in the [application(_:configurationForConnecting:options:)](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/3197905-application) method of your app delegate to identify the requested configuration.
        ///
        /// Availability: iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleapplication/uisceneconfigurationname)
        static func UISceneConfigurationName(_ value: String) -> Self {
            Self(
                name: "Configuration Name",
                key: "UISceneConfigurationName",
                value: .string(value),
                availabilities: .init(
                    iOS: "13.0",
                    iPadOS: "13.0",
                    macCatalyst: "1.0"
                )
            )
        }
        
        // MARK: - Immersion Style
        
        /// - Parameter style: Provide a preferred initial scene style for an immersive space scene.
        ///
        /// Use `UISceneInitialImmersionStyle` to configure the initial style for the system to use to create an immersive space scene for your app.
        ///
        /// - Note: The system uses an appropriate alternate when the environment can’t support the preferred style you specify.
        ///
        /// Availability: visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiscenesessionroleimmersivespaceapplication/uisceneinitialimmersionstyle)
        static func UISceneInitialImmersionStyle(_ style: InfoPlistValue.UISceneInitialImmersionStyle) -> InfoPlistEntry {
            InfoPlistEntry(
                name: nil,
                key: "UISceneInitialImmersionStyle",
                value: .string(style.rawValue),
                availabilities: .init(
                    visionOS: "1.0"
                )
            )
        }
        
    }
    
}

extension InfoPlistEntry {
    
    public struct CPSceneSessionRoleImmersiveSpaceApplicationEntry: PlistEntry {
        
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
        
        // MARK: - Configuration Name
        
        /// - Parameter value: The app-specific name you use to identify the scene.
        ///
        /// Assign all scene configurations a unique name to distinguish them in your app. Use this name in the [application(_:configurationForConnecting:options:)](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/3197905-application) method of your app delegate to identify the requested configuration.
        ///
        /// Availability: iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleapplication/uisceneconfigurationname)
        static func UISceneConfigurationName(_ value: String) -> Self {
            Self(
                name: "Configuration Name",
                key: "UISceneConfigurationName",
                value: .string(value),
                availabilities: .init(
                    iOS: "13.0",
                    iPadOS: "13.0",
                    macCatalyst: "13.0"
                )
            )
        }
    }
    
}

extension InfoPlistEntry {
    
    public struct CPTemplateApplicationSceneSessionRoleApplicationEntry: PlistEntry {
        
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
        
        // MARK: - Configuration name
        
        /// - Parameter value: The app-specific name you use to identify the scene.
        ///
        /// Assign all scene configurations a unique name to distinguish them in your app. Use this name in the [application(_:configurationForConnecting:options:)](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/3197905-application) method of your app delegate to identify the requested configuration.
        ///
        /// Availability: iOS 13.0+, iPadOS 13.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/cptemplateapplicationscenesessionroleapplication/uisceneconfigurationname)
        static func UISceneConfigurationName(_ value: String) -> Self {
            Self(
                name: "Configuration Name",
                key: "UISceneConfigurationName",
                value: .string(value),
                availabilities: .init(
                    iOS: "13.0",
                    iPadOS: "13.0"
                )
            )
        }
        
        // MARK: - Scene objects
        
        /// - Parameter value: The name of the scene class you want UIKit to instantiate.
        ///
        /// CarPlay doesn’t support custom classes. Omit this key or specify [CPTemplateApplicationScene](https://developer.apple.com/documentation/carplay/cptemplateapplicationscene) for scenes meant for a CarPlay-enabled vehicle screen.
        ///
        /// Availability: iOS 13.0+, iPadOS 13.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/cptemplateapplicationscenesessionroleapplication/uisceneclassname)
        static func UISceneClassName(_ value: UISceneClassNameValue) -> Self {
            Self(
                name: "Class Name",
                key: "UISceneClassName",
                value: .string(value.rawValue),
                availabilities: .init(
                    iOS: "13.0",
                    iPadOS: "13.0"
                )
            )
        }
        
        /// - Parameter value: The name of the app-specific class you want UIKit to instantiate and use as the scene delegate object.
        ///
        /// The delegate class you specify for CPTemplateApplicationSceneSessionRoleApplication must adopt the [CPTemplateApplicationSceneDelegate](https://developer.apple.com/documentation/carplay/cptemplateapplicationscenedelegate) protocol.
        ///
        /// Availability: iOS 13.0+, iPadOS 13.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/cptemplateapplicationscenesessionroleapplication/uiscenedelegateclassname)
        static func UISceneDelegateClassName(_ value: String) -> Self {
            Self(
                name: "Delegate Class Name",
                key: "UISceneDelegateClassName",
                value: .string(value),
                availabilities: .init(
                    iOS: "13.0",
                    iPadOS: "13.0"
                )
            )
        }
        
        // MARK: Values
        
        enum UISceneClassNameValue: String {
            case CPTemplateApplicationScene
        }
        
    }
    
}

extension InfoPlistEntry {
    
    public struct CPTemplateApplicationDashboardSceneSessionRoleApplicationEntry: PlistEntry {
        
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
        
        // MARK: - Configuration name
        
        /// - Parameter value: The app-specific name you use to identify the scene.
        ///
        /// Assign all scene configurations a unique name to distinguish them in your app. Use this name in the [application(_:configurationForConnecting:options:)](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/3197905-application) method of your app delegate to identify the requested configuration.
        ///
        /// Availability: iOS 13.4+, iPadOS 13.4+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/cptemplateapplicationdashboardscenesessionroleapplication/uisceneconfigurationname)
        static func UISceneConfigurationName(_ value: String) -> Self {
            Self(
                name: "Configuration Name",
                key: "UISceneConfigurationName",
                value: .string(value),
                availabilities: .init(
                    iOS: "13.4",
                    iPadOS: "13.4"
                )
            )
        }
        
        // MARK: - Scene objects
        
        /// - Parameter value: The name of the scene class you want UIKit to instantiate.
        ///
        /// CarPlay doesn’t support custom classes. Omit this key or specify [CPTemplateApplicationDashboardScene](https://developer.apple.com/documentation/carplay/cptemplateapplicationdashboardscene) for scenes meant for a CarPlay Dashboard.
        ///
        /// Availability: iOS 13.4+, iPadOS 13.4+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/cptemplateapplicationdashboardscenesessionroleapplication/uisceneclassname)
        static func UISceneClassName(_ value: UISceneClassNameValue) -> Self {
            Self(
                name: "Class Name",
                key: "UISceneClassName",
                value: .string(value.rawValue),
                availabilities: .init(
                    iOS: "13.4",
                    iPadOS: "13.4"
                )
            )
        }
        
        /// - Parameter value: The name of the app-specific class you want UIKit to instantiate and use as the scene delegate object.
        ///
        /// The delegate class you specify for `CPTemplateApplicationDashboardSceneSessionRoleApplication` must adopt the [CPTemplateApplicationDashboardSceneDelegate](https://developer.apple.com/documentation/carplay/cptemplateapplicationdashboardscenedelegate) protocol.
        ///
        /// Availability: iOS 13.4+, iPadOS 13.4+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/cptemplateapplicationdashboardscenesessionroleapplication/uiscenedelegateclassname)
        static func UISceneDelegateClassName(_ value: String) -> Self {
            Self(
                name: "Delegate Class Name",
                key: "UISceneDelegateClassName",
                value: .string(value),
                availabilities: .init(
                    iOS: "13.4",
                    iPadOS: "13.4"
                )
            )
        }
        
        // MARK: Value
        
        enum UISceneClassNameValue: String {
            case CPTemplateApplicationScene
        }
        
    }
    
}

extension InfoPlistEntry {
    
    public struct CPTemplateApplicationInstrumentClusterSceneSessionRoleApplicationEntry: PlistEntry {
        
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
        
        // MARK: - Configuration name
        
        /// - Parameter value: The app-specific name you use to identify the scene.
        ///
        /// Assign all scene configurations a unique name to distinguish them in your app. Use this name in the [application(_:configurationForConnecting:options:)](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/3197905-application) method of your app delegate to identify the requested configuration.
        ///
        /// Availability: iOS 15.4+, iPadOS 15.4+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/cptemplateapplicationinstrumentclusterscenesessionroleapplication/uisceneconfigurationname)
        static func UISceneConfigurationName(_ value: String) -> Self {
            Self(
                name: "Configuration Name",
                key: "UISceneConfigurationName",
                value: .string(value),
                availabilities: .init(
                    iOS: "15.4",
                    iPadOS: "15.4"
                )
            )
        }
        
        // MARK: - Scene objects
        
        /// - Parameter value: The name of the scene class you want UIKit to instantiate.
        ///
        /// CarPlay doesn’t support custom classes. Omit this key or specify [CPTemplateApplicationInstrumentClusterScene](https://developer.apple.com/documentation/carplay/cptemplateapplicationinstrumentclusterscene) for scenes meant for a CarPlay Instrument Cluster.
        ///
        /// Availability: iOS 15.4+, iPadOS 15.4+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/cptemplateapplicationinstrumentclusterscenesessionroleapplication/uisceneclassname)
        static func UISceneClassName(_ value: UISceneClassNameValue) -> Self {
            Self(
                name: "Class Name",
                key: "UISceneClassName",
                value: .string(value.rawValue),
                availabilities: .init(
                    iOS: "15.4",
                    iPadOS: "15.4"
                )
            )
        }
        
        /// - Parameter value: The name of the app-specific class you want UIKit to instantiate and use as the scene delegate object.
        ///
        /// The delegate class you specify for `CPTemplateApplicationInstrumentClusterSceneSessionRoleApplication` must adopt the [CPTemplateApplicationInstrumentClusterSceneDelegate](https://developer.apple.com/documentation/carplay/cptemplateapplicationinstrumentclusterscenedelegate) protocol.
        ///
        /// Availability: iOS 15.4+, iPadOS 15.4+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/cptemplateapplicationinstrumentclusterscenesessionroleapplication/uiscenedelegateclassname)
        static func UISceneDelegateClassName(_ value: String) -> Self {
            Self(
                name: "Delegate Class Name",
                key: "UISceneDelegateClassName",
                value: .string(value),
                availabilities: .init(
                    iOS: "15.4",
                    iPadOS: "15.4"
                )
            )
        }
        
        enum UISceneClassNameValue: String {
            case CPTemplateApplicationScene
        }
        
    }
    
}

extension InfoPlistEntry.InfoPlistValue {
    
    enum UISceneInitialImmersionStyle: String {
        case UIImmersionStyleFull
        case UIImmersionStyleMixed
        case UIImmersionStyleProgressive
    }
    
}
