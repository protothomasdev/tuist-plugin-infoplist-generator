//
//  InfoPlist+Browses.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 07.06.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct BrowsesEntry: PlistEntry {
        
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
        
        // MARK: - Property List Key
        
        /// Availability: tvOS 16.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapplicationservices/browses/nsapplicationserviceidentifier)
        static func NSApplicationServiceIdentifier(_ value: String) -> Self {
            Self(
                name: nil,
                key: "NSApplicationServiceIdentifier",
                value: .string(value),
                availabilities: .init(
                    tvOS: "16.0"
                )
            )
        }
        
        /// Availability: tvOS 16.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapplicationservices/browses/nsapplicationserviceplatformsupport)
        static func NSApplicationServicePlatformSupport(_ values: [InfoPlistValue.NSApplicationServicePlatformSupportValue]) -> Self {
            Self(
                name: nil,
                key: "NSApplicationServicePlatformSupport",
                value: .array(values.map { .string($0.rawValue) }),
                availabilities: .init(
                    tvOS: "16.0"
                )
            )
        }
        
        /// Availability: tvOS 16.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapplicationservices/browses/nsapplicationserviceusagedescription)
        static func NSApplicationServiceUsageDescription(_ value: String) -> Self {
            Self(
                name: nil,
                key: "NSApplicationServiceUsageDescription",
                value: .string(value),
                availabilities: .init(
                    tvOS: "16.0"
                )
            )
        }
        
    }
    
}

extension InfoPlistEntry.InfoPlistValue {
    
    enum NSApplicationServicePlatformSupportValue: String {
        case iOS
        case watchOS
        case iPadOS
    }
    
}
