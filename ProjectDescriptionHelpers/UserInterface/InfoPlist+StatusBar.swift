//
//  InfoPlist+StatusBar.swift
//  ProjectDescriptionHelpers
//
//  Created by Thomas Meyer on 09.05.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct UIStatusBarTintParametersEntry: PlistEntry {
        
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
        
        /// - Parameter values: The initial navigation bar’s style and translucency.
        ///
        /// Availability: iOS 2.0+, iPadOS 2.0+, Mac Catalyst 15.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uistatusbartintparameters/uinavigationbar)
        static func UINavigationBar(_ values: [UINavigationBarEntry]) -> Self {
            Self.dict(
                name: "Navigation bar",
                key: "UINavigationBar",
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
            
            // MARK: - Navigation Bar Configuration
            
            /// - Parameter blue: The blue color value that ranges from 0.0 to 1.0 of the tint color to apply to the background of the navigation bar. Default: 0.0
            /// - Parameter green: The green color value that ranges from 0.0 to 1.0 of the tint color to apply to the background of the navigation bar. Default: 0.0
            /// - Parameter red: The red color value that ranges from 0.0 to 1.0 of the tint color to apply to the background of the navigation bar. Default: 0.0
            ///
            /// Availability: iOS 2.0+, iPadOS 2.0+, Mac Catalyst 15.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
            ///
            /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uistatusbartintparameters/uinavigationbar/tintcolor)
            static func TintColor(blue: Double, green: Double, red: Double) -> Self {
                let value: [String: Plist.Value] = [
                    "Blue": .real(blue),
                    "Green": .real(green),
                    "Red": .real(red)
                ]
                return Self(
                    name: "TintColor",
                    key: "TintColor",
                    value: .dictionary(value),
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
            
            /// - Parameter value: The initial navigation bar’s style and translucency.
            ///
            /// Availability: iOS 2.0+, iPadOS 2.0+, Mac Catalyst 15.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
            ///
            /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uistatusbartintparameters/uinavigationbar)
            static func BackgroundImage(_ value: String) -> Self {
                Self(
                    name: "Background image",
                    key: "BackgroundImage",
                    value: .string(value),
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
            
            /// - Parameter value: The appearance of the navigation bar. UIBarStyleBlack specifies a black background with light content. Default: `UIBarStyleDefault`
            ///
            /// Availability: iOS 2.0+, iPadOS 2.0+, Mac Catalyst 15.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
            ///
            /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uistatusbartintparameters/uinavigationbar)
            static func Style(_ value: UINavigationBarStyle = .UIBarStyleDefault) -> Self {
                Self(
                    name: "Background image",
                    key: "BackgroundImage",
                    value: .string(value.rawValue),
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
            
            /// - Parameter value: A Boolean value that indicates whether the navigation bar is translucent.
            ///
            /// Availability: iOS 2.0+, iPadOS 2.0+, Mac Catalyst 15.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
            ///
            /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uistatusbartintparameters/uinavigationbar)
            static func Translucent(_ value: Bool) -> Self {
                Self(
                    name: "Translucent",
                    key: "Translucent",
                    value: .boolean(value),
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
            
            enum UINavigationBarStyle: String {
                case UIBarStyleDefault
                case UIBarStyleBlack
            }
            
        }
        
    }
    
}
