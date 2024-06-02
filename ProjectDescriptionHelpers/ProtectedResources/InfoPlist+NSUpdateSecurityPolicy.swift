//
//  InfoPlist+NSUpdateSecurityPolicy.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 30.05.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct NSUpdateSecurityPolicyEntry: PlistEntry {
        
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
        
        // MARK: - Security policies
        
        /// - Parameter values: An array of Team IDs that the system uses to determine whether an installer package, signed by one of the specified Team IDs, can update an app’s bundle.
        ///
        /// Availability: Mac Catalyst 16.0+, macOS 13.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsupdatesecuritypolicy/allowpackages)
        static func AllowPackages(_ values: [String]) -> Self {
            Self(
                name: nil,
                key: "AllowPackages",
                value: .array(values.map { .string($0) }),
                availabilities: .init(
                    macCatalyst: "16.0",
                    macOS: "13.0"
                )
            )
        }
        
        /// - Parameter values: A dictionary that maps Team IDs to an array of signing (bundle) IDs that the system uses to determine whether a process can update an app’s bundle.
        ///
        /// Availability: Mac Catalyst 16.0+, macOS 13.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsupdatesecuritypolicy/allowprocesses)
        static func AllowProcesses(_ values: [String: [String]]) -> Self {
            var valueDict: [String: Plist.Value] = [:]
            for (key, valueArray) in values {
                let dict: [String: Plist.Value] = ["": .array(valueArray.map { .string($0) })]
                valueDict[key] = .dictionary(dict)
            }
            return Self(
                name: nil,
                key: "AllowProcesses",
                value: .dictionary(valueDict),
                availabilities: .init(
                    macCatalyst: "16.0",
                    macOS: "13.0"
                )
            )
        }
        
    }
    
}
