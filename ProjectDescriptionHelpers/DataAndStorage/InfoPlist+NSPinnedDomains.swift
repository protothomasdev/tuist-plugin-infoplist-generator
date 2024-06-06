//
//  InfoPlist+NSPinnedDomains.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 04.06.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct NSPinnedDomainsEntry: PlistEntry {
        
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
        
        // MARK: - Subdomains
        
        /// - Parameter value: A Boolean value that indicates whether to extend the configuration to subdomains of the given domain.
        ///
        /// You can include this key in any of the domain-specific dictionaries that you add to the [`NSExceptionDomains`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsexceptiondomains) and [`NSPinnedDomains`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nspinneddomains) dictionaries. Adding the `NSIncludesSubdomains` key affects the applicability of the other configuration in the same domain-specific dictionary. The key is optional, with a default value of `NO`.
        ///
        /// Set the value for this key to `YES` to apply the configuration for the given domain to all subdomains of the domain that have one additional path component. For example, if you set this value to `YES` and the domain name string is `example.com`, then the configuration applies to `example.com`, as well as `math.example.com` and `history.example.com`. However, it doesn’t apply to the subdomains `advanced.math.example.com` or `ancient.history.example.com` because those subdomains have two additional path components. If the value is `NO` the configuration applies only to `example.com`.
        ///
        /// If you create an `NSExceptionDomains` dictionary for an IP address or a range of addresses, the `NSIncludesSubdomains` key has no effect for that exception.
        ///
        /// Availability: iOS 9.0+, iPadOS 9.0+, macOS 10.11+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsincludessubdomains)
        static func NSIncludesSubdomains(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "NSIncludesSubdomains",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "9.0",
                    iPadOS: "9.0",
                    macOS: "10.11",
                    visionOS: "1.0"
                )
            )
        }
        
        // MARK: - Identities
        
        /// - Parameter value: A list of allowed Certificate Authority certificates for a given domain name.
        ///
        /// Provide an array of dictionaries as the value for this key. Each dictionary in the array contains the [`SPKI-SHA256-BASE64`](https://developer.apple.com/documentation/bundleresources/information_property_list/nspinnedcaidentities/spki-sha256-base64) key with a value that represents the Base64-encoded `SHA-256` digest of an `X.509` certificate’s DER-encoded ASN.1 Subject Public Key Info (SPKI) structure.
        ///
        /// ```
        /// NSPinnedCAIdentities : Array {
        ///     Dictionary {
        ///         SPKI-SHA256-BASE64 : String
        ///     }
        /// }
        /// ```
        ///
        /// When making a network connection to a named domain, App Transport Security (ATS) blocks the connection unless it can find the SPKI digest of at least one Certificate Authority (CA) or sub-CA certificate in the chain presented by the server.
        ///
        /// You must include this key or the [`NSPinnedLeafIdentities`](https://developer.apple.com/documentation/bundleresources/information_property_list/nspinnedleafidentities) key or both in each domain-specific [`NSPinnedDomains`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nspinneddomains) subdictionary. If you include both, then both must produce a match.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+, macOS 11.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nspinnedcaidentities)
        static func NSPinnedCAIdentities(_ values: [[NSPinnedCAIdentitiesEntry]]) -> Self {
            Self.dictArray(
                name: nil,
                key: "NSPinnedCAIdentities",
                childEntries: values,
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0",
                    macOS: "11.0",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter values: A list of allowed leaf certificates for a given domain name.
        ///
        /// Provide an array of dictionaries as the value for this key. Each dictionary in the array contains the [`SPKI-SHA256-BASE64`](https://developer.apple.com/documentation/bundleresources/information_property_list/nspinnedcaidentities/spki-sha256-base64) key with a value that represents the Base64-encoded `SHA-256` digest of an `X.509` certificate’s DER-encoded ASN.1 Subject Public Key Info (SPKI) structure.
        ///
        /// ```
        /// NSPinnedCAIdentities : Array {
        ///     Dictionary {
        ///         SPKI-SHA256-BASE64 : String
        ///     }
        /// }
        /// ```
        ///
        /// When making a network connection to a named domain, App Transport Security (ATS) blocks the connection unless it can find the SPKI digest of the leaf certificate presented by the server among the digests in this array. Consider including more than one leaf certificate to allow for server-side configuration changes.
        ///
        /// You must include this key or the [`NSPinnedCAIdentities`](https://developer.apple.com/documentation/bundleresources/information_property_list/nspinnedcaidentities) key or both in each domain-specific [`NSPinnedDomains`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nspinneddomains) subdictionary. If you include both, then both must produce a match.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+, macOS 11.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nspinnedleafidentities)
        static func NSPinnedLeafIdentities(_ values: [[NSPinnedLeafIdentitiesEntry]]) -> Self {
            Self.dictArray(
                name: nil,
                key: "NSPinnedLeafIdentities",
                childEntries: values,
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
