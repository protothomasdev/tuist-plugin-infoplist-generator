//
//  InfoPlist+NSPinnedLeafIdentities.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 04.06.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct NSPinnedLeafIdentitiesEntry: PlistEntry {
        
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
        
        // MARK: - Key Digests
        
        /// - Parameter value: The digest of an X.509 certificate’s Subject Public Key Info structure.
        ///
        /// You represent a pinned certificate using the Base64-encoded SHA-256 digest of an X.509 certificate’s DER-encoded ASN.1 Subject Public Key Info (SPKI) structure. For a PEM-encoded public-key certificate stored in the file ca.pem, you can calculate the SPKI-SHA256-BASE64 value with the following `openssl` commands:
        ///
        /// ```
        /// % cat ca.pem |
        ///     openssl x509 -inform pem -noout -outform pem -pubkey |
        ///     openssl pkey -pubin -inform pem -outform der |
        ///     openssl dgst -sha256 -binary |
        ///     openssl enc -base64
        /// ```
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+, macOS 11.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nspinnedcaidentities/spki-sha256-base64)
        static func SPKISHA256BASE64(_ value: String) -> Self {
            Self(
                name: nil,
                key: "SPKI-SHA256-BASE64",
                value: .string(value),
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0",
                    macOS: "11.0",
                    visionOS: "1.0"
                )
            )
        }
        
    }
    
}
