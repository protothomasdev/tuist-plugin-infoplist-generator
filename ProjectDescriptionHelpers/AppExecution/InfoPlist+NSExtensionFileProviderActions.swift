//
//  InfoPlist+NSExtensionFileProviderActions.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 14.05.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct NSExtensionFileProviderActionsEntry: PlistEntry {
        
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
        
        // MARK: - Action Configuration
        
        /// - Parameter value: A predicate that determines whether a File Provider extension action appears in the context menu.
        ///
        /// Availability: iOS 11.0+, iPadOS 11.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionfileprovideractions/nsextensionfileprovideractionactivationrule)
        static func NSExtensionFileProviderActionActivationRule(_ value: String) -> Self {
            Self(
                name: nil,
                key: "NSExtensionFileProviderActionActivationRule",
                value: .string(value),
                availabilities: .init(
                    iOS: "11.0",
                    iPadOS: "11.0",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: A unique identifier for a File Provider extension action.
        ///
        /// Availability: iOS 11.0+, iPadOS 11.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionfileprovideractions/nsextensionfileprovideractionidentifier)
        static func NSExtensionFileProviderActionIdentifier(_ value: String) -> Self {
            Self(
                name: nil,
                key: "NSExtensionFileProviderActionIdentifier",
                value: .string(value),
                availabilities: .init(
                    iOS: "11.0",
                    iPadOS: "11.0",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: The localized name for a File Provider extension action that appears in the context menu.
        ///
        /// Availability: iOS 11.0+, iPadOS 11.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionfileprovideractions/nsextensionfileprovideractionname)
        static func NSExtensionFileProviderActionName(_ value: String) -> Self {
            Self(
                name: nil,
                key: "NSExtensionFileProviderActionName",
                value: .string(value),
                availabilities: .init(
                    iOS: "11.0",
                    iPadOS: "11.0",
                    visionOS: "1.0"
                )
            )
        }
        
    }
    
}
