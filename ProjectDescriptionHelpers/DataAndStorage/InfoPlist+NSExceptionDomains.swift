//
//  InfoPlist+NSExceptionDomains.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 02.06.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct NSExceptionDomainsEntry: PlistEntry {
        
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
        /// Set the value for this key to `YES` to apply the configuration for the given domain to all subdomains of the domain that have one additional path component. For example, if you set this value to `YES` and the domain name string is example.com, then the configuration applies to `example.com`, as well as `math.example.com` and `history.example.com`. However, it doesn’t apply to the subdomains `advanced.math.example.com` or `ancient.history.example.com` because those subdomains have two additional path components. If the value is `NO` the configuration applies only to `example.com`.
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
        
        // MARK: - Exceptions
        
        /// - Parameter value: A Boolean value indicating whether to allow insecure HTTP loads.
        ///
        /// Set the value for this key to `YES` to allow insecure `HTTP` loads for the given domain, or to be able to loosen the server trust evaluation requirements for `HTTPS` connections to the domain, as described in [Performing manual server trust authentication](https://developer.apple.com/documentation/foundation/url_loading_system/handling_an_authentication_challenge/performing_manual_server_trust_authentication).
        ///
        /// Using this key doesn’t by itself change default server trust evaluation requirements for `HTTPS` connections, described in [Ensure the Network Server Meets Minimum Requirements](https://developer.apple.com/documentation/security/preventing_insecure_network_connections#3138464). Using only this key also doesn’t change the `TLS` or forward secrecy requirements imposed by `ATS`. As a result, you might need to combine this key with the [`NSExceptionMinimumTLSVersion`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsexceptionminimumtlsversion) or [`NSExceptionRequiresForwardSecrecy`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsexceptionrequiresforwardsecrecy) key in certain cases.
        ///
        /// This key is optional. The default value is NO.
        ///
        /// - Important: You must supply a justification during App Store review if you set the key’s value to `YES`, as described in [Provide Justification for Exceptions](https://developer.apple.com/documentation/security/preventing_insecure_network_connections#3138036).
        ///
        /// Availability: iOS 9.0+, iPadOS 9.0+, macOS 10.11+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsexceptionallowsinsecurehttploads)
        static func NSExceptionAllowsInsecureHTTPLoads(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "NSExceptionAllowsInsecureHTTPLoads",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "9.0",
                    iPadOS: "9.0",
                    macOS: "10.11",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: The minimum Transport Layer Security (TLS) version for network connections.
        ///
        /// This key is optional. The value is a string, with a default value of `TLSv1.2`.
        ///
        /// - Important: You must supply a justification during App Store review if you use this key to set a protocol version lower than 1.2, as described in [`Provide Justification for Exceptions`](https://developer.apple.com/documentation/security/preventing_insecure_network_connections#3138036).
        ///
        /// Availability: iOS 9.0+, iPadOS 9.0+, macOS 10.11+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsexceptionminimumtlsversion)
        static func NSExceptionMinimumTLSVersion(_ value: InfoPlistValue.NSExceptionMinimumTLSVersionValue) -> Self {
            Self(
                name: nil,
                key: "NSExceptionMinimumTLSVersion",
                value: .string(value.rawValue),
                availabilities: .init(
                    iOS: "9.0",
                    iPadOS: "9.0",
                    macOS: "10.11",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: A Boolean value indicating whether to override the perfect forward secrecy requirement.
        ///
        /// Set the value for this key to `NO` to override the requirement that a server support perfect forward secrecy (`PFS`) for the given domain. Disabling this requirement also removes the key length check described in [Ensure the Network Server Meets Minimum Requirements](https://developer.apple.com/documentation/security/preventing_insecure_network_connections#3138464). However, it doesn’t impact the `TLS` version requirement. To control that, use [`NSExceptionMinimumTLSVersion`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsexceptionminimumtlsversion).
        ///
        /// This key is optional. The default value is `YES`, which limits the accepted ciphers to those that support PFS through Elliptic Curve Diffie-Hellman Ephemeral (ECDHE) key exchange.
        ///
        /// Availability: iOS 9.0+, iPadOS 9.0+, macOS 10.11+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsexceptionrequiresforwardsecrecy)
        static func NSExceptionRequiresForwardSecrecy(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "NSExceptionRequiresForwardSecrecy",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "9.0",
                    iPadOS: "9.0",
                    macOS: "10.11",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: An obsolete Boolean value indicating whether to require Certificate Transparency.
        ///
        /// Certificate Transparency (CT) is a protocol that ATS can use to identify mistakenly or maliciously issued X.509 certificates. Earlier versions of the system used this key to enable or disable CT for a given domain. Specifically, CT requires a domain’s server certificates to have support from signed CT timestamps from at least two CT logs trusted by Apple. For more information about Certificate Transparency, see [RFC 6962](https://tools.ietf.org/html/rfc6962).
        ///
        /// The system now requires this behavior in all cases, making the key irrelevant.
        ///
        /// - Warning: Don’t use this key. The current system enforces this behavior, and new certificates can’t meet the requirement on older systems.
        ///
        /// Availability: iOS 9.0+, iPadOS 9.0+, macOS 10.11+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsrequirescertificatetransparency)
        static func NSRequiresCertificateTransparency(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "NSRequiresCertificateTransparency",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "9.0",
                    iPadOS: "9.0",
                    macOS: "10.11",
                    visionOS: "1.0"
                )
            )
        }
        
    }
    
}

extension InfoPlistEntry.InfoPlistValue {

    enum NSExceptionMinimumTLSVersionValue: String {
        /// Require a minimum TLS version of 1.0.
        case TLSv1_0 = "TLSv1.0"
        /// Require a minimum TLS version of 1.1.
        case TLSv1_1 = "TLSv1.1"
        /// Require a minimum TLS version of 1.2.
        case TLSv1_2 = "TLSv1.2"
        /// Require a minimum TLS version of 1.3.
        case TLSv1_3 = "TLSv1.3"
    }
    
}

