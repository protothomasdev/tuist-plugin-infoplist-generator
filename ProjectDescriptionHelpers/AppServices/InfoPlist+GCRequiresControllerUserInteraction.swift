//
//  InfoPlist+GCRequiresControllerUserInteraction.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 06.06.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct GCRequiresControllerUserInteractionEntry: PlistEntry {
        
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
        
        // MARK: - Platforms
        
        /// - Parameter value: A Boolean value you use to indicate that a game controller is recommended on iOS.
        ///
        /// Availability: iOS 15.0+, iPadOS 15.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/gcrequirescontrolleruserinteraction/ios)
        static func iOS(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "iOS",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "15.0",
                    iPadOS: "15.0",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: A Boolean value you use to indicate that a game controller is required on visionOS.
        ///
        /// Availability: iOS 15.0+, iPadOS 15.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/gcrequirescontrolleruserinteraction/visionos)
        static func visionOS(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "iOS",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "15.0",
                    iPadOS: "15.0",
                    visionOS: "1.0"
                )
            )
        }
        
    }
    
}
