//
//  InfoPlist+ProExtensionAttributes.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 14.05.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct ProExtensionAttributesEntry: PlistEntry {
        
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
        
        // MARK: - Attributes
        
        /// - Parameter value: An integer that specifies the minimum height of the floating window.
        ///
        /// Availability: ProVideo Workflow Extensions 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/proextensionattributes/contentviewminimumheight)
        static func ContentViewMinimumHeight(_ value: Int) -> Self {
            Self(
                name: nil,
                key: "ContentViewMinimumHeight",
                value: .integer(value),
                availabilities: .init(
                    proVideoWorkFlow: "1.0"
                )
            )
        }
        
        /// - Parameter value: An integer that specifies the minimum width of the floating window.
        ///
        /// Availability: ProVideo Workflow Extensions 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/proextensionattributes/contentviewminimumheight)
        static func ContentViewMinimumWidth(_ value: Int) -> Self {
            Self(
                name: nil,
                key: "ContentViewMinimumWidth",
                value: .integer(value),
                availabilities: .init(
                    proVideoWorkFlow: "1.0"
                )
            )
        }
        
    }
    
}
