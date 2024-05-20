//
//  InfoPlist+MEComposeSession.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 13.05.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct MEComposeSessionEntry: PlistEntry {
        
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
        
        // MARK: - Property List Keys
        
        /// Availability: macOS 12.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/mecomposesession/mecomposeicon)
        static func MEComposeIcon(_ value: String) -> Self {
            Self(
                name: nil,
                key: "MEComposeIcon",
                value: .string(value),
                availabilities: .init(
                    macOS: "12.0"
                )
            )
        }
        
        /// Availability: macOS 12.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/mecomposesession/mecomposeicontooltip)
        static func MEComposeIconToolTip(_ value: String) -> Self {
            Self(
                name: nil,
                key: "MEComposeIconToolTip",
                value: .string(value),
                availabilities: .init(
                    macOS: "12.0"
                )
            )
        }
        
    }
}
