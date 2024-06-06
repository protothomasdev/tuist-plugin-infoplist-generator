//
//  InfoPlist+BAInitialDownloadRestrictions.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 04.06.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct BAInitialDownloadRestrictionsEntry: PlistEntry {
        
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
        
        // MARK: - Initial download restrictions
        
        /// - Parameter value: The combined size of the initial set of asset downloads.
        ///
        /// Availability: iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/bainitialdownloadrestrictions/badownloadallowance)
        static func BADownloadAllowance(_ value: Int) -> Self {
            Self(
                name: nil,
                key: "BADownloadAllowance",
                value: .integer(value),
                availabilities: .init(
                    iOS: "16.0",
                    iPadOS: "16.0",
                    macCatalyst: "16.0",
                    macOS: "13.0",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter values: The permitted list of domains the extension can use when scheduling the initial set of asset downloads.
        ///
        /// Availability: iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/bainitialdownloadrestrictions/badownloaddomainallowlist)
        static func BADownloadDomainAllowList(_ values: [String]) -> Self {
            Self(
                name: nil,
                key: "BADownloadDomainAllowList",
                value: .array(values.map { .string($0) }),
                availabilities: .init(
                    iOS: "16.0",
                    iPadOS: "16.0",
                    macCatalyst: "16.0",
                    macOS: "13.0",
                    visionOS: "1.0"
                )
            )
        }
        
    }
    
}
