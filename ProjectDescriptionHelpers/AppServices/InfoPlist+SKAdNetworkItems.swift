//
//  InfoPlist+SKAdNetworkItems.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 07.06.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct SKAdNetworkItemsEntry: PlistEntry {
        
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
        
        // MARK: - Ad network identifiers
        
        /// - Parameter value: A string that contains an ad network ID.
        ///
        /// Contact the ad network to learn their ad network ID. Include this key, and the value of the ad network ID as a string, as a dictionary in the [`SKAdNetworkItems`](https://developer.apple.com/documentation/bundleresources/information_property_list/skadnetworkitems) key.
        ///
        /// Availability: iOS 11.3+, iPadOS 11.3+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/skadnetworkitems/skadnetworkidentifier)
        static func SKAdNetworkIdentifier(_ value: String) -> Self {
            Self(
                name: nil,
                key: "SKAdNetworkIdentifier",
                value: .string(value),
                availabilities: .init(
                    iOS: "11.3",
                    iPadOS: "11.3"
                )
            )
        }
        
    }
    
}
