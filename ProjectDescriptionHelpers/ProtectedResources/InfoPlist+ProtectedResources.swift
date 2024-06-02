//
//  InfoPlist+ProtectedResources.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 20.05.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    // MARK: - Bluetooth
    
    /// - Parameter value: A message that tells the user why the app needs access to Bluetooth.
    ///
    /// This key is required if your app uses the device’s Bluetooth interface.
    ///
    /// - Important: If your app has a deployment target earlier than iOS 13, add the [NSBluetoothPeripheralUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsbluetoothperipheralusagedescription) key to your app’s [Information Property List](https://developer.apple.com/documentation/bundleresources/information_property_list) file in addition to this key.
    ///
    /// Availability: iOS 13.0+, iPadOS 13.0+, macOS 11.0+, tvOS 13.0+, watchOS 6.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsbluetoothalwaysusagedescription)
    static func NSBluetoothAlwaysUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Bluetooth Always Usage Description",
            key: "NSBluetoothAlwaysUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "13.0",
                iPadOS: "13.0",
                macOS: "11.0",
                tvOS: "13.0",
                watchOS: "6.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A message that tells the user why the app is requesting the ability to connect to Bluetooth peripherals.
    ///
    /// For apps with a deployment target of iOS 13 and later, use [NSBluetoothAlwaysUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsbluetoothalwaysusagedescription) instead.
    ///
    /// For deployment targets earlier than iOS 13, add both `NSBluetoothAlwaysUsageDescription` and `NSBluetoothPeripheralUsageDescription` to your app’s [Information Property List](https://developer.apple.com/documentation/bundleresources/information_property_list/nsbluetoothalwaysusagedescription) file. Devices running earlier versions of iOS rely on `NSBluetoothPeripheralUsageDescription`, while devices running later versions rely on NSBluetoothAlwaysUsageDescription.
    ///
    /// - Important: This key is required if your app uses APIs that access Bluetooth peripherals and has a deployment target earlier than iOS 13.
    ///
    /// Availability: iOS 6.0-13.0, iPadOS 6.0-13.0
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsbluetoothperipheralusagedescription)
    static func NSBluetoothPeripheralUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Bluetooth Peripheral Usage Description",
            key: "NSBluetoothPeripheralUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "6.0"..."13.0",
                iPadOS: "6.0"..."13.0"
            )
        )
    }
    
    // MARK: - Calendar and reminders
    
    /// - Parameter value: A message that tells people why the app is requesting access to read and write their calendar data.
    ///
    /// If your app needs to create calendar events but doesn’t need to read them, use [NSCalendarsWriteOnlyAccessUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nscalendarswriteonlyaccessusagedescription). If your app runs on iOS 17 or later and presents an [EKEventEditViewController](https://developer.apple.com/documentation/eventkitui/ekeventeditviewcontroller) to allow people to create calendar events, you don’t need to request calendar access.
    ///
    /// - Important: This key is required if your app uses APIs that read and write the person’s calendar data.
    ///
    /// Availability: iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, watchOS 10.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nscalendarsfullaccessusagedescription)
    static func NSCalendarsFullAccessUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Calendars Full Access Usage Description",
            key: "NSCalendarsFullAccessUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "17.0",
                iPadOS: "17.0",
                macCatalyst: "17.0",
                macOS: "14.0",
                watchOS: "10.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A message that tells people why the app is requesting access to create calendar events.
    ///
    /// If your app needs to read calendar events in addition to creating them, use [NSCalendarsFullAccessUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nscalendarsfullaccessusagedescription). If your app runs on iOS 17 or later and presents an [EKEventEditViewController](https://developer.apple.com/documentation/eventkitui/ekeventeditviewcontroller) to allow people to create calendar events, you don’t need to request calendar access.
    ///
    /// - Important: This key is required if your app uses APIs that write to the person’s calendar data.
    ///
    /// Availability: iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, watchOS 10.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nscalendarswriteonlyaccessusagedescription)
    static func NSCalendarsWriteOnlyAccessUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Calendars Write Only Usage Description",
            key: "NSCalendarsWriteOnlyAccessUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "17.0",
                iPadOS: "17.0",
                macCatalyst: "17.0",
                macOS: "14.0",
                watchOS: "10.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A message that tells people why the app is requesting access to read and write their reminders data.
    ///
    /// - Important: This key is required if your app uses APIs that access the person’s reminder data.
    ///
    /// Availability: iOS 17.0+, iPadOS 17+, Mac Catalyst 17.0+, macOS 14.0+, watchOS 10.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsremindersfullaccessusagedescription)
    static func NSRemindersFullAccessUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Reminders Full Access Usage Description",
            key: "NSRemindersFullAccessUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "17.0",
                iPadOS: "17.0",
                macCatalyst: "17.0",
                macOS: "14.0",
                watchOS: "10.0",
                visionOS: "1.0"
            )
        )
    }
    
    // MARK: - Camera and microphone
    
    /// - Parameter value: A message that tells the user why the app is requesting access to the device’s camera.
    ///
    /// - Important: This key is required if your app uses APIs that access the device’s camera.
    ///
    /// Availability: iOS 7.0+, iPadOS 7.0+, macOS 10.14+, tvOS 17.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nscamerausagedescription)
    static func NSCameraUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Camera Usage Description",
            key: "NSCameraUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "7.0",
                iPadOS: "7.0",
                macOS: "10.14",
                tvOS: "17.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A message that tells the user why the app is requesting access to the device’s microphone.
    ///
    /// - Important: This key is required if your app uses APIs that access the device’s microphone.
    ///
    /// Availability: iOS 7.0+, iPadOS 7.0+, macOS 10.14+, tvOS 17.0+, watchOS 4.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsmicrophoneusagedescription)
    static func NSMicrophoneUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Microphone Usage Description",
            key: "NSMicrophoneUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "7.0",
                iPadOS: "7.0",
                macOS: "10.14",
                tvOS: "17.0",
                watchOS: "4.0",
                visionOS: "1.0"
            )
        )
    }
    
    // MARK: - Contacts
    
    /// - Parameter value: A message that tells the user why the app is requesting access to the user’s contacts.
    ///
    /// - Important: This key is required if your app uses APIs that access the user’s contacts.
    ///
    /// Availability: iOS 6.0+, iPadOS 6.0+, macOS 10.8+, tvOS, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nscontactsusagedescription)
    static func NSContactsUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Contacts Usage Description",
            key: "NSContactsUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "6.0",
                iPadOS: "6.0",
                macOS: "10.8",
                visionOS: "1.0"
            )
        )
    }
    
    // MARK: - Face ID
    
    /// - Parameter value: A message that tells the user why the app is requesting the ability to authenticate with Face ID.
    ///
    /// - Important: This key is required if your app uses APIs that access Face ID. Also note that App Clips can’t use Face ID. For more information about functionality that’s unavailable to App Clips, see [Choosing the right functionality for your App Clip](https://developer.apple.com/documentation/app_clips/choosing_the_right_functionality_for_your_app_clip).
    ///
    /// Availability: iOS 11.0+, iPadOS 11.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsfaceidusagedescription)
    static func NSFaceIDUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Face ID Usage Description",
            key: "NSFaceIDUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "11.0",
                iPadOS: "11.0"
            )
        )
    }
    
    // MARK: - Files and folders
    
    /// - Parameter value: A message that tells the user why the app needs access to the user’s Desktop folder.
    ///
    /// The user implicitly grants your app access to a file in the Desktop folder when selecting the file in an Open or Save panel, dragging it onto your app, or opening it in Finder. Your app can access that file right away and any time in the future. In addition, if your app creates a new file in the Desktop folder, the app can access that file without user consent.
    ///
    /// The first time your app tries to access a file in the user’s Desktop folder without implied user consent, the system prompts the user for permission to access the folder’s contents. Add the `NSDesktopFolderUsageDescription` key to your app’s [Information Property List](https://developer.apple.com/documentation/bundleresources/information_property_list) file to provide a message that explains why your app needs access. The usage description is optional, but highly recommended.
    ///
    /// App Sandbox enforces stricter limits on Desktop folder access, so that policy may supersede this one if your app enables sandboxing. See [App Sandbox](https://developer.apple.com/documentation/security/app_sandbox) for more information.
    ///
    ///  ```
    ///  $ tccutil reset SystemPolicyDesktopFolder <bundleID>
    ///  ```
    /// Availability: macOS 10.15+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsdesktopfolderusagedescription)
    static func NSDesktopFolderUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Desktop Folder Usage Description",
            key: "NSDesktopFolderUsageDescription",
            value: .string(value),
            availabilities: .init(
                macOS: "10.15"
            )
        )
    }
    
    /// - Parameter value: A message that tells the user why the app needs access to the user’s Documents folder.
    ///
    /// The user implicitly grants your app access to a file in the Documents folder when selecting the file in an Open or Save panel, dragging it onto your app, or opening it in Finder. Your app can access that file right away and any time in the future. In addition, if your app creates a new file in the Documents folder, the app can access that file without user consent.
    ///
    /// The first time your app tries to access a file in the user’s Documents folder without implied user consent, the system prompts the user for permission to access the folder’s contents. Add the `NSDocumentsFolderUsageDescription` key to your app’s [Information Property List](https://developer.apple.com/documentation/bundleresources/information_property_list) file to provide a message that explains why your app needs access. The usage description is optional, but highly recommended.
    ///
    /// App Sandbox enforces stricter limits on Documents folder access, so that policy may supersede this one if your app enables sandboxing. See [App Sandbox](https://developer.apple.com/documentation/security/app_sandbox) for more information.
    ///
    /// After the user chooses whether to grant access, the system remembers the user’s choice. To reset permissions, use the `tccutil` command line utility with your app’s bundle ID:
    ///
    /// ```
    /// $ tccutil reset SystemPolicyDocumentsFolder <bundleID>
    /// ```
    ///
    /// Availability: macOS 10.15+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsdocumentsfolderusagedescription)
    static func NSDocumentsFolderUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Documents Folder Usage Description",
            key: "NSDocumentsFolderUsageDescription",
            value: .string(value),
            availabilities: .init(
                macOS: "10.15"
            )
        )
    }
    
    /// - Parameter value: A message that tells the user why the app needs access to the user’s Downloads folder.
    ///
    /// The user implicitly grants your app access to a file in the Downloads folder when selecting the file in an Open or Save panel, dragging it onto your app, or opening it in Finder. Your app can access that file right away and any time in the future. In addition, if your app creates a new file in the Downloads folder, the app can access that file without user consent.
    ///
    /// The first time your app tries to access a file in the user’s Downloads folder without implied user consent, the system prompts the user for permission to access the folder’s contents. Add the `NSDownloadsFolderUsageDescription` key to your app’s [Information Property List](https://developer.apple.com/documentation/bundleresources/information_property_list) file to provide a message that explains why your app needs access. The usage description is optional, but highly recommended.
    ///
    /// App Sandbox enforces stricter limits on Downloads folder access, so that policy may supersede this one if your app enables sandboxing. See [App Sandbox](https://developer.apple.com/documentation/security/app_sandbox) for more information.
    ///
    /// After the user chooses whether to grant access, the system remembers the user’s choice. To reset permissions, use the `tccutil` command line utility with your app’s bundle ID:
    ///
    /// ```
    /// $ tccutil reset SystemPolicyDownloadsFolder <bundleID>
    /// ```
    ///
    /// Availability: macOS 10.15+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsdownloadsfolderusagedescription)
    static func NSDownloadsFolderUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Downloads Folder Usage Description",
            key: "NSDownloadsFolderUsageDescription",
            value: .string(value),
            availabilities: .init(
                macOS: "10.15"
            )
        )
    }
    
    /// - Parameter value: A message that tells the user why the app needs access to files on a network volume.
    ///
    /// The user implicitly grants your app access to a file on a network volume when selecting the file in an Open or Save panel, dragging it onto your app, or opening it in Finder. Your app can access that file right away and any time in the future. In addition, if your app creates a new file on a network volume, the app can access that file without user consent.
    ///
    /// The first time your app tries to access a file on a network volume without implied user consent, the system prompts the user for permission to access network volumes. Add the `NSNetworkVolumesUsageDescription` key to your app’s [Information Property List](https://developer.apple.com/documentation/bundleresources/information_property_list) file to provide a string for the prompt that explains why your app needs access. The usage description is optional, but highly recommended.
    ///
    /// After the user chooses whether to grant access, the system remembers the user’s choice. To reset permissions, use the `tccutil` command line utility with your app’s bundle ID:
    ///
    /// ```
    /// $ tccutil reset SystemPolicyNetworkVolumes <bundleID>
    /// ```
    ///
    /// Availability: macOS 10.15+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsnetworkvolumesusagedescription)
    static func NSNetworkVolumesUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Network Volumes Usage Description",
            key: "NSNetworkVolumesUsageDescription",
            value: .string(value),
            availabilities: .init(
                macOS: "10.15"
            )
        )
    }
    
    /// - Parameter value: A message that tells the user why the app needs access to files on a removable volume.
    ///
    /// The user implicitly grants your app access to a file on a removable volume—like a USB thumb drive—when selecting the file in an Open or Save panel, dragging it onto your app, or opening it in Finder. Your app can access that file right away and any time in the future. In addition, if your app creates a new file on a removable volume, the app can access that file without user consent.
    ///
    /// The first time your app tries to access a file on a removable volume without implied user consent, the system prompts the user for permission to access removable volumes. Add the `NSRemovableVolumesUsageDescription` key to your app’s [Information Property List](https://developer.apple.com/documentation/bundleresources/information_property_list) file to provide a string for the prompt that explains why your app needs access. The usage description is optional, but highly recommended.
    ///
    /// After the user chooses whether to grant access, the system remembers the user’s choice. To reset permissions, use the `tccutil` command line utility with your app’s bundle ID:
    ///
    /// ```
    /// $ tccutil reset SystemPolicyRemovableVolumes <bundleID>
    /// ```
    ///
    /// Availability: macOS 10.15+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsremovablevolumesusagedescription)
    static func NSRemovableVolumesUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Removable Volumes Usage Description",
            key: "NSRemovableVolumesUsageDescription",
            value: .string(value),
            availabilities: .init(
                macOS: "10.15"
            )
        )
    }
    
    /// - Parameter value: A message that tells the user why the app needs access to files managed by a file provider.
    ///
    /// The user implicitly grants your app access to a file managed by a file provider when selecting the file in an Open or Save panel, dragging it onto your app, or opening it in Finder. Your app can access that file right away and any time in the future. In addition, if your app creates a new file managed by a file provider, the app can access that file without user consent.
    ///
    /// The first time your app tries to access a file managed by a file provider without implied user consent, the system prompts the user for permission. Add the `NSFileProviderDomainUsageDescription` key to your app’s [Information Property List](https://developer.apple.com/documentation/bundleresources/information_property_list) file to provide a string for the prompt that explains why your app needs access. The usage description is optional, but highly recommended.
    ///
    /// After the user chooses whether to grant access, the system remembers the user’s choice. To reset permissions, use the `tccutil` command line utility with your app’s bundle ID:
    ///
    /// ```
    /// $ tccutil reset FileProviderDomain <bundleID>
    /// ```
    ///
    /// Availability: macOS 10.15+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsfileproviderdomainusagedescription)
    static func NSFileProviderDomainUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Access to a File Provider Domain Usage Description",
            key: "NSFileProviderDomainUsageDescription",
            value: .string(value),
            availabilities: .init(
                macOS: "10.15"
            )
        )
    }
    
    // MARK: - Game center
    
    /// - Parameter value: A message that tells the user why the app needs access to their Game Center friends list.
    ///
    /// Availability: iOS 14.5+, iPadOS 14.5+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsgkfriendlistusagedescription)
    static func NSGKFriendListUsageDescription(_ value: String) -> Self {
        Self(
            name: nil,
            key: "NSGKFriendListUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "14.5",
                iPadOS: "14.5"
            )
        )
    }
    
    // MARK: - Health
    
    /// - Parameter value: A message to the user that explains why the app requested permission to read clinical records.
    ///
    /// - Important: This key is required if your app uses APIs that access the user's clinical records.
    ///
    /// Availability: iOS 12.0+, iPadOS 12.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nshealthclinicalhealthrecordsshareusagedescription)
    static func NSHealthClinicalHealthRecordsShareUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Health Records Usage Description",
            key: "NSHealthClinicalHealthRecordsShareUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "12.0",
                iPadOS: "12.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A message to the user that explains why the app requested permission to read samples from the HealthKit store.
    ///
    /// - Important: This key is required if your app uses APIs that access the user’s heath data.
    ///
    /// Availability: iOS 8.0+, iPadOS 8.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nshealthshareusagedescription)
    static func NSHealthShareUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Health Share Usage Description",
            key: "NSHealthShareUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "8.0",
                iPadOS: "8.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A message to the user that explains why the app requested permission to save samples to the HealthKit store.
    ///
    /// - Important: This key is required if your app uses APIs that update the user’s health data.
    ///
    /// Availability: iOS 8.0+, iPadOS 8.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nshealthupdateusagedescription)
    static func NSHealthUpdateUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Health Update Usage Description",
            key: "NSHealthUpdateUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "8.0",
                iPadOS: "8.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter values: The clinical record data types that your app must get permission to read.
    ///
    /// Use this key to indicate that your app requires access to specific clinical record data types to function properly. Set the value to an array of strings containing the type identifiers for your required types. For a list of type identifiers, see [HKClinicalTypeIdentifier](https://developer.apple.com/documentation/healthkit/hkclinicaltypeidentifier).
    ///
    /// To protect the user’s privacy, you must specify three or more required clinical record types. If the user denies authorization to any of the types, authorization fails with an [HKError.Code.errorRequiredAuthorizationDenied](https://developer.apple.com/documentation/healthkit/hkerror/code/errorrequiredauthorizationdenied) error. Your app is not told the record types to which the user denied access.
    ///
    /// Availability: iOS 12.0+, iPadOS 12.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nshealthrequiredreadauthorizationtypeidentifiers)
    static func NSHealthRequiredReadAuthorizationTypeIdentifiers(_ values: [String]) -> Self {
        Self(
            name: nil,
            key: "NSHealthRequiredReadAuthorizationTypeIdentifiers",
            value: .array(values.map { .string($0) }),
            availabilities: .init(
                iOS: "12.0",
                iPadOS: "12.0",
                visionOS: "1.0"
            )
        )
    }
    
    // MARK: - Home
    
    /// - Parameter value: A message that tells the user why the app is requesting access to the user’s HomeKit configuration data.
    ///
    /// - Important: This key is required if your app uses APIs that access the user’s HomeKit configuration data.
    ///
    /// For more information about using HomeKit in your app, see [Enabling HomeKit in your app](https://developer.apple.com/documentation/homekit/enabling_homekit_in_your_app).
    ///
    /// Availability: iOS 8.0+, iPadOS 8.0+, watchOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nshomekitusagedescription)
    static func NSHomeKitUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - HomeKit Usage Description",
            key: "NSHomeKitUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "8.0",
                iPadOS: "8.0",
                watchOS: "2.0",
                visionOS: "1.0"
            )
        )
    }
    
    // MARK: - Location
    
    /// - Parameter value: A message that tells the user why the app is requesting access to the user’s location information at all times.
    ///
    /// Use this key if your iOS app accesses location information while running in the background. If your app only needs location information when in the foreground, use [NSLocationWhenInUseUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocationwheninuseusagedescription) instead. For more information, see [Choosing the Location Services Authorization to Request](https://developer.apple.com/documentation/bundleresources/information_property_list/protected_resources/choosing_the_location_services_authorization_to_request).
    ///
    /// If you need location information in a macOS app, use [NSLocationUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocationusagedescription) instead. If your iOS app deploys to versions earlier than iOS 11, see [NSLocationAlwaysUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocationalwaysusagedescription).
    ///
    /// - Important: This key is required if your iOS app uses APIs that access the user’s location information at all times.
    ///
    /// Availability: iOS 11.0+, iPadOS 11.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocationalwaysandwheninuseusagedescription)
    static func NSLocationAlwaysAndWhenInUseUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Location Always and When In Use Usage Description",
            key: "NSLocationAlwaysAndWhenInUseUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "11.0",
                iPadOS: "11.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A message that tells the user why the app is requesting access to the user’s location information.
    ///
    /// Use this key in a macOS app that accesses the user’s location information. In an iOS app, use [NSLocationWhenInUseUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocationwheninuseusagedescription) or [NSLocationAlwaysAndWhenInUseUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocationalwaysandwheninuseusagedescription) instead.
    ///
    /// - Important: This key is required if your macOS app uses APIs that access the user’s location information.
    ///
    /// Availability: iOS 6.0-8.0, iPadOS 6.0-8.0, macOS 10.14+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocationusagedescription)
    static func NSLocationUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Location Usage Description",
            key: "NSLocationUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOSMin: "6.0", iOSMax: "8.0",
                iPadOSMin: "6.0", iPadOSMax: "8.0",
                macOSMin: "10.14"
            )
        )
    }
    
    /// - Parameter value: A message that tells the user why the app is requesting access to the user’s location information while the app is running in the foreground.
    ///
    /// Use this key if your iOS app accesses location information only when running in the foreground. If your app needs location information when in the background, use [NSLocationAlwaysAndWhenInUseUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocationalwaysandwheninuseusagedescription) instead. For more information, see [Choosing the Location Services Authorization to Request](https://developer.apple.com/documentation/bundleresources/information_property_list/protected_resources/choosing_the_location_services_authorization_to_request).
    ///
    /// Availability: iOS 11.0+, iPadOS 11.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocationwheninuseusagedescription)
    static func NSLocationWhenInUseUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Location When In Use Usage Description",
            key: "NSLocationWhenInUseUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "11.0",
                iPadOS: "11.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter values: A collection of messages that explain why the app is requesting temporary access to the user’s location.
    ///
    /// Use this key if your app needs temporary access to full accuracy location information. Provide a dictionary of messages that address different use cases, keyed by strings that you define. For example, if your app suggests nearby coffee shops in one part of the app, and finds nearby friends in another, you could include two entries:
    ///
    /// [](https://docs-assets.developer.apple.com/published/cd215bf018/rendered2x-1611279466.png)
    ///
    /// When you request access, select among the messages at run time by providing the associated key to the [requestTemporaryFullAccuracyAuthorization(withPurposeKey:)](https://developer.apple.com/documentation/corelocation/cllocationmanager/3600216-requesttemporaryfullaccuracyauth) method:
    ///
    /// ```
    /// \/\/ Request location access to find coffee shops.
    /// manager.requestTemporaryFullAccuracyAuthorization(withPurposeKey: "coffee")
    /// ```
    ///
    /// Availability: iOS 14.0+, iPadOS 14.0+, macOS 11.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocationtemporaryusagedescriptiondictionary)
    static func NSLocationTemporaryUsageDescriptionDictionary(_ values: [String: String]) -> Self {
        var valueDict: [String: Plist.Value] = [:]
        for (key, value) in values {
            valueDict[key] = .string(value)
        }
        return Self(
            name: "Privacy - Location Temporary Usage Description Dictionary",
            key: "NSLocationTemporaryUsageDescriptionDictionary",
            value: .dictionary(valueDict),
            availabilities: .init(
                iOS: "14.0",
                iPadOS: "14.0",
                macOS: "11.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A message that tells the user why the app is requesting access to the user's location at all times.
    ///
    /// - Deprecated: For apps deployed to targets in iOS 11 and later, use NSLocationAlwaysAndWhenInUseUsageDescription instead.
    ///
    /// Use this key if your iOS app accesses location information in the background, and you deploy to a target earlier than iOS 11. In that case, add both this key and [NSLocationAlwaysAndWhenInUseUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocationalwaysandwheninuseusagedescription) to your app’s `Info.plist` file with the same message. Apps running on older versions of the OS use the message associated with `NSLocationAlwaysUsageDescription`, while apps running on later versions use the one associated with `NSLocationAlwaysAndWhenInUseUsageDescription`.
    ///
    /// If your app only needs location information when in the foreground, use [NSLocationWhenInUseUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocationwheninuseusagedescription) instead. For more information, see [Choosing the Location Services Authorization to Request](https://developer.apple.com/documentation/bundleresources/information_property_list/protected_resources/choosing_the_location_services_authorization_to_request).
    ///
    /// If you need location information in a macOS app, use [NSLocationUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocationusagedescription) instead.
    ///
    /// - Important: This key is required if your iOS app uses APIs that access the user’s location at all times and deploys to targets earlier than iOS 11.
    ///
    /// Availability: iOS 8.0-10.0, iPadOS 8.0-10.0
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocationalwaysusagedescription)
    static func NSLocationAlwaysUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Location Always Usage Description",
            key: "NSLocationAlwaysUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "8.0"..."10.0",
                iPadOS: "8.0"..."10.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value that indicates a widget uses the user’s location information.
    ///
    /// To access the user’s location information from a widget, set the value to `true` in the widget extension’s `Info.plist` file.
    ///
    /// Before a widget can access location information, the containing app must request authorization from the user. The containing app’s `Info.plist` file must also contain relevant purpose strings. For more information, see [Requesting authorization to use location services](https://developer.apple.com/documentation/corelocation/requesting_authorization_to_use_location_services).
    ///
    /// Availability: iOS 14.0+, iPadOS 14.0+, macOS 11.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nswidgetwantslocation)
    static func NSWidgetWantsLocation(_ value: Bool) -> Self {
        Self(
            name: "Widget wants location",
            key: "NSWidgetWantsLocation",
            value: .boolean(value),
            availabilities: .init(
                iOS: "14.0",
                iPadOS: "14.0",
                macOS: "11.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value that indicates whether the app requests reduced location accuracy by default.
    ///
    /// Include this key in your information property list to set your app’s default behavior for location accuracy when it calls the Core Location framework. Set the key value to `true` to prompt the user for reduced accuracy by default; set it to `false` to prompt for full location accuracy. If you don't include that key in your `Info.plist`, that's equivalent to setting it to `false`.
    ///
    /// Include the key pair in your `Info.plist` file as shown:
    ///
    /// ```
    /// <!-- Info.plist -->
    /// <key>NSLocationDefaultAccuracyReduced</key>
    /// <true/>
    /// ```
    ///
    /// When this key is set to `true`, all Core Location services (location updates, visit monitoring, significant location change, fence monitoring) receive service at the reduced-accuracy service level. Users will see that your app is asking for reduced accuracy because the location authorization prompt will show a map with an approximate location, and your app will have the Precise Location toggled off in Settings > Privacy > Location Services . These indicators of an app's improved privacy are ones that users may value.
    ///
    /// If you want to leverage the reduced-accuracy feature to improve privacy in a particular operation without setting this key, use the [desiredAccuracy](https://developer.apple.com/documentation/corelocation/cllocationmanager/1423836-desiredaccuracy) constant [kCLLocationAccuracyReduced](https://developer.apple.com/documentation/corelocation/kcllocationaccuracyreduced). This constant causes [startUpdatingLocation()](https://developer.apple.com/documentation/corelocation/cllocationmanager/1423750-startupdatinglocation) to deliver results as if the app were authorized for approximate location until you change the `desiredAccuracy` constant again.
    ///
    /// Setting `NSLocationDefaultAccuracyReduced` determines the default type of authorization your app gets, but users can override it any time in Settings. Users always control the level of location accuracy they want to share, and can change precision settings in Settings > Privacy > Location Services by selecting Precise Location for your app.
    ///
    /// Availability: iOS 14.0+, iPadOS 14.0+, watchOS 7.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocationdefaultaccuracyreduced)
    static func NSLocationDefaultAccuracyReduced(_ value: Bool) -> Self {
        Self(
            name: "Privacy - Location Default Accuracy Reduced",
            key: "NSLocationDefaultAccuracyReduced",
            value: .boolean(value),
            availabilities: .init(
                iOS: "14.0",
                iPadOS: "14.0",
                watchOS: "7.0",
                visionOS: "1.0"
            )
        )
    }
    
    // MARK: - MediaPlayer
    
    /// - Parameter value: A message that tells the user why the app is requesting access to the user’s media library.
    ///
    /// Set the value of this key to a user-readable description of how you intend to use the user’s media library. The first time your app access the user’s media library, the system prompts the user to grant or deny authorization for your app to do so. The system includes this key’s description in the dialog it displays to the user.
    ///
    /// - Important: The system requires this key if your app uses APIs that access the user’s media library.
    ///
    /// Availability: iOS 2.0+, iPadOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapplemusicusagedescription)
    static func NSAppleMusicUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Media Library Usage Description",
            key: "NSAppleMusicUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "2.0",
                iPadOS: "2.0",
                visionOS: "1.0"
            )
        )
    }
    
    // MARK: - Motion
    
    /// - Parameter value: A message that tells the user why the app is requesting access to the device’s motion data.
    ///
    /// - Important: This key is required if your app uses APIs that access the device’s motion data, including [CMSensorRecorder](https://developer.apple.com/documentation/coremotion/cmsensorrecorder), [CMPedometer](https://developer.apple.com/documentation/coremotion/cmpedometer), [CMMotionActivityManager](https://developer.apple.com/documentation/coremotion/cmmotionactivitymanager), and [CMMovementDisorderManager](https://developer.apple.com/documentation/coremotion/cmmovementdisordermanager). If you don’t include this key, your app will crash when it attempts to access motion data.
    ///
    /// Availability: iOS 7.0+, iPadOS 7.0+, macOS 10.15+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsmotionusagedescription)
    static func NSMotionUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Motion Usage Description",
            key: "NSMotionUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "7.0",
                iPadOS: "7.0",
                macOS: "10.15",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A message to the user that explains the app’s request for permission to access fall detection event data.
    ///
    /// - Important: If your app uses the CMFallDetectionManager, the app requires this key.
    ///
    /// Availability: iOS 14.2+, iPadOS 14.2+, watchOS 7.2+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsfalldetectionusagedescription)
    static func NSFallDetectionUsageDescription(_ value: String) -> Self {
        Self(
            name: "Fall Detection Usage Description",
            key: "NSFallDetectionUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "14.2",
                iPadOS: "14.2",
                watchOS: "7.2",
                visionOS: "1.0"
            )
        )
    }
    
    // MARK: - Networking
    
    /// - Parameter value: A message that tells the user why the app is requesting access to the local network.
    ///
    /// Any app that uses the local network, directly or indirectly, should include this description. This includes apps that use Bonjour and services implemented with Bonjour, as well as direct unicast or multicast connections to local hosts.
    ///
    /// Availability: iOS 14.0+, iPadOS 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocalnetworkusagedescription)
    static func NSLocalNetworkUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Local Network Usage Description",
            key: "NSLocalNetworkUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "14.0",
                iPadOS: "14.0",
                macOS: "11.0",
                tvOS: "14.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A request for user permission to begin an interaction session with nearby devices.
    ///
    /// This property defines localizable text that explains your interaction session’s purpose to the user.
    ///
    /// Before an app starts an interaction session, the system checks whether the user agrees to share their relative distance and direction with a nearby peer. The first time the app runs, the framework presents a prompt that displays the value of this key contained in your project’s `Info.plist`. The system persists the user’s choice in Settings. After your app runs for the first time, it consults the user preference in Settings before it begins a new interaction session.
    ///
    /// For more information, see [Initiating and maintaining a session](https://developer.apple.com/documentation/nearbyinteraction/initiating_and_maintaining_a_session).
    ///
    /// Availability: iOS 15.0+, iPadOS 15.0+, watchOS 8.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsnearbyinteractionusagedescription)
    static func NSNearbyInteractionUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Nearby Interaction Usage Description",
            key: "NSNearbyInteractionUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "15.0",
                iPadOS: "15.0",
                watchOS: "8.0"
            )
        )
    }
    
    /// - Parameter value: A one-time request for user permission to begin an interaction session with nearby devices.
    ///
    /// - Warning: Define this property in the `Info.plist` only for apps that deploy to iOS 14. [NSNearbyInteractionUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsnearbyinteractionusagedescription) replaces this property in iOS 15 and later.
    ///
    /// Before an app starts an interaction session, the system requests permission to share the user’s relative distance and direction with a nearby peer. The framework presents a prompt that displays the value of this key contained in your project’s `Info.plist`. Define text that explains your interaction session's purpose to the user. For more information, see [Initiating and maintaining a session](https://developer.apple.com/documentation/nearbyinteraction/initiating_and_maintaining_a_session).
    ///
    /// Availability: iOS 14.0-15.0, iPadOS 14.0-15.0
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsnearbyinteractionallowonceusagedescription)
    static func NSNearbyInteractionAllowOnceUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Nearby Interaction Allow Once Usage Description",
            key: "NSNearbyInteractionAllowOnceUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "14.0"..."15.0",
                iPadOS: "14.0"..."15.0"
            )
        )
    }
    
    // MARK: - NFC
    
    /// - Parameter value: A message that tells the user why the app is requesting access to the device’s NFC hardware.
    ///
    /// - Important: You’re required to provide this key if your app uses APIs that access the NFC hardware.
    ///
    /// Availability: iOS 11.0+, iPadOS 11.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nfcreaderusagedescription)
    static func NFCReaderUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - NFC Scan Usage Description",
            key: "NFCReaderUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "11.0",
                iPadOS: "11.0"
            )
        )
    }
    
    // MARK: - Photos
    
    /// - Parameter value: A message that tells the user why the app is requesting add-only access to the user’s photo library.
    ///
    /// - Important: This key is required if your app uses APIs that have write access to the user’s photo library
    ///
    /// Availability: iOS 11.0+, iPadOS 11.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsphotolibraryaddusagedescription)
    static func NSPhotoLibraryAddUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Photo Library Additions Usage Description",
            key: "NSPhotoLibraryAddUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "11.0",
                iPadOS: "11.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A message that tells the user why the app is requesting access to the user’s photo library.
    ///
    /// If your app only adds assets to the photo library and does not read assets, use the NSPhotoLibraryAddUsageDescription key instead.
    ///
    /// - Important: This key is required if your app uses APIs that have read or write access to the user’s photo library.
    ///
    /// Availability: iOS 6.0+, iPadOS 6.0+, macOS 10.14+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsphotolibraryusagedescription)
    static func NSPhotoLibraryUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Photo Library Usage Description",
            key: "NSPhotoLibraryUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "6.0",
                iPadOS: "6.0",
                macOS: "10.14",
                visionOS: "1.0"
            )
        )
    }
    
    // MARK: - Scripting
    
    /// - Parameter value: A Boolean value indicating whether AppleScript is enabled.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapplescriptenabled)
    static func NSAppleScriptEnabled(_ value: Bool) -> Self {
        Self(
            name: "Scriptable",
            key: "NSAppleScriptEnabled",
            value: .boolean(value),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    // MARK: - Security
    
    /// - Parameter values: A dictionary that identifies which apps or installer packages the operating system allows to write to the app’s bundle.
    ///
    /// The `NSUpdateSecurityPolicy` property list key describes a security policy dictionary that defines the processes and packages that the system allows to modify an app’s bundle. You specify these by Team ID (any package signed by that team), or Team IDs and signing identifiers (to identify a specific executable) signed by a team.
    ///
    /// For signed apps, macOS allows apps from the same developer — those sharing the same Team ID — to modify the app’s bundle. Use this security policy to change the default behavior and customize which specific apps or installers can write to your app’s bundle.
    ///
    /// If this protection mechanism isn’t relevant to your app, you can opt out of this capability and disable the hardened runtime by adding the `com.apple.security.cs.disable-executable-page-protection` entitlement to your app’s `info.plist` file. For information about this entitlement — and important information about the security ramifications of disabling this protection — see [Disable Executable Memory Protection Entitlement](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_cs_disable-executable-page-protection).
    ///
    /// The `NSUpdateSecurityPolicy` key is a dictionary you add to your app’s `info.plist` file in the source editor pane of your app’s Xcode target. Add the key following the instructions below, and add one or both of the dictionary’s subkeys, depending on the types of apps or installers you want to allow to perform updates to your app’s resources. The subkeys are:
    ///
    /// - `AllowPackages`: An array of Team IDs. The operating system allows any installer package signed by any Team ID in this list to write content into this app’s bundle.
    ///
    /// - `AllowProcesses`: A dictionary that maps Team IDs to an array of signing (bundle) IDs. The operating system allows an app (process) with the matching bundle ID that’s signed by the specified Team ID to write content into this app’s bundle.
    ///
    /// # Add the policy dictionary to your app’s information property list
    ///
    /// To add the `NSUpdateSecurityPolicy` key to your app’s `info.plist` file, follow these steps:
    ///
    /// 1. In Xcode, select your app’s target from the Target navigator, and then select the source editor pane in the detail section.
    ///
    /// 2. Control-click the last item in the list, and choose Add Row from the drop-down menu.
    ///
    /// 3. Edit the text for the new row, replacing the existing text with *NSUpdateSecurityPolicy*, and press Return.
    ///
    /// 4. Control-click the Type field for the new row and choose Dictionary from the drop-down menu.
    ///
    /// 5. Click the disclosure triangle next to the new `NSUpdateSecurityPolicy` dictionary to open it (the arrow needs to point down). This ensures that in the next steps, the editor adds elements inside the dictionary, and not as separate items parallel to it in the property list.
    ///
    /// The newly created, empty `NSUpdateSecurityPolicy` dictionary in your app’s property list resembles the image below:
    ///
    /// [](https://docs-assets.developer.apple.com/published/a756794f14/renderedDark2x-1664913813.png)
    ///
    /// Next, add one or both subcomponents to the security policy dictionary depending on your app’s update policy requirements. To allow any installer package signed by a specific Team ID, add an AllowPackages array to the NSUpdateSecurityPolicy dictionary. Using this key, the operating system allows any installer package signed by the specified Team IDs in this array to write content into the app’s bundle.
    ///
    /// 1. Control-click the NSUpdateSecurityPolicy row in the property list and choose Add Row.
    ///
    /// 2. Edit the row name, replacing the default text with *AllowPackages* and press Return.
    ///
    /// 3. Control-click the new AllowPackages row’s Type drop-down menu and choose Array.
    ///
    /// 4. Control-click the new AllowPackages row and choose Add Row. This adds a new element to the `AllowPackages` array.
    ///
    /// 5. Set the value of the new array element to the Team ID of the team whose installers you’re authorizing to update this app.
    ///
    /// 6. Repeat steps 4 and 5 for each additional team whose installers you want to authorize.
    ///
    /// To allow specific apps from specific teams to write to this app’s bundle, add an `AllowProcesses` dictionary to the `NSUpdateSecurityPolicy` dictionary. Using this key, and it’s subdictionaries, the operating system allows specific apps defined by both a Team ID and signing ID (also called a bundle ID) to write content into this app’s bundle.
    ///
    /// 1. Control-click the NSUpdateSecurityPolicy row in the property list and choose Add Row.
    ///
    /// 2. Edit the row name, replacing the default text with *AllowProcesses* and press Return.
    ///
    /// 3. Control-click the new *AllowProcesses* row’s Type drop-down menu and choose Dictionary.
    ///
    /// 4. Control-click the new AllowProcesses row and choose Add Row. This adds a new element to the AllowProcesses dictionary.
    ///
    /// 5. Control-click the new row’s Type drop-down menu, and choose Dictionary. Set the new row’s name to be the Team ID of the app or apps you want to allow to update this app’s bundle.
    ///
    /// 6. Control-click the new Team ID row, and add a row to the newly created team dictionary.
    ///
    /// 7. Control-click the new row’s Type drop-down menu and choose Array.
    ///
    /// 8. Control-click the array row, and add a new row to the array.
    ///
    /// 9. Set the value of the new array element to the signing ID (bundle ID) of the app you’re authorizing to write to the app’s bundle.
    ///
    /// 10. To add additional authorized apps for this Team ID, repeat steps 8 and 9.
    ///
    /// 11. To add additional teams and apps, repeat steps 5 through 9.
    ///
    /// The final new NSUpdateSecurityPolicy dictionary resembles the configuration in the image below:
    ///
    /// [](https://docs-assets.developer.apple.com/published/3ca38bdd8a/renderedDark2x-1664913816.png)
    ///
    /// The following sample code describes a complete update policy, in JSON format, that allows any installer package signed by Team ID `Z9P22VQP42` to write to the app bundle. The policy also allows a single app associated with the bundle ID com.example.myapp.updater (also signed with the Team ID `Z9P22VQP42`) that can modify the app bundle.
    ///
    /// ```
    /// {
    ///     "NSUpdateSecurityPolicy": {
    ///         "AllowPackages": [
    ///             0: "Z9P22VQP42"
    ///         ]
    ///         "AllowProcesses": {
    ///             "Z9P22VQP42": [
    ///                 0: "com.example.myapp.updater"
    ///             ]
    ///         }
    ///     }
    /// }
    /// ```
    ///
    /// Availability: Mac Catalyst 16.0+, macOS 13.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsupdatesecuritypolicy)
    static func NSUpdateSecurityPolicy(_ values: [NSUpdateSecurityPolicyEntry]) -> Self {
        Self.dict(
            name: nil,
            key: "NSUpdateSecurityPolicy",
            childEntries: values,
            availabilities: .init(
                macCatalyst: "16.0",
                macOS: "13.0"
            )
        )
    }
    
    /// - Parameter value: A message that tells the user why the app needs to access files in other apps’ sandbox containers.
    ///
    /// When your app tries to open a file that’s in another app’s sandbox container, the system requests permission from the person using the app and presents this message. If your app doesn’t have a value for the `NSAppDataUsageDescription` key in its information property list, the system presents a default message.
    ///
    /// The system uses this message any time your app tries to access files in another app’s container, and your app can’t provide different messages for attempts to access containers from different apps.
    ///
    /// Availability: macOS 14.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsappdatausagedescription)
    static func NSAppDataUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Other Application Data Usage Description",
            key: "NSAppDataUsageDescription",
            value: .string(value),
            availabilities: .init(
                macOS: "14.0"
            )
        )
    }
    
    /// - Parameter value: A message that informs the user why an app is requesting permission to use data for tracking the user or the device.
    ///
    /// If your app calls the App Tracking Transparency API, you must provide custom text, known as a *usage-description* string, which displays as a system-permission alert request. The usage-description string tells the user why the app is requesting permission to use data for tracking the user or the device. The user has the option to grant or deny the authorization request. If you don’t include a usage-description string, your app may crash when a user first launches it.
    ///
    /// Make sure your app requests permission to track sometime before tracking occurs. This could be at first launch or when using certain features in your app. For example, when signing on with a third-party SSO. For more information on asking permission to track, see [User privacy and data use](https://developer.apple.com/app-store/user-privacy-and-data-use/).
    ///
    /// Set the NSUserTrackingUsageDescription key in the [`Information Property List`](https://developer.apple.com/documentation/bundleresources/information_property_list) `(Info.plist)`:
    ///
    /// 1. Select your project’s `Info.plist` file in Xcode Project navigator.
    ///
    /// 2. Modify the file using the Xcode Property List Editor: Privacy - Tracking Usage Description.
    ///
    /// - Use sentence-style capitalization and appropriate ending punctuation. Keep the text short and specific. You don’t need to include your app name because the system already identifies your app.
    ///
    /// - If the title is a sentence fragment, don’t add ending punctuation.
    ///
    /// See [Apple’s Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/ios/app-architecture/accessing-user-data/) for example usage descriptions.
    ///
    /// Availability: iOS 14.0+, iPadOS 14.0+, tvOS 14.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsusertrackingusagedescription)
    static func NSUserTrackingUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Tracking Usage Description",
            key: "NSUserTrackingUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "14.0",
                iPadOS: "14.0",
                tvOS: "14.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A message that tells the user why the app is requesting the ability to send Apple events.
    ///
    /// An app using Apple events to control another app might be able to gain access to sensitive user data. For example, the Mail app stores a lot of personal information in its local database that other apps can’t access directly. But because Mail can be automated with Apple events, other apps can use Mail to gain access to the data indirectly.
    ///
    /// - Important: This key is required if your app uses APIs that send Apple events.
    ///
    /// Availability: macOS 10.14+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsappleeventsusagedescription)
    static func NSAppleEventsUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - AppleEvents Sending Usage Description",
            key: "NSAppleEventsUsageDescription",
            value: .string(value),
            availabilities: .init(
                macOS: "10.14"
            )
        )
    }
    
    /// - Parameter value: A message in macOS that tells the user why the app is requesting to manipulate the system configuration.
    ///
    /// Use this key if your app uses certain APIs that manipulate system configuration, like [ODRecordSetValue(_:_:_:_:)](https://developer.apple.com/documentation/opendirectory/1427997-odrecordsetvalue).
    ///
    /// - Important: This key is required if your app uses APIs that manipulate the system configuration.
    ///
    /// Availability: macOS 10.14+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssystemadministrationusagedescription)
    static func NSSystemAdministrationUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - System Administration Usage Description",
            key: "NSSystemAdministrationUsageDescription",
            value: .string(value),
            availabilities: .init(
                macOS: "10.14"
            )
        )
    }
    
    /// - Parameter value: A Boolean value indicating whether the app uses encryption.
    ///
    /// Set the value for this key to NO in your app’s [`Information Property List`](https://developer.apple.com/documentation/bundleresources/information_property_list) file to indicate that your app—including any third-party libraries you link against—either uses no encryption, or only uses encryption that’s exempt from export compliance requirements, as described in [Determine your export compliance requirements](https://help.apple.com/app-store-connect/#/dev63c95e436). Set the value to `YES` to indicate that your app uses non-exempt encryption.
    ///
    /// If you set the value to `YES`, you typically also provide a value for the [`ITSEncryptionExportComplianceCode`](https://developer.apple.com/documentation/bundleresources/information_property_list/itsencryptionexportcompliancecode) key. You set that key’s value using a code Apple provides after successfully reviewing your export compliance documentation.
    ///
    /// If you don’t have the `ITSAppUsesNonExemptEncryption` key in your app’s `Info.plist` file, App Store Connect walks you through an export compliance questionnaire every time you upload a new version of your app. Including the key streamlines the app submission process.
    ///
    /// For additional information, see [Complying with Encryption Export Regulations](https://developer.apple.com/documentation/security/complying_with_encryption_export_regulations).
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/itsappusesnonexemptencryption)
    static func ITSAppUsesNonExemptEncryption(_ value: Bool) -> Self {
        Self(
            name: "App Uses Non-Exempt Encryption",
            key: "ITSAppUsesNonExemptEncryption",
            value: .boolean(value),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    /// - Parameter value: The export compliance code provided by App Store Connect for apps that require it.
    ///
    /// Include this key in your app’s [`Information Property List`](https://developer.apple.com/documentation/bundleresources/information_property_list) file if you set the [`ITSAppUsesNonExemptEncryption`](https://developer.apple.com/documentation/bundleresources/information_property_list/itsappusesnonexemptencryption) key’s value to `YES`. Set the value for this key to the code that Apple sends you after successfully reviewing export compliance documentation that you provide through App Store Connect.
    ///
    /// For additional information, see [Complying with Encryption Export Regulations](https://developer.apple.com/documentation/security/complying_with_encryption_export_regulations).
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/itsencryptionexportcompliancecode)
    static func ITSEncryptionExportComplianceCode(_ value: String) -> Self {
        Self(
            name: "App Encryption Export Compliance Code",
            key: "ITSEncryptionExportComplianceCode",
            value: .string(value),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    // MARK: - Sensors
    
    /// - Parameter value: A short description of the purpose of your app’s research study.
    ///
    /// When your app attempts to read sensor information for the first time on a user’s device, the system presents this string to explain your app’s study. Users approve or deny your app’s ability to read private sensor information based on the description you provide for this property.
    ///
    /// For more information, see [Configuring your project for sensor reading](https://developer.apple.com/documentation/sensorkit/configuring_your_project_for_sensor_reading).
    ///
    /// Availability: iOS 14.0+, iPadOS 14.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedescription)
    static func NSSensorKitUsageDescription(_ value: String) -> Self {
        Self(
            name: nil,
            key: "NSSensorKitUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "14.0",
                iPadOS: "14.0"
            )
        )
    }
    
    /// - Parameter values: A dictionary that includes keys for the specific information your app collects.
    ///
    /// When your app attempts to read sensor information for the first time on a user’s device, the system presents a sheet that describes the information your app collects. You specify which information by defining an Info.plist key in this dictionary for each sensor your app uses, such as SRSensorUsageAmbientLightSensor. Users approve or deny your app’s ability to read private sensor information based on the description you provide for these properties.
    ///
    /// For more information, see [Configuring your project for sensor reading](https://developer.apple.com/documentation/sensorkit/configuring_your_project_for_sensor_reading).
    ///
    /// Availability: iOS 14.0+, iPadOS 14.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedetail)
    static func NSSensorKitUsageDetail(_ values: [NSSensorKitUsageDetailEntry]) -> Self {
        Self.dict(
            name: nil,
            key: "NSSensorKitUsageDetail",
            childEntries: values,
            availabilities: .init(
                iOS: "14.0",
                iPadOS: "14.0"
            )
        )
    }
    
    /// - Parameter value: A hyperlink to a webpage that displays the privacy policy for your app’s research study.
    ///
    /// When your app attempts to read sensor information for the first time on a user’s device, the system presents a sheet that displays a link to your app’s privacy policy. Users approve or deny your app’s ability to read private sensor information based on their assessment of your app’s privacy policy.
    ///
    /// For more information, see [Configuring your project for sensor reading](https://developer.apple.com/documentation/sensorkit/configuring_your_project_for_sensor_reading).
    ///
    /// Availability: iOS 14.0+, iPadOS 14.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitprivacypolicyurl)
    static func NSSensorKitPrivacyPolicyURL(_ value: String) -> Self {
        Self(
            name: nil,
            key: "NSSensorKitPrivacyPolicyURL",
            value: .string(value),
            availabilities: .init(
                iOS: "14.0",
                iPadOS: "14.0"
            )
        )
    }
    
    // MARK: - Siri
    
    /// - Parameter value: A message that tells the user why the app is requesting to send user data to Siri.
    ///
    /// - Important: This key is required if your app uses APIs that send user data to Siri.
    ///
    /// Availability: iOS 10.0+, iPadOS 10.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssiriusagedescription)
    static func NSSiriUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Siri Usage Description",
            key: "NSSiriUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "10.0",
                iPadOS: "10.0",
                visionOS: "1.0"
            )
        )
    }
    
    // MARK: - Speech
    
    /// - Parameter value: A message that tells the user why the app is requesting to send user data to Apple’s speech recognition servers.
    ///
    /// - Important: This key is required if your app uses APIs that send user data to Apple’s speech recognition servers.
    ///
    /// Availability: iOS 10.0+, iPadOS 10.0+, macOS 10.15+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsspeechrecognitionusagedescription)
    static func NSSpeechRecognitionUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Speech Recognition Usage Description",
            key: "NSSpeechRecognitionUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "10.0",
                iPadOS: "10.0",
                macOS: "10.15",
                visionOS: "1.0"
            )
        )
    }
    
    // MARK: - TV
    
    /// - Parameter value: A message that tells the user why the app is requesting access to the user’s TV provider account.
    ///
    /// - Important: This key is required if your app uses APIs that access the user’s TV provider account.
    ///
    /// Availability: tvOS 12.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsvideosubscriberaccountusagedescription)
    static func NSVideoSubscriberAccountUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Video Subscriber Account Usage Description",
            key: "NSVideoSubscriberAccountUsageDescription",
            value: .string(value),
            availabilities: .init(
                tvOS: "12.0"
            )
        )
    }
    
    // MARK: - Vision
    
    /// - Parameter value: A message that tells the user why the app is requesting access to image tracking, plane detection, or scene reconstruction.
    ///
    /// Use this key to indicate that your app requires access to world-sensing data. This includes plane detection, image tracking, and scene-reconstruction anchors. The first time your app tries to access world-sensing data, the system prompts for permission. Provide a string for the prompt that explains why your app needs access. For more information on setting up ARKit for world sensing, see [Setting up access to ARKit data](https://developer.apple.com/documentation/visionos/setting-up-access-to-arkit-data).
    ///
    /// - Note: World tracking — unlike world sensing — doesn’t require authorization. For more information, see [Tracking specific points in world space](https://developer.apple.com/documentation/visionos/tracking-points-in-world-space).
    ///
    /// Availability: visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsworldsensingusagedescription)
    static func NSWorldSensingUsageDescription(_ value: String) -> Self {
        Self(
            name: nil,
            key: "NSWorldSensingUsageDescription",
            value: .string(value),
            availabilities: .init(
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A message that tells the user why the app is requesting access to track the user’s hand position and location.
    ///
    /// Use this key to indicate that your app requires access to hand-tracking data. This includes hand skeleton, wrist, and forearm position and location. The first time your app tries to access hand-tracking data, the system prompts for permission. Provide a string for the prompt that explains why your app needs access. For more information on setting up ARKit for hand tracking, see [Setting up access to ARKit data](https://developer.apple.com/documentation/visionos/setting-up-access-to-arkit-data).
    ///
    /// Availability: visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nshandstrackingusagedescription)
    static func NSHandsTrackingUsageDescription(_ value: String) -> Self {
        Self(
            name: nil,
            key: "NSHandsTrackingUsageDescription",
            value: .string(value),
            availabilities: .init(
                visionOS: "1.0"
            )
        )
    }
    
    // MARK: - Wallet
    
    /// - Parameter value: A message that tells the user why the app is requesting identity information.
    ///
    /// - Important: This key is required if your app uses APIs that access identity information from Wallet.
    ///
    /// For more information about requesting identity information, see [Requesting identity data from a Wallet pass](https://developer.apple.com/documentation/passkit_apple_pay_and_wallet/wallet/requesting_identity_data_from_a_wallet_pass). For design guidance, see [Human Interface Guidelines > Technologies > Wallet](https://developer.apple.com/design/human-interface-guidelines/technologies/wallet#identity-verification).
    ///
    /// Availability: iOS 16.0+, iPadOS 16.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsidentityusagedescription)
    static func NSIdentityUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Identity Usage Description",
            key: "NSIdentityUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "16.0",
                iPadOS: "16.0",
                visionOS: "1.0"
            )
        )
    }
    
    // MARK: - Wi-Fi
    
    /// - Parameter value: A Boolean value that indicates whether the app requires a Wi-Fi connection.
    ///
    /// If `YES`, iOS opens a Wi-Fi connection when the app launches and keeps it open while the app is running. If `NO`, iOS closes the active Wi-Fi connection after 30 minutes. If the app tries to connect to the network when there’s no open Wi-Fi connection, the system may use the cellular network instead.
    ///
    /// Availability: iOS 2.0+, iPadOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uirequirespersistentwifi)
    static func UIRequiresPersistentWiFi(_ value: Bool) -> Self {
        Self(
            name: "Application uses Wi-Fi",
            key: "UIRequiresPersistentWiFi",
            value: .boolean(value),
            availabilities: .init(
                iOS: "2.0",
                iPadOS: "2.0",
                visionOS: "1.0"
            )
        )
    }
    
    // MARK: - Deprecated Keys
    
    /// - Parameter value: A message that tells people why the app is requesting access to their calendar data.
    ///
    /// - Deprecated: `NSCalendarsUsageDescription` has been deprecated. If your app needs read and write access to a person’s calendar data, use [`NSCalendarsFullAccessUsageDescription`](https://developer.apple.com/documentation/bundleresources/information_property_list/nscalendarsfullaccessusagedescription) instead. If your app needs to create events in a person’s default calendar, use [`NSCalendarsWriteOnlyAccessUsageDescription`](https://developer.apple.com/documentation/bundleresources/information_property_list/nscalendarswriteonlyaccessusagedescription) instead.
    ///
    /// - Important: This key is required if your app uses APIs that access the person’s calendar data.
    ///
    /// Availability: iOS 6.0-17.0, iPadOS 6.0-17.0, Mac Catalyst 13.0-17.0, macOS 10.14-14.0, watchOS 6.0-10.0
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nscalendarsusagedescription)
    static func NSCalendarsUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Calendars Usage Description",
            key: "NSCalendarsUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "6.0"..."17.0",
                iPadOS: "6.0"..."17.0",
                macCatalyst: "13.0"..."17.0",
                macOS: "10.14"..."14.0",
                watchOS: "6.0"..."10.0"
            )
        )
    }
    
    /// - Parameter value: A message that tells people why the app is requesting access to their reminders.
    ///
    /// - Deprecated: NSRemindersUsageDescription has been deprecated; use [`NSRemindersFullAccessUsageDescription`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsremindersfullaccessusagedescription) instead.
    ///
    /// - Important: This key is required if your app uses APIs that access the person’s reminders.
    ///
    /// Availability: iOS 6.0-17.0, iPadOS 6.0-17.0, Mac Catalyst 13.0-17.0, macOS 10.14-14.0, watchOS 6.0-10.0
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsremindersusagedescription)
    static func NSRemindersUsageDescription(_ value: String) -> Self {
        Self(
            name: "Privacy - Reminders Usage Description",
            key: "NSRemindersUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "6.0"..."17.0",
                iPadOS: "6.0"..."17.0",
                macCatalyst: "13.0"..."17.0",
                macOS: "10.14"..."14.0",
                watchOS: "6.0"..."10.0"
            )
        )
    }
    
}
