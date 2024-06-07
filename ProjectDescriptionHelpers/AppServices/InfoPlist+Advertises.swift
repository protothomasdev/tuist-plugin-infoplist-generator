//
//  InfoPlist+Advertises.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 07.06.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct AdvertisesEntry: PlistEntry {
        
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
        
        /// Availability: iOS 16.0+, iPadOS 16.0+, watchOS 9.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapplicationservices/advertises/nsapplicationserviceidentifier)
        static func NSApplicationServiceIdentifier(_ value: String) -> Self {
            Self(
                name: nil,
                key: "NSApplicationServiceIdentifier",
                value: .string(value),
                availabilities: .init(
                    iOS: "16.0",
                    iPadOS: "16.0",
                    watchOS: "9.0"
                )
            )
        }
        
    }
    
}
