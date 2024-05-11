//
//  InfoPlist+LaunchInterface.swift
//  ProjectDescriptionHelpers
//
//  Created by Thomas Meyer on 09.05.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct UILaunchScreenEntry: PlistEntry {
        
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
        
        // MARK: - Main Interface
        
        /// - Parameter value: The name of a color to use as the background color on the launch screen.
        ///
        /// Provide a value for this key that’s the name of a color in your asset catalog. You use the same string for the value that you might use when calling the [init(named:)](https://developer.apple.com/documentation/uikit/uicolor/2877380-init) initializer of [UIColor](https://developer.apple.com/documentation/uikit/uicolor).
        ///
        /// If you don’t set a color, the system uses a default of [systemBackground](https://developer.apple.com/documentation/uikit/uicolor/3173140-systembackground), which varies according to whether the user has selected the light appearance or Dark Mode for the device.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreen/uicolorname)
        static func UIColorName(_ value: String) -> Self {
            Self(
                name: nil,
                key: "UIColorName",
                value: .string(value),
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
        /// - Parameter value: The name of an image to display during app launch.
        ///
        /// Provide a value for this key that’s the name of an image in your asset catalog. You use the same string for the value that you might use when calling the [init(named:)](https://developer.apple.com/documentation/uikit/uiimage/1624146-init) initializer of [UIImage](https://developer.apple.com/documentation/uikit/uiimage). Because the image comes from your asset catalog, you can use slicing to provide a small image that works on many different platforms.
        ///
        /// If you don’t specify an image, the display shows the background color, as given by the [UIColorName](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreen/uicolorname) key. The background color may also show through any transparency in your image.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreen/uiimagename)
        static func UIImageName(_ value: String) -> Self {
            Self(
                name: nil,
                key: "UIImageName",
                value: .string(value),
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
        /// - Parameter value: A Boolean that specifies whether the launch image should respect the safe area insets.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreen/uiimagerespectssafeareainsets)
        static func UIImageRespectsSafeAreaInsets(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "UIImageRespectsSafeAreaInsets",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
        // MARK: - Border Elements
        
        /// - Parameter values: Navigation bar visibility and configuration during launch.
        ///
        /// When you provide a dictionary for this key, the system displays a navigation bar during launch. You can optionally set the dictionary’s [UIImageName](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uilaunchscreendefinitions/uinavigationbar/uiimagename) key to define a custom image for the navigation bar.
        ///
        /// Omit this key if you don’t want to display a navigation bar during launch.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uilaunchscreendefinitions/uinavigationbar)
        static func UINavigationBar(_ values: [UINavigationBarEntry]) -> Self {
            Self.dict(
                name: nil,
                key: "UINavigationBar",
                childEntries: values,
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
        /// - Parameter values: Tab bar visibility and configuration during launch.
        ///
        /// When you provide a dictionary for this key, the system displays a tab bar during launch. You can optionally set the dictionary’s [UIImageName](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uilaunchscreendefinitions/uitabbar/uiimagename) key to define a custom image for the tab bar.
        ///
        /// Omit this key if you don’t want to display a tab bar during launch.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uilaunchscreendefinitions/uitabbar)
        static func UITabBar(_ values: [UITabBarEntry]) -> Self {
            Self.dict(
                name: nil,
                key: "UITabBar",
                childEntries: values,
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
        /// - Parameter values: Toolbar visibility and configuration during launch.
        ///
        /// When you provide a dictionary for this key, the system displays a toolbar during launch. You can optionally set the dictionary’s [UIImageName](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uilaunchscreendefinitions/uitoolbar/uiimagename) key to define a custom image for the toolbar.
        ///
        /// Omit this key if you don’t want to display a toolbar during launch.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uilaunchscreendefinitions/uitoolbar)
        static func UIToolbar(_ values: [UIToolBarEntry]) -> Self {
            Self.dict(
                name: nil,
                key: "UIToolbar",
                childEntries: values,
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
        public struct UINavigationBarEntry: PlistEntry {
            
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
            
            /// - Parameter value: A custom image that replaces the navigation bar during launch.
            ///
            /// Provide a value for this key that’s the name of an image in your asset catalog. You use the same string for the value that you might use when calling the [init(named:)](https://developer.apple.com/documentation/uikit/uiimage/1624146-init) initializer of [UIImage](https://developer.apple.com/documentation/uikit/uiimage).
            ///
            /// Availability: iOS 14.0+, iPadOS 14.0+
            ///
            /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uilaunchscreendefinitions/uinavigationbar/uiimagename)
            static func UIImageName(_ value: String) -> Self {
                Self(
                    name: nil,
                    key: "UIImageName",
                    value: .string(value),
                    availabilities: .init(
                        iOS: "14.0",
                        iPadOS: "14.0"
                    )
                )
            }
            
        }
        
        public struct UITabBarEntry: PlistEntry {
            
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
            
            /// - Parameter value: A custom image that replaces the tab bar during launch.
            ///
            /// Provide a value for this key that’s the name of an image in your asset catalog. You use the same string for the value that you might use when calling the [init(named:)](https://developer.apple.com/documentation/uikit/uiimage/1624146-init) initializer of [UIImage](https://developer.apple.com/documentation/uikit/uiimage).
            ///
            /// Availability: iOS 14.0+, iPadOS 14.0+
            ///
            /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uilaunchscreendefinitions/uinavigationbar/uiimagename)
            static func UIImageName(_ value: String) -> Self {
                Self(
                    name: nil,
                    key: "UIImageName",
                    value: .string(value),
                    availabilities: .init(
                        iOS: "14.0",
                        iPadOS: "14.0"
                    )
                )
            }
            
        }
        
        public struct UIToolBarEntry: PlistEntry {
            
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
            
            /// - Parameter value: A custom image that replaces the toolbar bar during launch.
            ///
            /// Provide a value for this key that’s the name of an image in your asset catalog. You use the same string for the value that you might use when calling the [init(named:)](https://developer.apple.com/documentation/uikit/uiimage/1624146-init) initializer of [UIImage](https://developer.apple.com/documentation/uikit/uiimage).
            ///
            /// Availability: iOS 14.0+, iPadOS 14.0+
            ///
            /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uilaunchscreendefinitions/uinavigationbar/uiimagename)
            static func UIImageName(_ value: String) -> Self {
                Self(
                    name: nil,
                    key: "UIImageName",
                    value: .string(value),
                    availabilities: .init(
                        iOS: "14.0",
                        iPadOS: "14.0"
                    )
                )
            }
            
        }
        
    }
    
}

extension InfoPlistEntry {
    
    public struct UILaunchScreensEntry: PlistEntry {
        
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
        
        // MARK: - Launch Screen Definitions
        
        /// - Parameter values: A collection of launch screen configuration dictionaries.
        ///
        /// Each dictionary in the array resembles the one you might define for the [UILaunchScreen](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreen) key, with the addition of a [UILaunchScreenIdentifier](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uilaunchscreendefinitions/uilaunchscreenidentifier) key that provides a unique identifier for the dictionary. You use that identifier when associating to the dictionary with a URL scheme in the [UIURLToLaunchScreenAssociations](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uiurltolaunchscreenassociations) array, or to indicate it as the default launch screen with the [UIDefaultLaunchScreen](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uidefaultlaunchscreen) key.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uilaunchscreendefinitions)
        static func UILaunchScreenDefinitions(_ values: [[UILaunchScreenDefinitionsEntry]]) -> Self {
            Self.dictArray(
                name: nil,
                key: "UILaunchScreenDefinitions",
                childEntries: values,
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
        // MARK: - Associations
        
        /// - Parameter values: The mapping of URL schemes to launch screen configurations.
        ///
        /// Set the keys of this dictionary to the URL schemes that your app supports. Provide a value for each key that is the identifier, stored in the [UILaunchScreenIdentifier](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uilaunchscreendefinitions/uilaunchscreenidentifier) key, of one of the launch screen definitions in your [UILaunchScreenDefinitions](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uilaunchscreendefinitions) array.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uiurltolaunchscreenassociations)
        static func UIURLToLaunchScreenAssociations(_ values: [String: String]) -> Self {
            var dict: [String: Plist.Value] = [:]
            for (key, value) in values {
                dict[key] = .string(value)
            }
            return Self(
                name: nil,
                key: "UIURLToLaunchScreenAssociations",
                value: .dictionary(dict),
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
        /// - Parameter value: The default launch screen configuration.
        ///
        /// Provide the identifier, stored in the [UILaunchScreenIdentifier](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uilaunchscreendefinitions/uilaunchscreenidentifier) key, of one of the launch screen definitions in your [UILaunchScreenDefinitions](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uilaunchscreendefinitions) array. The system displays the named launch screen when launching your app in response to a URL scheme that you don’t enumerate in the [UIURLToLaunchStoryboardAssociations](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchstoryboards/uiurltolaunchstoryboardassociations) dictionary, or when the user launches your app directly.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uidefaultlaunchscreen)
        static func UIDefaultLaunchScreen(_ value: String) -> Self {
            Self(
                name: nil,
                key: "UIDefaultLaunchScreen",
                value: .string(value),
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
        public struct UILaunchScreenDefinitionsEntry: PlistEntry {
            
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
            
            // MARK: - Identity
            
            /// - Parameter value: A unique name for the launch screen configuration.
            ///
            /// You can choose any name you want for the identifier, as long as it’s unique among all your app’s configuration identifiers. Use this value to refer to the configuration when storing a URL to configuration mapping as the value for the [UIURLToLaunchScreenAssociations](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uiurltolaunchscreenassociations) key, or when specifying a default configuration with the [UIDefaultLaunchScreen](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uidefaultlaunchscreen) key.
            ///
            /// Availability: iOS 14.0+, iPadOS 14.0+
            ///
            /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uilaunchscreendefinitions/uilaunchscreenidentifier)
            static func UILaunchScreenIdentifier(_ value: String) -> Self {
                Self(
                    name: nil,
                    key: "UILaunchScreenIdentifier",
                    value: .string(value),
                    availabilities: .init(
                        iOS: "14.0",
                        iPadOS: "14.0"
                    )
                )
            }
            
            // MARK: - Main Interface
            
            /// - Parameter value: The name of a color to use as the background color on the launch screen.
            ///
            /// Provide a value for this key that’s the name of a color in your asset catalog. You use the same string for the value that you might use when calling the [init(named:)](https://developer.apple.com/documentation/uikit/uicolor/2877380-init) initializer of [UIColor](https://developer.apple.com/documentation/uikit/uicolor).
            ///
            /// If you don’t set a color, the system uses a default of [systemBackground](https://developer.apple.com/documentation/uikit/uicolor/3173140-systembackground), which varies according to whether the user has selected the light appearance or Dark Mode for the device.
            ///
            /// Availability: iOS 14.0+, iPadOS 14.0+
            ///
            /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreen/uicolorname)
            static func UIColorName(_ value: String) -> Self {
                Self(
                    name: nil,
                    key: "UIColorName",
                    value: .string(value),
                    availabilities: .init(
                        iOS: "14.0",
                        iPadOS: "14.0"
                    )
                )
            }
            
            /// - Parameter value: The name of an image to display during app launch.
            ///
            /// Provide a value for this key that’s the name of an image in your asset catalog. You use the same string for the value that you might use when calling the [init(named:)](https://developer.apple.com/documentation/uikit/uiimage/1624146-init) initializer of [UIImage](https://developer.apple.com/documentation/uikit/uiimage). Because the image comes from your asset catalog, you can use slicing to provide a small image that works on many different platforms.
            ///
            /// If you don’t specify an image, the display shows the background color, as given by the [UIColorName](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreen/uicolorname) key. The background color may also show through any transparency in your image.
            ///
            /// Availability: iOS 14.0+, iPadOS 14.0+
            ///
            /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreen/uiimagename)
            static func UIImageName(_ value: String) -> Self {
                Self(
                    name: nil,
                    key: "UIImageName",
                    value: .string(value),
                    availabilities: .init(
                        iOS: "14.0",
                        iPadOS: "14.0"
                    )
                )
            }
            
            /// - Parameter value: A Boolean that specifies whether the launch image should respect the safe area insets.
            ///
            /// Availability: iOS 14.0+, iPadOS 14.0+
            ///
            /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreen/uiimagerespectssafeareainsets)
            static func UIImageRespectsSafeAreaInsets(_ value: Bool) -> Self {
                Self(
                    name: nil,
                    key: "UIImageRespectsSafeAreaInsets",
                    value: .boolean(value),
                    availabilities: .init(
                        iOS: "14.0",
                        iPadOS: "14.0"
                    )
                )
            }
            
            // MARK: - Border Elements
            
            /// - Parameter values: Navigation bar visibility and configuration during launch.
            ///
            /// When you provide a dictionary for this key, the system displays a navigation bar during launch. You can optionally set the dictionary’s [UIImageName](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uilaunchscreendefinitions/uinavigationbar/uiimagename) key to define a custom image for the navigation bar.
            ///
            /// Omit this key if you don’t want to display a navigation bar during launch.
            ///
            /// Availability: iOS 14.0+, iPadOS 14.0+
            ///
            /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uilaunchscreendefinitions/uinavigationbar)
            static func UINavigationBar(_ values: [UINavigationBarEntry]) -> Self {
                Self.dict(
                    name: nil,
                    key: "UINavigationBar",
                    childEntries: values,
                    availabilities: .init(
                        iOS: "14.0",
                        iPadOS: "14.0"
                    )
                )
            }
            
            /// - Parameter values: Tab bar visibility and configuration during launch.
            ///
            /// When you provide a dictionary for this key, the system displays a tab bar during launch. You can optionally set the dictionary’s [UIImageName](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uilaunchscreendefinitions/uitabbar/uiimagename) key to define a custom image for the tab bar.
            ///
            /// Omit this key if you don’t want to display a tab bar during launch.
            ///
            /// Availability: iOS 14.0+, iPadOS 14.0+
            ///
            /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uilaunchscreendefinitions/uitabbar)
            static func UITabBar(_ values: [UITabBarEntry]) -> Self {
                Self.dict(
                    name: nil,
                    key: "UITabBar",
                    childEntries: values,
                    availabilities: .init(
                        iOS: "14.0",
                        iPadOS: "14.0"
                    )
                )
            }
            
            /// - Parameter values: Toolbar visibility and configuration during launch.
            ///
            /// When you provide a dictionary for this key, the system displays a toolbar during launch. You can optionally set the dictionary’s [UIImageName](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uilaunchscreendefinitions/uitoolbar/uiimagename) key to define a custom image for the toolbar.
            ///
            /// Omit this key if you don’t want to display a toolbar during launch.
            ///
            /// Availability: iOS 14.0+, iPadOS 14.0+
            ///
            /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uilaunchscreendefinitions/uitoolbar)
            static func UIToolbar(_ values: [UIToolBarEntry]) -> Self {
                Self.dict(
                    name: nil,
                    key: "UIToolbar",
                    childEntries: values,
                    availabilities: .init(
                        iOS: "14.0",
                        iPadOS: "14.0"
                    )
                )
            }
            
            // MARK: Value
            
            public struct UINavigationBarEntry: PlistEntry {
                
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
                
                /// - Parameter value: A custom image that replaces the navigation bar during launch.
                ///
                /// Provide a value for this key that’s the name of an image in your asset catalog. You use the same string for the value that you might use when calling the [init(named:)](https://developer.apple.com/documentation/uikit/uiimage/1624146-init) initializer of [UIImage](https://developer.apple.com/documentation/uikit/uiimage).
                ///
                /// Availability: iOS 14.0+, iPadOS 14.0+
                ///
                /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uilaunchscreendefinitions/uinavigationbar/uiimagename)
                static func UIImageName(_ value: String) -> Self {
                    Self(
                        name: nil,
                        key: "UIImageName",
                        value: .string(value),
                        availabilities: .init(
                            iOS: "14.0",
                            iPadOS: "14.0"
                        )
                    )
                }
                
            }
            
            public struct UITabBarEntry: PlistEntry {
                
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
                
                /// - Parameter value: A custom image that replaces the tab bar during launch.
                ///
                /// Provide a value for this key that’s the name of an image in your asset catalog. You use the same string for the value that you might use when calling the [init(named:)](https://developer.apple.com/documentation/uikit/uiimage/1624146-init) initializer of [UIImage](https://developer.apple.com/documentation/uikit/uiimage).
                ///
                /// Availability: iOS 14.0+, iPadOS 14.0+
                ///
                /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uilaunchscreendefinitions/uinavigationbar/uiimagename)
                static func UIImageName(_ value: String) -> Self {
                    Self(
                        name: nil,
                        key: "UIImageName",
                        value: .string(value),
                        availabilities: .init(
                            iOS: "14.0",
                            iPadOS: "14.0"
                        )
                    )
                }
                
            }
            
            public struct UIToolBarEntry: PlistEntry {
                
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
                
                /// - Parameter value: A custom image that replaces the toolbar bar during launch.
                ///
                /// Provide a value for this key that’s the name of an image in your asset catalog. You use the same string for the value that you might use when calling the [init(named:)](https://developer.apple.com/documentation/uikit/uiimage/1624146-init) initializer of [UIImage](https://developer.apple.com/documentation/uikit/uiimage).
                ///
                /// Availability: iOS 14.0+, iPadOS 14.0+
                ///
                /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreens/uilaunchscreendefinitions/uinavigationbar/uiimagename)
                static func UIImageName(_ value: String) -> Self {
                    Self(
                        name: nil,
                        key: "UIImageName",
                        value: .string(value),
                        availabilities: .init(
                            iOS: "14.0",
                            iPadOS: "14.0"
                        )
                    )
                }
                
            }
            
        }
        
    }
    
    public struct UILaunchStoryboardsEntry: PlistEntry {
        
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
        
        // MARK: - Specifying Launch Storyboards
        
        /// - Parameter values: An array of dictionaries mapping launch storyboard identifiers to storyboards.
        ///
        /// Each dictionary has [UILaunchStoryboardFile](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchstoryboards/uilaunchstoryboarddefinitions/uilaunchstoryboardfile) and [UILaunchStoryboardIdentifier](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchstoryboards/uilaunchstoryboarddefinitions/uilaunchstoryboardidentifier) keys, associating a storyboard file or xib with an identifier.
        ///
        /// Availability: iOS 9.0+, iPadOS 9.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchstoryboards/uilaunchstoryboarddefinitions)
        static func UILaunchStoryboardDefinitions(_ values: [[UILaunchStoryboardDefinitionsEntry]]) -> Self {
            Self.dictArray(
                name: nil,
                key: "UILaunchStoryboardDefinitions",
                childEntries: values,
                availabilities: .init(
                    iOS: "9.0",
                    iPadOS: "9.0"
                )
            )
        }
        
        /// - Parameter value: The identifier of the default launch storyboard to use.
        ///
        /// Availability: iOS 9.0+, iPadOS 9.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchstoryboards/uidefaultlaunchstoryboard)
        static func UIDefaultLaunchStoryboard(_ value: String) -> Self {
            Self(
                name: nil,
                key: "UIDefaultLaunchStoryboard",
                value: .string(value),
                availabilities: .init(
                    iOS: "9.0",
                    iPadOS: "9.0"
                )
            )
        }
        
        // MARK: - Associating Storyboard Identifiers with Schemes
        
        /// - Parameter values: The user-defined storyboard identifiers that associate with supported schemes.
        ///
        /// Availability: iOS 9.0+, iPadOS 9.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchstoryboards/uiurltolaunchstoryboardassociations)
        static func UIURLToLaunchStoryboardAssociations(_ values: [String: String]) -> Self {
            var dict: [String: Plist.Value] = [:]
            for (key, value) in values {
                dict[key] = .string(value)
            }
            return Self(
                name: nil,
                key: "UIURLToLaunchStoryboardAssociations",
                value: .dictionary(dict),
                availabilities: .init(
                    iOS: "9.0",
                    iPadOS: "9.0"
                )
            )
        }
        
        public struct UILaunchStoryboardDefinitionsEntry: PlistEntry {
            
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
            
            /// - Parameter value: A user-specified identifier for a launch storyboard.
            ///
            /// Availability: iOS 9.0+, iPadOS 9.0+
            ///
            /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchstoryboards/uilaunchstoryboarddefinitions/uilaunchstoryboardidentifier)
            static func UILaunchStoryboardIdentifier(_ value: String) -> Self {
                Self(
                    name: nil,
                    key: "UILaunchStoryboardIdentifier",
                    value: .string(value),
                    availabilities: .init(
                        iOS: "9.0",
                        iPadOS: "9.0"
                    )
                )
            }
            
            /// - Parameter value: A launch storyboard file or xib.
            ///
            /// Availability: iOS 9.0+, iPadOS 9.0+
            ///
            /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchstoryboards/uilaunchstoryboarddefinitions/uilaunchstoryboardfile)
            static func UILaunchStoryboardFile(_ value: String) -> Self {
                Self(
                    name: nil,
                    key: "UILaunchStoryboardFile",
                    value: .string(value),
                    availabilities: .init(
                        iOS: "9.0",
                        iPadOS: "9.0"
                    )
                )
            }
            
        }
        
    }
    
}
