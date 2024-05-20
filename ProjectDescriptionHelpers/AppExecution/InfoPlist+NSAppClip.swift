//
//  InfoPlist+NSAppClip.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 20.05.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct NSAppClipEntry: PlistEntry {
        
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
        
    }
    
    // MARK: - Scheduling and Receiving Temporary Notifications
    
    /// - Parameter value: A Boolean value that indicates whether an App Clip can schedule or receive notifications for a limited amount of time.
    ///
    /// Set the corresponding value to true to enable your App Clip to schedule or receive notifications for up to 8 hours after each launch. For more information, see [Enabling notifications in App Clips](https://developer.apple.com/documentation/app_clips/enabling_notifications_in_app_clips).
    ///
    /// Availability: iOS 14.0+, iPadOS 14.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsappclip/nsappcliprequestephemeralusernotification)
    static func NSAppClipRequestEphemeralUserNotification(_ value: Bool) -> Self {
        Self(
            name: "Requests ephemeral user notifications",
            key: "NSAppClipRequestEphemeralUserNotification",
            value: .boolean(value),
            availabilities: .init(
                iOS: "14.0",
                iPadOS: "14.0"
            )
        )
    }
    
    // MARK: - Verifying Location
    
    /// - Parameter value: A Boolean value that indicates whether an App Clip can confirm the user’s location.
    ///
    /// Set the value to true to allow your App Clip to confirm the user’s location. For more information, see [Responding to invocations](https://developer.apple.com/documentation/app_clips/responding_to_invocations).
    ///
    /// Availability: iOS 14.0+, iPadOS 14.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsappclip/nsappcliprequestlocationconfirmation)
    static func NSAppClipRequestLocationConfirmation(_ value: Bool) -> Self {
        Self(
            name: "Requests location confirmation",
            key: "NSAppClipRequestLocationConfirmation",
            value: .boolean(value),
            availabilities: .init(
                iOS: "14.0",
                iPadOS: "14.0"
            )
        )
    }
    
}
