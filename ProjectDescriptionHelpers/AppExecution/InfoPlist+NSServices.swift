//
//  InfoPlist+NSServices.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 14.05.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct NSServicesEntry: PlistEntry {
        
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
        
        // MARK: - Invocation
        
        /// - Parameter values: A keyboard shortcut that invokes the service menu command.
        ///
        /// - Properties:
        /// default - string (Required)
        ///
        /// Availability: macOS 10.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsservices/nskeyequivalent)
        static func NSKeyEquivalent(_ values: [String: String]) -> Self {
            var valueDict: [String: Plist.Value] = [:]
            for (key, value) in values {
                valueDict[key] = .string(value)
            }
            return Self(
                name: "Menu key equivalent",
                key: "NSKeyEquivalent",
                value: .dictionary(valueDict),
                availabilities: .init(
                    macOS: "10.0"
                )
            )
        }
        
        /// - Parameter values: Text for a Services menu item.
        ///
        /// - Properties:
        /// default - string (Required)
        ///
        /// Availability: macOS 10.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsservices/nsmenuitem)
        static func NSMenuItem(_ values: [String: String]) -> Self {
            var valueDict: [String: Plist.Value] = [:]
            for (key, value) in values {
                valueDict[key] = .string(value)
            }
            return Self(
                name: "Menu",
                key: "NSMenuItem",
                value: .dictionary(valueDict),
                availabilities: .init(
                    macOS: "10.0"
                ),
                isRequired: true
            )
        }
        
        /// - Parameter value: An instance method that invokes the service.
        ///
        /// Availability: macOS 10.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsservices/nsmessage)
        static func NSMessage(_ value: String) -> Self {
            Self(
                name: "Instance method name",
                key: "NSMessage",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.0"
                )
            )
        }
        
        /// - Parameter value: The port that the service monitors for incoming requests.
        ///
        /// Availability: macOS 10.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsservices/nsportname)
        static func NSPortName(_ value: String) -> Self {
            Self(
                name: "Incoming service port name",
                key: "NSPortName",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.0"
                )
            )
        }
        
        /// - Parameter value: The amount of time, in milliseconds, that the system waits for a response from the service.
        ///
        /// Availability: macOS 10.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsservices/nstimeout)
        static func NSTimeout(_ value: String) -> Self {
            Self(
                name: "Timeout value (in milliseconds)",
                key: "NSTimeout",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.0"
                )
            )
        }
        
        // MARK: - Data
        
        /// - Parameter values: The data types that the service returns.
        ///
        /// Availability: macOS 10.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsservices/nsreturntypes)
        static func NSReturnTypes(_ values: [String]) -> Self {
            Self(
                name: "Return Types",
                key: "NSReturnTypes",
                value: .array(values.map { .string($0) }),
                availabilities: .init(
                    macOS: "10.0"
                )
            )
        }
        
        /// - Parameter values: The data types that the service can read.
        ///
        /// Availability: macOS 10.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsservices/nssendtypes)
        static func NSSendTypes(_ values: [String]) -> Self {
            Self(
                name: "Send Types",
                key: "NSSendTypes",
                value: .array(values.map { .string($0) }),
                availabilities: .init(
                    macOS: "10.0"
                )
            )
        }
        
        /// - Parameter value: A service-specific string value.
        ///
        /// Availability: macOS 10.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsservices/nsuserdata)
        static func NSUserData(_ value: String) -> Self {
            Self(
                name: "User Data",
                key: "NSUserData",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.0"
                )
            )
        }
        
    }
    
}
