//
//  InfoPlist+ASWebAuthenticationSessionWebBrowserSupportCapabilities.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 06.06.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct ASWebAuthenticationSessionWebBrowserSupportCapabilitiesEntry: PlistEntry {
        
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
        
        // MARK: - Capabilities
        
        /// - Parameter value: A Boolean that indicates whether the app acts as a browser that supports authentication sessions.
        ///
        /// Set the corresponding value to `YES` to indicate that your browser app can handle authentication requests that other apps generate with [`ASWebAuthenticationSession`](https://developer.apple.com/documentation/authenticationservices/aswebauthenticationsession). For details, see [Supporting Single Sign-On in a Web Browser App](https://developer.apple.com/documentation/authenticationservices/supporting_single_sign-on_in_a_web_browser_app).
        ///
        /// Availability: macOS 10.15+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/aswebauthenticationsessionwebbrowsersupportcapabilities/issupported)
        static func IsSupported(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "IsSupported",
                value: .boolean(value),
                availabilities: .init(
                    macOS: "10.15"
                ),
                isRequired: true
            )
        }
        
        /// - Parameter value: A Boolean that indicates whether the app supports ephemeral browsing when conducting authentication sessions.
        ///
        /// Set the corresponding value to YES to indicate that your browser app, when handling authentication requests, offers ephemeral browsing.
        ///
        /// If you don’t provide the key, or if you set its value to `NO` and an app tries to conduct an ephemeral authentication session, the system warns the user. If do you declare support by setting the value to `YES`, be sure to respect the [`shouldUseEphemeralSession`](https://developer.apple.com/documentation/authenticationservices/aswebauthenticationsessionrequest/3180415-shoulduseephemeralsession) property on any incoming authentication requests, as described in [Supporting Single Sign-On in a Web Browser App](https://developer.apple.com/documentation/authenticationservices/supporting_single_sign-on_in_a_web_browser_app).
        ///
        /// - Note: It’s strongly recommended that your web browser support ephemeral sessions. Apps can specifically request this kind of session, and it’s important to honor the request.
        ///
        /// Availability: macOS 10.15+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/aswebauthenticationsessionwebbrowsersupportcapabilities/ephemeralbrowsersessionissupported)
        static func EphemeralBrowserSessionIsSupported(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "EphemeralBrowserSessionIsSupported",
                value: .boolean(value),
                availabilities: .init(
                    macOS: "10.15"
                )
            )
        }
        
    }
    
}
