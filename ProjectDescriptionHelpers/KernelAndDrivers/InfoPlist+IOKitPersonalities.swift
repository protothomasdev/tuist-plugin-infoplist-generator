//
//  InfoPlist+IOKitPersonalities.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 07.06.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct IOKitPersonalitiesEntry: PlistEntry {
        
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
        
        // MARK: - Driver Classes
        
        /// - Parameter value: The name of your driver’s main class, which is the entry point for interacting with your driver’s code.
        ///
        /// Include this key only in the personality dictionary of a DriverKit extension, and use it to specify the name of the custom [`IOService`](https://developer.apple.com/documentation/driverkit/ioservice) subclass that provides your driver’s behavior. When it’s time to load your driver, the system instantiates the specified class and begins the initialization and startup processes.
        ///
        /// Availability: macOS 10.14+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/iouserclass)
        static func IOUserClass(_ value: String) -> Self {
            Self(
                name: nil,
                key: "IOUserClass",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.14"
                )
            )
        }
        
        /// - Parameter value: The name of the class that your driver expects to provide the implementation for its provider object.
        ///
        /// The value of this key is a string that contains the name of an [`IOService`](https://developer.apple.com/documentation/kernel/ioservice-1g) subclass. This class corresponds to the provider object that the system passes to your `IOService` subclass at startup. (For a kernel extension, the system passes the provider object to the [`start`](https://developer.apple.com/documentation/kernel/ioservice/1532606-start) method of your [`IOService`](https://developer.apple.com/documentation/kernel/ioservice-1g) subclass. For a DriverKit extension, the system passes it to the [`Start`](https://developer.apple.com/documentation/kernel/ioservice/3180710-start) method of your [`IOService`](https://developer.apple.com/documentation/driverkit/ioservice) subclass.) Use the provider object in your driver you receive to communicate with the underlying device.
        ///
        /// Availability: macOS 10.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/ioproviderclass)
        static func IOProviderClass(_ value: String) -> Self {
            Self(
                name: nil,
                key: "IOProviderClass",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.0"
                )
            )
        }
        
        /// - Parameter value: The name of the class to instantiate from your driver.
        ///
        /// The value of this key is a string that contains the name of a custom [`IOService`](https://developer.apple.com/documentation/kernel/ioservice-1g) subclass in your driver. When the system successfully matches one of your driver’s personalities to a device, it instantiates the class in this key and calls its [`start`](https://developer.apple.com/documentation/kernel/ioservice/1532606-start) method.
        ///
        /// For the personalities in a DriverKit extension, specify the value `IOUserService` unless otherwise directed by the documentation. For example, the [`IOUserHIDEventService`](https://developer.apple.com/documentation/hiddriverkit/iouserhideventservice) class expects you to specify the value `AppleUserHIDEventService`.
        ///
        /// Availability: macOS 10.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/ioclass)
        static func IOClass(_ value: String) -> Self {
            Self(
                name: nil,
                key: "IOClass",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.0"
                )
            )
        }
        
        /// - Parameter value: The name of the class to instantiate when the system requires a client connection to the driver.
        ///
        /// The value of this key is a string that contains the name of an [`IOService`](https://developer.apple.com/documentation/kernel/ioservice-1g) subclass in your driver.
        ///
        /// Availability: macOS 10.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/iouserclientclass)
        static func IOUserClientClass(_ value: String) -> Self {
            Self(
                name: nil,
                key: "IOUserClientClass",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.0"
                )
            )
        }
        
        /// - Parameter value: The name that the system uses to facilitate communication between your driver and other clients.
        ///
        /// Typically, you set the value of this key to your kext or DriverKit extension’s bundle identifier. The system registers your driver under the specified server name, and uses that name to facilitate communications between your driver and other clients, including the kernel itself.
        ///
        /// Availability: macOS 10.14+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/iouserservername)
        static func IOUserServerName(_ value: String) -> Self {
            Self(
                name: nil,
                key: "IOUserServerName",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.14"
                )
            )
        }
        
        // MARK: - Advanced Match Criteria
        
        /// - Parameter values: The device-specific keys the system must match in order to use your driver.
        ///
        /// The value of this key is a dictionary of device-specific keys and values to use during the matching process. For the system to match the driver personality to a device, all keys in the dictionary must be present in the device, and all values must exactly match the device-provided values.
        ///
        /// Availability: macOS 10.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/iopropertymatch)
        static func IOPropertyMatch(_ values: [String: String]) -> Self {
            var valueDict: [String: Plist.Value] = [:]
            for (key, value) in values {
                valueDict[key] = .string(value)
            }
            return Self(
                name: nil,
                key: "IOPropertyMatch",
                value: .dictionary(valueDict),
                availabilities: .init(
                    macOS: "10.0"
                )
            )
        }
        
        /// - Parameter values: One or more strings that contain the names of possible provider objects in the system registry.
        ///
        /// The value of this key is a string or an array of strings. The system begins the matching process with a provider object, and looks for additional drivers or nubs that support that provider object. When this key is present, the system compares its values to the provider object’s name. (It also compares the strings to the provider’s `compatible` and `device\_type` properties.) If it doesn’t find any matches, the system doesn’t match the driver to the provider object.
        ///
        /// The default name of a provider object is its class name, but providers may register a custom name. For more information about how to set or get information for registered services, see [`IORegistryEntry`](https://developer.apple.com/documentation/kernel/ioregistryentry).
        ///
        /// Availability: macOS 10.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/ionamematch)
        static func IONameMatch(_ values: [String]) -> Self {
            Self(
                name: nil,
                key: "IONameMatch",
                value: .array(values.map { .string($0) }),
                availabilities: .init(
                    macOS: "10.0"
                )
            )
        }
        
        /// - Parameter value: One or more system-specific or device-specific resources that your driver requires.
        ///
        /// The value of this key is a string or an array of strings. Each string contains the name of a resource that must be published in the global resource list before the system loads the driver. For example, specify `IOBSD` to prevent the system from loading your driver until after the `BSD` kernel is available.
        ///
        /// To access the list of global resources, call the [`getResourceService`](https://developer.apple.com/documentation/kernel/ioservice/1532617-getresourceservice) method of `IOService`. To publish custom resources from your driver, call the [`publishResource`](https://developer.apple.com/documentation/kernel/ioservice/1532848-publishresource) method.
        ///
        /// Availability: macOS 10.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/ioresourcematch)
        static func IOResourceMatch(_ value: String) -> Self {
            Self(
                name: nil,
                key: "IOResourceMatch",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.0"
                )
            )
        }
        
        /// Availability: macOS 10.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/ioparentmatch)
        static func IOParentMatch(_ values: [String: String]) -> Self {
            var valueDict: [String: Plist.Value] = [:]
            for (key, value) in values {
                valueDict[key] = .string(value)
            }
            return Self(
                name: nil,
                key: "IOParentMatch",
                value: .dictionary(valueDict),
                availabilities: .init(
                    macOS: "10.0"
                )
            )
        }
        
        /// Availability: macOS 10.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/iopathmatch)
        static func IOPathMatch(_ value: String) -> Self {
            Self(
                name: nil,
                key: "IOPathMatch",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.0"
                )
            )
        }
        
        /// Availability: macOS 10.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/iomatchcategory)
        static func IOMatchCategory(_ value: String) -> Self {
            Self(
                name: nil,
                key: "IOMatchCategory",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.0"
                )
            )
        }
        
    }
    
}
