//
//  InfoPlist+NSApplicationServices.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 07.06.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct NSApplicationServicesEntry: PlistEntry {
        
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
        
        /// - Parameter values: An array of dictionaries, where each dictionary contains a unique identifier.
        ///
        /// Availability: iOS 16.0+, iPadOS 16.0+, watchOS 9.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapplicationservices/advertises)
        static func Advertises(_ values: [[AdvertisesEntry]]) -> Self {
            Self.dictArray(
                name: nil,
                key: "Advertises",
                childEntries: values,
                availabilities: .init(
                    iOS: "16.0",
                    iPadOS: "16.0",
                    watchOS: "9.0"
                )
            )
        }
        
        /// - Parameter values: An array of dictionaries, where each dictionary contains a unique identifier, a usage description string, and a list of supported OSs.
        ///
        /// Availability: tvOS 16.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapplicationservices/browses)
        static func Browses(_ values: [[BrowsesEntry]]) -> Self {
            Self.dictArray(
                name: nil,
                key: "Browses",
                childEntries: values,
                availabilities: .init(
                    tvOS: "16.0"
                )
            )
        }
        
    }
    
}
