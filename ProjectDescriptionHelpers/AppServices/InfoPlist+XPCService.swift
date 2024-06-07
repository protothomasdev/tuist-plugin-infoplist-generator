//
//  InfoPlist+XPCService.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 06.06.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct XPCServiceEntry: PlistEntry {
        
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
        
        /// Availability: iOS 6.0+, iPadOS 6.0+, macOS 10.8+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/xpcservice/environmentvariables)
        static func EnvironmentVariables(_ values: [String: String]) -> Self {
            var valueDict: [String: Plist.Value] = [:]
            for (key, value) in values {
                valueDict[key] = .string(value)
            }
            return Self(
                name: nil,
                key: "EnvironmentVariables",
                value: .dictionary(valueDict),
                availabilities: .init(
                    iOS: "6.0",
                    iPadOS: "6.0",
                    macOS: "10.8",
                    tvOS: "9.0",
                    watchOS: "2.0",
                    visionOS: "1.0"
                )
            )
        }
        
        /// Availability: iOS 6.0+, iPadOS 6.0+, macOS 10.8+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/xpcservice/joinexistingsession)
        static func JoinExistingSession(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "JoinExistingSession",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "6.0",
                    iPadOS: "6.0",
                    macOS: "10.8",
                    tvOS: "9.0",
                    watchOS: "2.0",
                    visionOS: "1.0"
                )
            )
        }
        
        /// Availability: iOS 6.0+, iPadOS 6.0+, macOS 10.8+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/xpcservice/runlooptype)
        static func RunLoopType(_ value: InfoPlistValue.RunLoopTypeValue) -> Self {
            Self(
                name: nil,
                key: "RunLoopType",
                value: .string(value.rawValue),
                availabilities: .init(
                    iOS: "6.0",
                    iPadOS: "6.0",
                    macOS: "10.8",
                    tvOS: "9.0",
                    watchOS: "2.0",
                    visionOS: "1.0"
                )
            )
        }
        
        /// Availability: iOS 6.0+, iPadOS 6.0+, macOS 10.8+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/xpcservice/servicetype)
        static func ServiceType(_ value: InfoPlistValue.ServiceTypeValue) -> Self {
            Self(
                name: nil,
                key: "ServiceType",
                value: .string(value.rawValue),
                availabilities: .init(
                    iOS: "6.0",
                    iPadOS: "6.0",
                    macOS: "10.8",
                    tvOS: "9.0",
                    watchOS: "2.0",
                    visionOS: "1.0"
                )
            )
        }
        
    }
    
}

extension InfoPlistEntry.InfoPlistValue {
    
    enum RunLoopTypeValue: String {
        case dispatch_main
        case NSRunLoop
    }
    
    enum ServiceTypeValue: String {
        case Application
    }
    
}
