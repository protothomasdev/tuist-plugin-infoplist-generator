//
//  InfoPlist+SafariServices.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 14.05.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct SFSafariContentScriptEntry: PlistEntry {
        
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
        
        // MARK: - URL Patterns
        
        /// - Parameter values: The webpages that the script can be injected into.
        ///
        /// Availability: macOS 10.11.5+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/sfsafaricontentscript/allowed_url_patterns)
        static func AllowedURLPatterns(_ values: [String]) -> Self {
            Self(
                name: nil,
                key: "Allowed URL Patterns",
                value: .array(values.map { .string($0) }),
                availabilities: .init(
                    macOS: "10.11.5"
                )
            )
        }
        
        /// - Parameter values: The webpages that the script can't be injected into.
        ///
        /// Availability: macOS 10.11.5+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/sfsafaricontentscript/excluded_url_patterns)
        static func ExcludedURLPatterns(_ values: [String]) -> Self {
            Self(
                name: nil,
                key: "Excluded URL Patterns",
                value: .array(values.map { .string($0) }),
                availabilities: .init(
                    macOS: "10.11.5"
                )
            )
        }
        
        // MARK: - Path
        
        /// - Parameter value: The path to the content script, relative to the Resources folder in the app extension's bundle.
        ///
        /// Availability: macOS 10.11.5+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/sfsafaricontentscript/script)
        static func Script(_ value: String) -> Self {
            Self(
                name: nil,
                key: "Script",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.11.5"
                )
            )
        }
        
    }
    
    public struct SFSafariContextMenuEntry: PlistEntry {
        
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
        
        // MARK: - Menu Item Configuration
        
        /// - Parameter value: The command to send to the app extension when the user selects the context menu item.
        ///
        /// Availability: macOS 10.11.5+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/sfsafaricontextmenu/command)
        static func Command(_ value: String) -> Self {
            Self(
                name: nil,
                key: "Command",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.11.5"
                )
            )
        }
        
        /// - Parameter value: The text to display for the context menu item.
        ///
        /// Availability: macOS 10.11.5+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/sfsafaricontextmenu/text)
        static func text(_ value: String) -> Self {
            Self(
                name: nil,
                key: "Text",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.11.5"
                )
            )
        }
        
    }
    
    public struct SFSafariStyleSheetEntry: PlistEntry {
        
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
        
        // MARK: - URL Patterns
        
        /// - Parameter values: The webpages that the style sheet can be injected into.
        ///
        /// Availability: macOS 10.11.5+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/sfsafaristylesheet/allowed_url_patterns)
        static func AllowedURLPatterns(_ values: [String]) -> Self {
            Self(
                name: nil,
                key: "Allowed URL Patterns",
                value: .array(values.map { .string($0) }),
                availabilities: .init(
                    macOS: "10.11.5"
                )
            )
        }
        
        /// - Parameter values: The webpages that the style sheet can't be injected into.
        ///
        /// Availability: macOS 10.11.5+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/sfsafaristylesheet/excluded_url_patterns)
        static func ExcludedURLPatterns(_ values: [String]) -> Self {
            Self(
                name: nil,
                key: "Excluded URL Patterns",
                value: .array(values.map { .string($0) }),
                availabilities: .init(
                    macOS: "10.11.5"
                )
            )
        }
        
        // MARK: - Path
        
        /// - Parameter value: The path to the style sheet, relative to the Resources folder in the app extension's bundle.
        ///
        /// Availability: macOS 10.11.5+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/sfsafaristylesheet/style_sheet)
        static func StyleSheet(_ value: String) -> Self {
            Self(
                name: nil,
                key: "Style Sheet",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.11.5"
                )
            )
        }
        
    }
    
    public struct SFSafariToolbarItemEntry: PlistEntry {
        
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
        
        // MARK: - Toolbar Item Configuration
        
        /// - Parameter value: The properties of an app extension's toolbar item that's been added to the Safari window.
        ///
        /// Availability: macOS 10.11.5+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/sfsafaritoolbaritem/action)
        static func Action(_ value: String) -> Self {
            Self(
                name: nil,
                key: "Action",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.11.5"
                )
            )
        }
        
        /// - Parameter value: The identifier for a Safari extension's toolbar item.
        ///
        /// Availability: macOS 10.11.5+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/sfsafaritoolbaritem/identifier)
        static func Identifier(_ value: String) -> Self {
            Self(
                name: nil,
                key: "Identifier",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.11.5"
                )
            )
        }
        
        /// - Parameter value: An image that represents a Safari extension's toolbar item.
        ///
        /// Availability: macOS 10.11.5+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/sfsafaritoolbaritem/image)
        static func Image(_ value: String) -> Self {
            Self(
                name: nil,
                key: "Image",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.11.5"
                )
            )
        }
        
        /// - Parameter value: The label for the Safari extension's toolbar item.
        ///
        /// Availability: macOS 10.11.5+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/sfsafaritoolbaritem/label)
        static func Label(_ value: String) -> Self {
            Self(
                name: nil,
                key: "Label",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.11.5"
                )
            )
        }
        
    }
    
    public struct SFSafariWebsiteAccessEntry: PlistEntry {
        
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
        
        // MARK: - Access Configuration
        
        /// - Parameter values: The domains that a Safari extension is allowed access to.
        ///
        /// Availability: macOS 10.11.5+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/sfsafariwebsiteaccess/allowed_domains)
        static func AllowedDomains(_ values: [String]) -> Self {
            Self(
                name: nil,
                key: "Allowed Domains",
                value: .array(values.map { .string($0) }),
                availabilities: .init(
                    macOS: "10.11.5"
                )
            )
        }
        
        /// - Parameter value: The level of a Safari extension’s website access.
        ///
        /// Availability: macOS 10.11.5+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/sfsafariwebsiteaccess/level)
        static func Level(_ value: InfoPlistValue.Level) -> Self {
            Self(
                name: nil,
                key: "Level",
                value: .string(value.rawValue),
                availabilities: .init(
                    macOS: "10.11.5"
                )
            )
        }
        
    }
    
}

extension InfoPlistEntry.InfoPlistValue {
    
    enum Level: String {
        case None
        case All
        case Some
    }
    
}
