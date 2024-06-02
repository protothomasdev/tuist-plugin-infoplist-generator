//
//  InfoPlist+NSSensorKitUsageDetail.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 01.06.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct NSSensorKitUsageDetailEntry: PlistEntry {
        
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
        
        // MARK: - Device Activity
        
        /// - Parameter values: A collection of properties that explain your app’s need to observe how frequently a user’s device activates.
        ///
        /// - This key is a possible member of the [`NSSensorKitUsageDetail`](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail) dictionary.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagedeviceusage)
        static func SRSensorUsageDeviceUsage(_ values: [SRSensorUsageDeviceUsageEntry]) -> Self {
            Self.dict(
                name: nil,
                key: "SRSensorUsageDeviceUsage",
                childEntries: values,
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
        /// - Parameter values: A collection of properties that explain your app’s need to observe the user’s keyboard activity.
        ///
        /// - This key is a possible member of the [`NSSensorKitUsageDetail`](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail) dictionary.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagekeyboardmetrics)
        static func SRSensorUsageKeyboardMetrics(_ values: [SRSensorUsageKeyboardMetricsEntry]) -> Self {
            Self.dict(
                name: nil,
                key: "SRSensorUsageKeyboardMetrics",
                childEntries: values,
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
        /// - Parameter values: A collection of properties that explain your app’s need to observe how the user wears their watch.
        ///
        /// - This key is a possible member of the [`NSSensorKitUsageDetail`](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail) dictionary.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagewristdetection)
        static func SRSensorUsageWristDetection(_ values: [SRSensorUsageWristDetectionEntry]) -> Self {
            Self.dict(
                name: nil,
                key: "SRSensorUsageWristDetection",
                childEntries: values,
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
        // MARK: - App Activity
        
        /// - Parameter values: A collection of properties that explain your app’s need to observe the user’s activity in Messages.
        ///
        /// - This key is a possible member of the [`NSSensorKitUsageDetail`](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail) dictionary.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagemessageusage)
        static func SRSensorUsageMessageUsage(_ values: [SRSensorUsageMessageUsageEntry]) -> Self {
            Self.dict(
                name: nil,
                key: "SRSensorUsageMessageUsage",
                childEntries: values,
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
        /// - Parameter values: A collection of properties that explain your app’s need to observe the user’s phone activity.
        ///
        /// - This key is a possible member of the [`NSSensorKitUsageDetail`](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail) dictionary.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagephoneusage)
        static func SRSensorUsagePhoneUsage(_ values: [SRSensorUsagePhoneUsageEntry]) -> Self {
            Self.dict(
                name: nil,
                key: "SRSensorUsagePhoneUsage",
                childEntries: values,
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
        // MARK: - User Activity
        
        /// - Parameter values: A collection of properties that explains your app’s need to observe the person’s electrocardiogram sensor data.
        ///
        /// Availability: iOS 17.4+, iPadOS 17.4+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusageecg)
        static func SRSensorUsageECG(_ values: [SRSensorUsageECGEntry]) -> Self {
            Self.dict(
                name: nil,
                key: "SRSensorUsageECG",
                childEntries: values,
                availabilities: .init(
                    iOS: "17.4",
                    iPadOS: "17.4"
                )
            )
        }
        
        /// - Parameter values: A collection of properties that explains your app’s need to observe the device’s elevation data.
        ///
        /// This key is a possible member of the [`NSSensorKitUsageDetail`](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail) dictionary.
        ///
        /// Availability: iOS 15.4+, iPadOS 15.4+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusageelevation)
        static func SRSensorUsageElevation(_ values: [SRSensorUsageElevationEntry]) -> Self {
            Self.dict(
                name: nil,
                key: "SRSensorUsageElevation",
                childEntries: values,
                availabilities: .init(
                    iOS: "15.4",
                    iPadOS: "15.4"
                )
            )
        }
        
        /// - Parameter values: A collection of properties that explains your app’s need to observe the user’s facial expressions.
        ///
        /// This key is a possible member of the [`NSSensorKitUsageDetail`](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail) dictionary.
        ///
        /// Availability: iOS 17.0+, iPadOS 17.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagefacialmetrics)
        static func SRSensorUsageFacialMetrics(_ values: [SRSensorUsageFacialMetricsEntry]) -> Self {
            Self.dict(
                name: nil,
                key: "SRSensorUsageFacialMetrics",
                childEntries: values,
                availabilities: .init(
                    iOS: "17.0",
                    iPadOS: "17.0"
                )
            )
        }
        
        /// - Parameter values: A collection of properties that explains your app’s need to observe the user’s heart rate.
        ///
        /// This key is a possible member of the [`NSSensorKitUsageDetail`](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail) dictionary.
        ///
        /// Availability: iOS 17.0+, iPadOS 17.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusageheartrate)
        static func SRSensorUsageHeartRate(_ values: [SRSensorUsageHeartRateEntry]) -> Self {
            Self.dict(
                name: nil,
                key: "SRSensorUsageHeartRate",
                childEntries: values,
                availabilities: .init(
                    iOS: "17.0",
                    iPadOS: "17.0"
                )
            )
        }
        
        /// - Parameter values: A collection of properties that explains your app’s need to observe the user’s interactions with media, such as images and videos, in messaging apps.
        ///
        /// This key is a possible member of the [`NSSensorKitUsageDetail`](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail) dictionary.
        ///
        /// Availability: iOS 16.4+, iPadOS 16.4+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagemediaevents)
        static func SRSensorUsageMediaEvents(_ values: [SRSensorUsageMediaEventsEntry]) -> Self {
            Self.dict(
                name: nil,
                key: "SRSensorUsageMediaEvents",
                childEntries: values,
                availabilities: .init(
                    iOS: "16.4",
                    iPadOS: "16.4"
                )
            )
        }
        
        /// - Parameter values: A collection of properties that explain your app’s need to observe motion data.
        ///
        /// This key is a possible member of the [`NSSensorKitUsageDetail`](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail) dictionary.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagemotion)
        static func SRSensorUsageMotion(_ values: [SRSensorUsageMotionEntry]) -> Self {
            Self.dict(
                name: nil,
                key: "SRSensorUsageMotion",
                childEntries: values,
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
        /// - Parameter values: A collection of properties that explains your app’s need to observe the user’s odometer data.
        ///
        /// This key is a possible member of the [`NSSensorKitUsageDetail`](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail) dictionary.
        ///
        /// Availability: iOS 17.0+, iPadOS 17.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusageodometer)
        static func SRSensorUsageOdometer(_ values: [SRSensorUsageOdometerEntry]) -> Self {
            Self.dict(
                name: nil,
                key: "SRSensorUsageOdometer",
                childEntries: values,
                availabilities: .init(
                    iOS: "17.0",
                    iPadOS: "17.0"
                )
            )
        }
        
        /// - Parameter values: A collection of properties that explain your app’s need to observe steps information.
        ///
        /// This key is a possible member of the [`NSSensorKitUsageDetail`](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail) dictionary.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagepedometer)
        static func SRSensorUsagePedometer(_ values: [SRSensorUsagePedometerEntry]) -> Self {
            Self.dict(
                name: nil,
                key: "SRSensorUsagePedometer",
                childEntries: values,
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
        /// - Parameter values: A collection of properties that explains your app’s need to observe the person’s photoplethysmogram sensor data.
        ///
        /// Availability: iOS 17.4+, iPadOS 17.4+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusageppg)
        static func SRSensorUsagePPG(_ values: [SRSensorUsagePPGEntry]) -> Self {
            Self.dict(
                name: nil,
                key: "SRSensorUsagePPG",
                childEntries: values,
                availabilities: .init(
                    iOS: "17.4",
                    iPadOS: "17.4"
                )
            )
        }
        
        /// - Parameter values: A collection of properties that explain your app’s need to analyze the user’s speech.
        ///
        /// This key is a possible member of the [`NSSensorKitUsageDetail`](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail) dictionary.
        ///
        /// Availability: iOS 15.0+, iPadOS 15.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagespeechmetrics)
        static func SRSensorUsageSpeechMetrics(_ values: [SRSensorUsageSpeechMetricsEntry]) -> Self {
            Self.dict(
                name: nil,
                key: "SRSensorUsageSpeechMetrics",
                childEntries: values,
                availabilities: .init(
                    iOS: "15.0",
                    iPadOS: "15.0"
                )
            )
        }
        
        /// - Parameter values: A collection of properties that explain your app’s need to observe the locations that the user frequents.
        ///
        /// This key is a possible member of the [`NSSensorKitUsageDetail`](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail) dictionary.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagevisits)
        static func SRSensorUsageVisits(_ values: [SRSensorUsageVisitsEntry]) -> Self {
            Self.dict(
                name: nil,
                key: "SRSensorUsageVisits",
                childEntries: values,
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
        /// - Parameter values: A collection of properties that explains your app’s need to observe the user’s wrist temperature while the user sleeps.
        ///
        /// This key is a possible member of the [`NSSensorKitUsageDetail`](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail) dictionary.
        ///
        /// Availability: iOS 17.0+, iPadOS 17.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagewristtemperature)
        static func SRSensorUsageWristTemperature(_ values: [SRSensorUsageWristTemperatureEntry]) -> Self {
            Self.dict(
                name: nil,
                key: "SRSensorUsageWristTemperature",
                childEntries: values,
                availabilities: .init(
                    iOS: "17.0",
                    iPadOS: "17.0"
                )
            )
        }
        
        // MARK: - Environment
        
        /// - Parameter values: A collection of properties that explain your app’s need to observe light levels in the user’s environment.
        ///
        /// - This key is a possible member of the [`NSSensorKitUsageDetail`](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail) dictionary.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusageambientlightsensor)
        static func SRSensorUsageAmbientLightSensor(_ values: [SRSensorUsageAmbientLightSensorEntry]) -> Self {
            Self.dict(
                name: nil,
                key: "SRSensorUsageAmbientLightSensor",
                childEntries: values,
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
    }
    
}

extension InfoPlistEntry {
    
    public struct SRSensorUsageDeviceUsageEntry: PlistEntry {
        
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
        
        // MARK: - Sensor usage keys
        
        /// - Parameter value: An explanatory string that details the manner in which your study uses the sensor’s data.
        ///
        /// The Research Sensor & Usage Data Request workflow displays this property’s text below the banner titled “How the study will use this data”. The user approves or denies your app’s ability to read the sensor’s data based on the text you provide.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagedeviceusage/description)
        static func Description(_ value: String) -> Self {
            Self(
                name: nil,
                key: "Description",
                value: .string(value),
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                ),
                isRequired: true
            )
        }
        
        /// - Parameter value: A Boolean value that indicates whether your app’s study relies on this sensor.
        ///
        /// The system checks the value for this property when the user declines the access prompt for this sensor. If you set the value of this property to `true`, the system forgoes installing your app. If `false`, the system withholds the sensor’s data but installs your app assuming your study can continue at a limited capacity without the sensor’s data.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagedeviceusage/required)
        static func Required(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "Required",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
    }
    
    public struct SRSensorUsageKeyboardMetricsEntry: PlistEntry {
        
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
        
        // MARK: - Sensor usage keys
        
        /// - Parameter value: An explanatory string that details the manner in which your study uses the sensor’s data.
        ///
        /// The Research Sensor & Usage Data Request workflow displays this property’s text below the banner titled “How the study will use this data”. The user approves or denies your app’s ability to read the sensor’s data based on the text you provide.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagekeyboardmetrics/description)
        static func Description(_ value: String) -> Self {
            Self(
                name: nil,
                key: "Description",
                value: .string(value),
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                ),
                isRequired: true
            )
        }
        
        /// - Parameter value: A Boolean value that indicates whether your app’s study relies on this sensor.
        ///
        /// The system checks the value for this property when the user declines the access prompt for this sensor. If you set the value of this property to `true`, the system forgoes installing your app. If `false`, the system withholds the sensor’s data but installs your app assuming your study can continue at a limited capacity without the sensor’s data.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagekeyboardmetrics/required)
        static func Required(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "Required",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
    }
    
    public struct SRSensorUsageWristDetectionEntry: PlistEntry {
        
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
        
        // MARK: - Sensor usage keys
        
        /// - Parameter value: An explanatory string that details the manner in which your study uses the sensor’s data.
        ///
        /// The Research Sensor & Usage Data Request workflow displays this property’s text below the banner titled “How the study will use this data”. The user approves or denies your app’s ability to read the sensor’s data based on the text you provide.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagewristdetection/description)
        static func Description(_ value: String) -> Self {
            Self(
                name: nil,
                key: "Description",
                value: .string(value),
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                ),
                isRequired: true
            )
        }
        
        /// - Parameter value: A Boolean value that indicates whether your app’s study relies on this sensor.
        ///
        /// The system checks the value for this property when the user declines the access prompt for this sensor. If you set the value of this property to `true`, the system forgoes installing your app. If `false`, the system withholds the sensor’s data but installs your app assuming your study can continue at a limited capacity without the sensor’s data.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagewristdetection/required)
        static func Required(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "Required",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
    }
    
    public struct SRSensorUsageMessageUsageEntry: PlistEntry {
        
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
        
        // MARK: - Sensor usage keys
        
        /// - Parameter value: An explanatory string that details the manner in which your study uses the sensor’s data.
        ///
        /// The Research Sensor & Usage Data Request workflow displays this property’s text below the banner titled “How the study will use this data”. The user approves or denies your app’s ability to read the sensor’s data based on the text you provide.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagemessageusage/description)
        static func Description(_ value: String) -> Self {
            Self(
                name: nil,
                key: "Description",
                value: .string(value),
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                ),
                isRequired: true
            )
        }
        
        /// - Parameter value: A Boolean value that indicates whether your app’s study relies on this sensor.
        ///
        /// The system checks the value for this property when the user declines the access prompt for this sensor. If you set the value of this property to `true`, the system forgoes installing your app. If `false`, the system withholds the sensor’s data but installs your app assuming your study can continue at a limited capacity without the sensor’s data.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagemessageusage/required)
        static func Required(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "Required",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
    }
    
    public struct SRSensorUsagePhoneUsageEntry: PlistEntry {
        
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
        
        // MARK: - Sensor usage keys
        
        /// - Parameter value: An explanatory string that details the manner in which your study uses the sensor’s data.
        ///
        /// The Research Sensor & Usage Data Request workflow displays this property’s text below the banner titled “How the study will use this data”. The user approves or denies your app’s ability to read the sensor’s data based on the text you provide.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagephoneusage/description)
        static func Description(_ value: String) -> Self {
            Self(
                name: nil,
                key: "Description",
                value: .string(value),
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                ),
                isRequired: true
            )
        }
        
        /// - Parameter value: A Boolean value that indicates whether your app’s study relies on this sensor.
        ///
        /// The system checks the value for this property when the user declines the access prompt for this sensor. If you set the value of this property to `true`, the system forgoes installing your app. If `false`, the system withholds the sensor’s data but installs your app assuming your study can continue at a limited capacity without the sensor’s data.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagephoneusage/required)
        static func Required(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "Required",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
    }
    
    public struct SRSensorUsageECGEntry: PlistEntry {
        
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
        
        // MARK: - Sensor usage keys
        
        /// - Parameter value: An explanatory string that details the manner in which your study uses the sensor’s data.
        ///
        /// The Research Sensor & Usage Data Request workflow displays this property’s text below the banner titled “How the study will use this data”. The user approves or denies your app’s ability to read the sensor’s data based on the text you provide.
        ///
        /// Availability: iOS 17.4+, iPadOS 17.4+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusageecg/description)
        static func Description(_ value: String) -> Self {
            Self(
                name: nil,
                key: "Description",
                value: .string(value),
                availabilities: .init(
                    iOS: "17.4",
                    iPadOS: "17.4"
                ),
                isRequired: true
            )
        }
        
        /// - Parameter value: A Boolean value that indicates whether your app’s study relies on this sensor.
        ///
        /// The system checks the value for this property when the user declines the access prompt for this sensor. If you set the value of this property to `true`, the system forgoes installing your app. If `false`, the system withholds the sensor’s data but installs your app assuming your study can continue at a limited capacity without the sensor’s data.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusageecg/required)
        static func Required(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "Required",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
    }
    
    public struct SRSensorUsageElevationEntry: PlistEntry {
        
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
        
        // MARK: - Sensor usage keys
        
        /// - Parameter value: An explanatory string that details the manner in which your study uses the sensor’s data.
        ///
        /// The Research Sensor & Usage Data Request workflow displays this property’s text below the banner titled “How the study will use this data”. The user approves or denies your app’s ability to read the sensor’s data based on the text you provide.
        ///
        /// Availability: iOS 15.4+, iPadOS 15.4+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusageelevation/description)
        static func Description(_ value: String) -> Self {
            Self(
                name: nil,
                key: "Description",
                value: .string(value),
                availabilities: .init(
                    iOS: "15.4",
                    iPadOS: "15.4"
                ),
                isRequired: true
            )
        }
        
    }
    
    public struct SRSensorUsageFacialMetricsEntry: PlistEntry {
        
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
        
        // MARK: - Sensor usage keys
        
        /// - Parameter value: An explanatory string that details the manner in which your study uses the sensor’s data.
        ///
        /// The Research Sensor & Usage Data Request workflow displays this property’s text below the banner titled “How the study will use this data”. The user approves or denies your app’s ability to read the sensor’s data based on the text you provide.
        ///
        /// Availability: iOS 17.0+, iPadOS 17.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagefacialmetrics/description)
        static func Description(_ value: String) -> Self {
            Self(
                name: nil,
                key: "Description",
                value: .string(value),
                availabilities: .init(
                    iOS: "17.0",
                    iPadOS: "17.0"
                ),
                isRequired: true
            )
        }
        
        /// - Parameter value: A Boolean value that indicates whether your app’s study relies on this sensor.
        ///
        /// The system checks the value for this property when the user declines the access prompt for this sensor. If you set the value of this property to `true`, the system forgoes installing your app. If `false`, the system withholds the sensor’s data but installs your app assuming your study can continue at a limited capacity without the sensor’s data.
        ///
        /// Availability: iOS 17.0+, iPadOS 17.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagefacialmetrics/required)
        static func Required(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "Required",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "17.0",
                    iPadOS: "17.0"
                )
            )
        }
        
    }
    
    public struct SRSensorUsageHeartRateEntry: PlistEntry {
        
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
        
        // MARK: - Sensor usage keys
        
        /// - Parameter value: An explanatory string that details the manner in which your study uses the sensor’s data.
        ///
        /// The Research Sensor & Usage Data Request workflow displays this property’s text below the banner titled “How the study will use this data”. The user approves or denies your app’s ability to read the sensor’s data based on the text you provide.
        ///
        /// Availability: iOS 17.0+, iPadOS 17.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusageheartrate/description)
        static func Description(_ value: String) -> Self {
            Self(
                name: nil,
                key: "Description",
                value: .string(value),
                availabilities: .init(
                    iOS: "17.0",
                    iPadOS: "17.0"
                ),
                isRequired: true
            )
        }
        
        /// - Parameter value: A Boolean value that indicates whether your app’s study relies on this sensor.
        ///
        /// The system checks the value for this property when the user declines the access prompt for this sensor. If you set the value of this property to `true`, the system forgoes installing your app. If `false`, the system withholds the sensor’s data but installs your app assuming your study can continue at a limited capacity without the sensor’s data.
        ///
        /// Availability: iOS 17.0+, iPadOS 17.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusageheartrate/required)
        static func Required(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "Required",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "17.0",
                    iPadOS: "17.0"
                )
            )
        }
        
    }
    
    public struct SRSensorUsageMediaEventsEntry: PlistEntry {
        
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
        
        // MARK: - Sensor usage keys
        
        /// - Parameter value: An explanatory string that details the manner in which your study uses the sensor’s data.
        ///
        /// The Research Sensor & Usage Data Request workflow displays this property’s text below the banner titled “How the study will use this data”. The user approves or denies your app’s ability to read the sensor’s data based on the text you provide.
        ///
        /// Availability: iOS 16.4+, iPadOS 16.4+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagemediaevents)
        static func Description(_ value: String) -> Self {
            Self(
                name: nil,
                key: "Description",
                value: .string(value),
                availabilities: .init(
                    iOS: "16.4",
                    iPadOS: "16.4"
                ),
                isRequired: true
            )
        }
        
    }
    
    public struct SRSensorUsageMotionEntry: PlistEntry {
        
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
        
        // MARK: - Sensor usage keys
        
        /// - Parameter value: An explanatory string that details the manner in which your study uses the sensor’s data.
        ///
        /// The Research Sensor & Usage Data Request workflow displays this property’s text below the banner titled “How the study will use this data”. The user approves or denies your app’s ability to read the sensor’s data based on the text you provide.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagemotion/description)
        static func Description(_ value: String) -> Self {
            Self(
                name: nil,
                key: "Description",
                value: .string(value),
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                ),
                isRequired: true
            )
        }
        
        /// - Parameter value: A Boolean value that indicates whether your app’s study relies on this sensor.
        ///
        /// The system checks the value for this property when the user declines the access prompt for this sensor. If you set the value of this property to `true`, the system forgoes installing your app. If `false`, the system withholds the sensor’s data but installs your app assuming your study can continue at a limited capacity without the sensor’s data.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagemotion/required)
        static func Required(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "Required",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
    }
    
    public struct SRSensorUsageOdometerEntry: PlistEntry {
        
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
        
        // MARK: - Sensor usage keys
        
        /// - Parameter value: An explanatory string that details the manner in which your study uses the sensor’s data.
        ///
        /// The Research Sensor & Usage Data Request workflow displays this property’s text below the banner titled “How the study will use this data”. The user approves or denies your app’s ability to read the sensor’s data based on the text you provide.
        ///
        /// Availability: iOS 17.0+, iPadOS 17.0+
        ///
        /// Reference: [Apple Documentation]()
        static func Description(_ value: String) -> Self {
            Self(
                name: nil,
                key: "Description",
                value: .string(value),
                availabilities: .init(
                    iOS: "17.0",
                    iPadOS: "17.0"
                ),
                isRequired: true
            )
        }
        
        /// - Parameter value: A Boolean value that indicates whether your app’s study relies on this sensor.
        ///
        /// The system checks the value for this property when the user declines the access prompt for this sensor. If you set the value of this property to `true`, the system forgoes installing your app. If `false`, the system withholds the sensor’s data but installs your app assuming your study can continue at a limited capacity without the sensor’s data.
        ///
        /// Availability: iOS 17.0+, iPadOS 17.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusageodometer/required)
        static func Required(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "Required",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "17.0",
                    iPadOS: "17.0"
                )
            )
        }
        
    }
    
    public struct SRSensorUsagePedometerEntry: PlistEntry {
        
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
        
        // MARK: - Sensor usage keys
        
        /// - Parameter value: An explanatory string that details the manner in which your study uses the sensor’s data.
        ///
        /// The Research Sensor & Usage Data Request workflow displays this property’s text below the banner titled “How the study will use this data”. The user approves or denies your app’s ability to read the sensor’s data based on the text you provide.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagepedometer/description)
        static func Description(_ value: String) -> Self {
            Self(
                name: nil,
                key: "Description",
                value: .string(value),
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                ),
                isRequired: true
            )
        }
        
        /// - Parameter value: A Boolean value that indicates whether your app’s study relies on this sensor.
        ///
        /// The system checks the value for this property when the user declines the access prompt for this sensor. If you set the value of this property to `true`, the system forgoes installing your app. If `false`, the system withholds the sensor’s data but installs your app assuming your study can continue at a limited capacity without the sensor’s data.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagepedometer/required)
        static func Required(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "Required",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
    }
    
    public struct SRSensorUsagePPGEntry: PlistEntry {
        
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
        
        // MARK: - Sensor usage keys
        
        /// - Parameter value: An explanatory string that details the manner in which your study uses the sensor’s data.
        ///
        /// The Research Sensor & Usage Data Request workflow displays this property’s text below the banner titled “How the study will use this data”. The user approves or denies your app’s ability to read the sensor’s data based on the text you provide.
        ///
        /// Availability: iOS 17.4+, iPadOS 17.4+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusageppg/description)
        static func Description(_ value: String) -> Self {
            Self(
                name: nil,
                key: "Description",
                value: .string(value),
                availabilities: .init(
                    iOS: "17.4",
                    iPadOS: "17.4"
                ),
                isRequired: true
            )
        }
        
        /// - Parameter value: A Boolean value that indicates whether your app’s study relies on this sensor.
        ///
        /// The system checks the value for this property when the user declines the access prompt for this sensor. If you set the value of this property to `true`, the system forgoes installing your app. If `false`, the system withholds the sensor’s data but installs your app assuming your study can continue at a limited capacity without the sensor’s data.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusageppg/required)
        static func Required(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "Required",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
    }
    
    public struct SRSensorUsageSpeechMetricsEntry: PlistEntry {
        
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
        
        // MARK: - Sensor usage keys
        
        /// - Parameter value: An explanatory string that details the manner in which your study uses the sensor’s data.
        ///
        /// The Research Sensor & Usage Data Request workflow displays this property’s text below the banner titled “How the study will use this data”. The user approves or denies your app’s ability to read the sensor’s data based on the text you provide.
        ///
        /// Availability: iOS 15.0+, iPadOS 15.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagespeechmetrics/description)
        static func Description(_ value: String) -> Self {
            Self(
                name: nil,
                key: "Description",
                value: .string(value),
                availabilities: .init(
                    iOS: "15.0",
                    iPadOS: "15.0"
                ),
                isRequired: true
            )
        }
        
        /// - Parameter value: A Boolean value that indicates whether your app’s study relies on this sensor.
        ///
        /// The system checks the value for this property when the user declines the access prompt for this sensor. If you set the value of this property to `true`, the system forgoes installing your app. If `false`, the system withholds the sensor’s data but installs your app assuming your study can continue at a limited capacity without the sensor’s data.
        ///
        /// Availability: iOS 15.0+, iPadOS 15.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagespeechmetrics/required)
        static func Required(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "Required",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "15.0",
                    iPadOS: "15.0"
                )
            )
        }
        
    }
    
    public struct SRSensorUsageVisitsEntry: PlistEntry {
        
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
        
        // MARK: - Sensor usage keys
        
        /// - Parameter value: An explanatory string that details the manner in which your study uses the sensor’s data.
        ///
        /// The Research Sensor & Usage Data Request workflow displays this property’s text below the banner titled “How the study will use this data”. The user approves or denies your app’s ability to read the sensor’s data based on the text you provide.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagevisits/description)
        static func Description(_ value: String) -> Self {
            Self(
                name: nil,
                key: "Description",
                value: .string(value),
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                ),
                isRequired: true
            )
        }
        
        /// - Parameter value: A Boolean value that indicates whether your app’s study relies on this sensor.
        ///
        /// The system checks the value for this property when the user declines the access prompt for this sensor. If you set the value of this property to `true`, the system forgoes installing your app. If `false`, the system withholds the sensor’s data but installs your app assuming your study can continue at a limited capacity without the sensor’s data.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagevisits/required)
        static func Required(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "Required",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0"
                )
            )
        }
        
    }
    
    public struct SRSensorUsageWristTemperatureEntry: PlistEntry {
        
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
        
        // MARK: - Sensor usage keys
        
        /// - Parameter value: An explanatory string that details the manner in which your study uses the sensor’s data.
        ///
        /// The Research Sensor & Usage Data Request workflow displays this property’s text below the banner titled “How the study will use this data”. The user approves or denies your app’s ability to read the sensor’s data based on the text you provide.
        ///
        /// Availability: iOS 17.0+, iPadOS 17.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagewristtemperature/description)
        static func Description(_ value: String) -> Self {
            Self(
                name: nil,
                key: "Description",
                value: .string(value),
                availabilities: .init(
                    iOS: "17.0",
                    iPadOS: "17.0"
                ),
                isRequired: true
            )
        }
        
        /// - Parameter value: A Boolean value that indicates whether your app’s study relies on this sensor.
        ///
        /// The system checks the value for this property when the user declines the access prompt for this sensor. If you set the value of this property to `true`, the system forgoes installing your app. If `false`, the system withholds the sensor’s data but installs your app assuming your study can continue at a limited capacity without the sensor’s data.
        ///
        /// Availability: iOS 17.0+, iPadOS 17.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusagewristtemperature/required)
        static func Required(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "Required",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "17.0",
                    iPadOS: "17.0"
                )
            )
        }
        
    }
    
}


public struct SRSensorUsageAmbientLightSensorEntry: PlistEntry {
    
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
    
    // MARK: - Sensor usage keys
    
    /// - Parameter value: An explanatory string that details the manner in which your study uses the sensor’s data.
    ///
    /// The Research Sensor & Usage Data Request workflow displays this property’s text below the banner titled “How the study will use this data”. The user approves or denies your app’s ability to read the sensor’s data based on the text you provide.
    ///
    /// Availability: iOS 14.0+, iPadOS 14.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusageambientlightsensor/description)
    static func Description(_ value: String) -> Self {
        Self(
            name: nil,
            key: "Description",
            value: .string(value),
            availabilities: .init(
                iOS: "14.0",
                iPadOS: "14.0"
            ),
            isRequired: true
        )
    }
    
    /// - Parameter value: A Boolean value that indicates whether your app’s study relies on this sensor.
    ///
    /// The system checks the value for this property when the user declines the access prompt for this sensor. If you set the value of this property to `true`, the system forgoes installing your app. If `false`, the system withholds the sensor’s data but installs your app assuming your study can continue at a limited capacity without the sensor’s data.
    ///
    /// Availability: iOS 14.0+, iPadOS 14.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail/srsensorusageambientlightsensor/required)
    static func Required(_ value: Bool) -> Self {
        Self(
            name: nil,
            key: "Required",
            value: .boolean(value),
            availabilities: .init(
                iOS: "14.0",
                iPadOS: "14.0"
            )
        )
    }
    
}
