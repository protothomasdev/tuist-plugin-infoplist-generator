//
//  InfoPlist+KernelAndDrivers.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 07.06.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    // MARK: - Driver personalities
    
    /// - Parameter values: One or more groups of attributes that tell the system about the devices your driver supports.
    ///
    /// This key contains a dictionary of driver *personalities*, each of which specifies how to pair the driver to a device. Each key in the dictionary is a string you designate as the name of a specific personality, and the system doesn’t use your key names internally. The value of each key is a dictionary of attributes that describe the specific device to match with the driver. Thus, each key and dictionary combination represents a single personality of the driver. The system uses these personalities to match the driver to an attached device.
    ///
    /// During the matching process, the system compares the attributes in each personality dictionary to data it obtained from the attached device. For example, if the personality dictionary includes the VendorID key, the system compares that key to the vendor information from the device. The system picks the driver that is compatible with the device and provides the best overall match. It then uses additional information from the personality dictionary to load and run the driver.
    ///
    /// All personality dictionaries must include the following keys:
    ///
    /// - [`CFBundleIdentifier`](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleidentifier)
    ///
    /// - [`IOProviderClass`](https://developer.apple.com/documentation/bundleresources/information_property_list/ioproviderclass)
    ///
    /// - [`IOClass`](https://developer.apple.com/documentation/bundleresources/information_property_list/ioclass)
    ///
    /// Include any of the following keys in your personality dictionary to customize the match criteria:
    ///
    /// - [`IOPropertyMatch`](https://developer.apple.com/documentation/bundleresources/information_property_list/iopropertymatch)
    /// 
    /// - [`IONameMatch`](https://developer.apple.com/documentation/bundleresources/information_property_list/ionamematch)
    /// 
    /// - [`IOResourceMatch`](https://developer.apple.com/documentation/bundleresources/information_property_list/ioresourcematch)
    /// 
    /// - `IOParentMatch`
    /// 
    /// - `IOPathMatch`
    /// 
    /// - `IOMatchCategory`
    /// 
    /// - Device-specific keys, such as `DeviceUsagePairs`, `VendorID`, or `ProductID`. See a specific `IOService` subclass for information about the keys it supports.
    ///
    /// Include one of more of the following keys to specify how to load your driver’s code:
    ///
    /// - [`IOUserClass`](https://developer.apple.com/documentation/bundleresources/information_property_list/iouserclass)
    ///
    /// - [`IOUserServerName`](https://developer.apple.com/documentation/bundleresources/information_property_list/iouserservername)
    ///
    /// - [`IOUserClientClass`](https://developer.apple.com/documentation/bundleresources/information_property_list/iouserclientclass)
    ///
    /// Use the following keys to further customize your driver’s behavior:
    ///
    /// - `IOMatchDefer`. Set the value of this key to true to defer the matching process until after kextd starts.
    ///
    /// - `IOUserServerOneProcess`. Set the value of this key to true to run your DriverKit services in one process. If the key is missing or its value is false, the system creates a separate process for each service.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/iokitpersonalities)
    static func IOKitPersonalities(_ values: [IOKitPersonalitiesEntry]) -> Self {
        Self.dict(
            name: nil,
            key: "IOKitPersonalities",
            childEntries: values,
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    // MARK: - Kext dependencies
    
    /// - Parameter value: The backward limit of compatibility for the current driver.
    ///
    /// Specify a previous version for the current driver, or the driver’s current version. Format this string the same way you format the value of the [`CFBundleVersion`](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleversion) key. The combination of this value and the value in the `CFBundleVersion` key define the range of versions that offers the same level of compatibility. Dependent drivers use this information to determine if they are compatible with the driver. For example, if the driver’s current version is `10.0`, and you set the value of this key to `5.0`, a driver that depends on version `7.0` can successfully use the current driver.
    ///
    /// When you change your driver in a way that breaks compatibility with your old code, update the value of this key. At that time, set the new value to the current version of your driver.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/osbundlecompatibleversion)
    static func OSBundleCompatibleVersion(_ value: String) -> Self {
        Self(
            name: nil,
            key: "OSBundleCompatibleVersion",
            value: .string(value),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    /// - Parameter values: The drivers that the system must load before your driver.
    ///
    /// Use this key to specify other drivers that your driver depends on. For example, specify any drivers that contain symbols your driver creates or uses at startup. The system loads the drivers in this list before it attempts to load your driver. If the system fails to resolve the dependencies or load the corresponding libraries, the kernel doesn’t load your driver.
    ///
    /// Each key in the dictionary is the bundle identifier of another driver, and the value is a string that contains the minimum version of the driver you require. Your driver must be compatible with the specified version of the other driver.
    ///
    /// Don’t include this key for codeless kexts.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/osbundlelibraries)
    static func OSBundleLibraries(_ values: [String: String]) -> Self {
        var valueDict: [String: Plist.Value] = [:]
        for (key, value) in values {
            valueDict[key] = .string(value)
        }
        return Self(
            name: nil,
            key: "OSBundleLibraries",
            value: .dictionary(valueDict),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    // MARK: - Thunderbolt compatability
    
    /// - Parameter value: A Boolean value that indicates whether your driver supports Thunderbolt devices.
    ///
    /// Include this key in the personality dictionary of your driver if that personality supports Thunderbolt devices.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/iopcitunnelcompatible)
    static func IOPCITunnelCompatible(_ value: Bool) -> Self {
        Self(
            name: nil,
            key: "IOPCITunnelCompatible",
            value: .boolean(value),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
}
