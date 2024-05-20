//
//  InfoPlist+ShortCutItems.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 11.05.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct UIApplicationShortcutItemsEntry: PlistEntry {
        
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
        
        public func validate() {
            print("\(self) validate(for:)")
        }
        
        // MARK: - Item Configuration
        
        /// - Parameter value: The icon file name.
        ///
        /// Availability: iOS 9.0+, iPadOS 9.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationshortcutitems/uiapplicationshortcutitemiconfile)
        static func UIApplicationShortcutItemIconFile(_ value: String) -> Self {
            Self(
                name: nil,
                key: "UIApplicationShortcutItemIconFile",
                value: .string(value),
                availabilities: .init(
                    iOS: "9.0",
                    iPadOS: "9.0"
                )
            )
        }
        
        /// - Parameter value: The icon symbol name.
        ///
        /// Availability: iOS 9.0+, iPadOS 9.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationshortcutitems/uiapplicationshortcutitemiconsymbolname)
        static func UIApplicationShortcutItemIconSymbolName(_ value: String) -> Self {
            Self(
                name: nil,
                key: "UIApplicationShortcutItemIconSymbolName",
                value: .string(value),
                availabilities: .init(
                    iOS: "9.0",
                    iPadOS: "9.0"
                )
            )
        }
        
        /// - Parameter value:The type of the icon.
        ///
        /// Availability: iOS 9.0+, iPadOS 9.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationshortcutitems/uiapplicationshortcutitemicontype)
        static func UIApplicationShortcutItemIconType(_ value: String) -> Self {
            Self(
                name: nil,
                key: "UIApplicationShortcutItemIconType",
                value: .string(value),
                availabilities: .init(
                    iOS: "9.0",
                    iPadOS: "9.0"
                )
            )
        }
        
        /// - Parameter value: The subtitle of the Shortcut.
        ///
        /// Availability: iOS 9.0+, iPadOS 9.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationshortcutitems/uiapplicationshortcutitemsubtitle)
        static func UIApplicationShortcutItemSubtitle(_ value: String) -> Self {
            Self(
                name: nil,
                key: "UIApplicationShortcutItemSubtitle",
                value: .string(value),
                availabilities: .init(
                    iOS: "9.0",
                    iPadOS: "9.0"
                )
            )
        }
        
        /// - Parameter value: The title of the Shortcut.
        ///
        /// Availability: iOS 9.0+, iPadOS 9.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationshortcutitems/uiapplicationshortcutitemtitle)
        static func UIApplicationShortcutItemTitle(_ value: String) -> Self {
            Self(
                name: nil,
                key: "UIApplicationShortcutItemTitle",
                value: .string(value),
                availabilities: .init(
                    iOS: "9.0",
                    iPadOS: "9.0"
                ),
                isRequired: true
            )
        }
        
        /// - Parameter value:The Shortcut type.
        ///
        /// Availability: iOS 9.0+, iPadOS 9.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationshortcutitems/uiapplicationshortcutitemtype)
        static func UIApplicationShortcutItemType(_ value: String) -> Self {
            Self(
                name: nil,
                key: "UIApplicationShortcutItemType",
                value: .string(value),
                availabilities: .init(
                    iOS: "9.0",
                    iPadOS: "9.0"
                ),
                isRequired: true
            )
        }
        
        /// - Parameter value: A UserInfo dict.
        ///
        /// Availability: iOS 9.0+, iPadOS 9.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationshortcutitems/uiapplicationshortcutitemuserinfo)
        static func UIApplicationShortcutItemUserInfo(_ values: [String: String]) -> Self {
            var valueDict: [String: Plist.Value] = [:]
            for (key, value) in values {
                valueDict[key] = .string(value)
            }
            return Self(
                name: nil,
                key: "UIApplicationShortcutItemUserInfo",
                value: .dictionary(valueDict),
                availabilities: .init(
                    iOS: "9.0",
                    iPadOS: "9.0"
                )
            )
        }
        
    }
    
}
