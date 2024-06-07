//
//  InfoPlist+CoreSpotlightActions.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 06.06.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct CoreSpotlightActionsEntry: PlistEntry {
        
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
        
        // MARK: - Action Properties
        
        /// - Parameter value: The user-visible string that Spotlight displays as the title of the action.
        ///
        /// Availability: iOS 15.0+, iPadOS 15.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/corespotlightactions/corespotlightactiontitle)
        static func CoreSpotlightActionTitle(_ value: String) -> Self {
            Self(
                name: nil,
                key: "CoreSpotlightActionTitle",
                value: .string(value),
                availabilities: .init(
                    iOS: "15.0",
                    iPadOS: "15.0",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: The name of a SF Symbol to display next to the action’s title.
        ///
        /// Availability: iOS 15.0+, iPadOS 15.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/corespotlightactions/corespotlightactionsymbolimage)
        static func CoreSpotlightActionSymbolImage(_ value: String) -> Self {
            Self(
                name: nil,
                key: "CoreSpotlightActionSymbolImage",
                value: .string(value),
                availabilities: .init(
                    iOS: "15.0",
                    iPadOS: "15.0",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: A string an app defines to identify the action.
        ///
        /// Core Spotlight includes the value of this key in the `userInfo` dictionary of the [`NSUserActivity`](https://developer.apple.com/documentation/foundation/nsuseractivity) when it invokes the app.
        ///
        /// Availability: iOS 15.0+, iPadOS 15.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/corespotlightactions/corespotlightactionidentifier)
        static func CoreSpotlightActionIdentifier(_ value: String) -> Self {
            Self(
                name: nil,
                key: "CoreSpotlightActionIdentifier",
                value: .string(value),
                availabilities: .init(
                    iOS: "15.0",
                    iPadOS: "15.0",
                    visionOS: "1.0"
                )
            )
        }
        
    }
    
}
