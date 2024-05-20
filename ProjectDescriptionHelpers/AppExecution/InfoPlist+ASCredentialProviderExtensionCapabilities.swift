//
//  InfoPlist+ASCredentialProviderExtensionCapabilities.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 13.05.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct ASCredentialProviderExtensionCapabilitiesEntry: PlistEntry {
        
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
        
        // MARK: - Providing credentials
        
        /// - Parameter value: A Boolean value that indicates whether your credential provider extension provides passkeys.
        ///
        /// The operating system includes your extension’s passkeys in AutoFill and sign in sheets if this value is `true`.
        ///
        /// Availability: iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/ascredentialproviderextensioncapabilities/providespasskeys)
        static func ProvidesPasskeys(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "ProvidesPasskeys",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "17.0",
                    iPadOS: "17.0",
                    macCatalyst: "17.0",
                    macOS: "14.0"
                )
            )
        }
        
        /// - Parameter value: A Boolean value that indicates whether your credential provider extension provides passwords.
        ///
        /// Availability: iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/ascredentialproviderextensioncapabilities/providespasswords)
        static func ProvidesPasswords(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "ProvidesPasswords",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "17.0",
                    iPadOS: "17.0",
                    macCatalyst: "17.0",
                    macOS: "14.0"
                )
            )
        }
        
        // MARK: - Configuring credential providers
        
        /// - Parameter value: A Boolean value that indicates whether your extension presents a user interface when someone enables it in Passwords settings.
        ///
        /// Availability: iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/ascredentialproviderextensioncapabilities/showsconfigurationui)
        static func ShowsConfigurationUI(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "ShowsConfigurationUI",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "17.0",
                    iPadOS: "17.0",
                    macCatalyst: "17.0",
                    macOS: "14.0"
                )
            )
        }
        
    }
    
}
