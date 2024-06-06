//
//  InfoPlist+NSAppTransportSecurity.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 02.06.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct NSAppTransportSecurityEntry: PlistEntry {
        
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
        
        // MARK: - Global Exceptions
        
        /// - Parameter value: A Boolean value indicating whether App Transport Security restrictions are disabled for all network connections.
        ///
        /// Set this key’s value to `YES` to disable App Transport Security (ATS) restrictions for all domains not specified in the [`NSExceptionDomains`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsexceptiondomains) dictionary. Domains you specify in that dictionary aren’t affected by this key’s value.
        ///
        /// - Important: You must supply a justification during App Store review if you set the key’s value to `YES`, as described in [Provide Justification for Exceptions](https://developer.apple.com/documentation/security/preventing_insecure_network_connections#3138036). Use this key with caution because it significantly reduces the security of your app. In most cases, it’s better to upgrade your servers to meet the requirements imposed by ATS, or at least to use a narrower exception.
        ///
        /// Disabling ATS means that unsecured HTTP connections are allowed. HTTPS connections are also allowed, and are still subject to default server trust evaluation, as described in [Ensure the Network Server Meets Minimum Requirements](https://developer.apple.com/documentation/security/preventing_insecure_network_connections#3138464). However, extended security checks—like requiring a minimum Transport Layer Security (TLS) protocol version—are disabled. Without ATS, you’re also free to loosen the default server trust requirements, as described in [Performing manual server trust authentication](https://developer.apple.com/documentation/foundation/url_loading_system/handling_an_authentication_challenge/performing_manual_server_trust_authentication).
        ///
        /// In iOS 10 and later and macOS 10.12 and later, the value of the `NSAllowsArbitraryLoads` key is ignored—and the default value of NO used instead—if any of the following keys are present in your app’s [`Information Property List`](https://developer.apple.com/documentation/bundleresources/information_property_list) file:
        ///
        /// - [`NSAllowsArbitraryLoadsForMedia`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsallowsarbitraryloadsformedia)
        ///
        /// - [`NSAllowsArbitraryLoadsInWebContent`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsallowsarbitraryloadsinwebcontent)
        ///
        /// - [`NSAllowsLocalNetworking`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsallowslocalnetworking)
        ///
        /// For more information about how the OS version affects ATS behavior, see the [`NSAppTransportSecurity`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity) key’s Versioning section.
        ///
        /// Availability: iOS 9.0+, iPadOS 9.0+, macOS 10.11+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsallowsarbitraryloads)
        static func NSAllowsArbitraryLoads(_ value: Bool) -> Self {
            Self(
                name: "Allow Arbitrary Loads",
                key: "NSAllowsArbitraryLoads",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "9.0",
                    iPadOS: "9.0",
                    macOS: "10.11",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: A Boolean value indicating whether all App Transport Security restrictions are disabled for requests made using the AV Foundation framework.
        ///
        /// Set this key’s value to YES to disable App Transport Security restrictions for media loaded using the [AVFoundation](https://developer.apple.com/documentation/avfoundation) framework, without affecting your [`URLSession`](https://developer.apple.com/documentation/foundation/urlsession) connections. Domains you specify in the [`NSExceptionDomains`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsexceptiondomains) dictionary aren’t affected by this key’s value.
        ///
        /// Employ this key only for loading encrypted media—like files protected by FairPlay or by secure [HTTP Live Streaming](https://developer.apple.com/documentation/http-live-streaming)—that don’t contain personalized information.
        ///
        /// In iOS 10 and later and in macOS 10.12 and later, if you include this key with any value, then App Transport Security ignores the value of the [`NSAllowsArbitraryLoads`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsallowsarbitraryloads) key, instead using that key’s default value of NO. For more information about how the OS version affects ATS behavior, see the [`NSAppTransportSecurity`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity) key’s Versioning section.
        ///
        /// - Important: You must supply a justification during App Store review if you set the key’s value to YES, as described in [Provide Justification for Exceptions](https://developer.apple.com/documentation/security/preventing_insecure_network_connections#3138036).
        ///
        /// Availability: iOS 10.0+, iPadOS 10.0+, macOS 10.12+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsallowsarbitraryloadsformedia)
        static func NSAllowsArbitraryLoadsForMedia(_ value: Bool) -> Self {
            Self(
                name: "Allows Arbitrary Loads for Media",
                key: "NSAllowsArbitraryLoadsForMedia",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "10.0",
                    iPadOS: "10.0",
                    macOS: "10.12",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: A Boolean value indicating whether all App Transport Security restrictions are disabled for requests made from web views.
        ///
        /// Set this key’s value to YES to exempt your app’s web views from App Transport Security restrictions without affecting your [`URLSession`](https://developer.apple.com/documentation/foundation/urlsession) connections. Domains you specify in the [`NSExceptionDomains`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsexceptiondomains) dictionary aren’t affected by this key’s value.
        ///
        /// A web view is an instance of any of the following classes:
        ///
        /// - [`WKWebView`](https://developer.apple.com/documentation/webkit/wkwebview)
        ///
        /// - [`UIWebView`](https://developer.apple.com/documentation/uikit/uiwebview) (iOS only)
        ///
        /// - [`WebView`](https://developer.apple.com/documentation/webkit/webview) (macOS only)
        ///
        /// In iOS 10 and later and in macOS 10.12 and later, if you include this key with any value, then App Transport Security ignores the value of the [`NSAllowsArbitraryLoads`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsallowsarbitraryloads) key, instead using that key’s default value of NO. For more information about how the OS version affects ATS behavior, see the [`NSAppTransportSecurity`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity) key’s Versioning section.
        ///
        /// - Important: You must supply a justification during App Store review if you set the key’s value to YES, as described in [Provide Justification for Exceptions](https://developer.apple.com/documentation/security/preventing_insecure_network_connections#3138036).
        ///
        /// Availability: iOS 10.0+, iPadOS 10.0+, macOS 10.12+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsallowsarbitraryloadsinwebcontent)
        static func NSAllowsArbitraryLoadsInWebContent(_ value: Bool) -> Self {
            Self(
                name: "Allow Arbitrary Loads in Web Content",
                key: "NSAllowsArbitraryLoadsInWebContent",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "10.0",
                    iPadOS: "10.0",
                    macOS: "10.12",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: A Boolean value that indicates whether to allow local resources to load.
        ///
        /// The `NSAllowsLocalNetworking` key controls whether App Transport Security (ATS) allows your app to connect to unqualified domains, `.local` domains, and IP addresses using IPv4 or IPv6.
        ///
        /// In iOS 9 and macOS 10.11, ATS disallows connections to all three domain types. You can add exceptions for unqualified domains and `.local` domains in the [`NSExceptionDomains`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsexceptiondomains) dictionary, but you can’t add IP addresses. Instead you use [`NSAllowsArbitraryLoads`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsallowsarbitraryloads) when you want to load directly from an IP address.
        ///
        /// In iOS 10 through iOS 16, iPadOS 13.1 through iPadOS 16, and macOS 10.12 through macOS 13, ATS allows all three of these connections by default, so you no longer need an exception for any of them. However, if you need to maintain compatibility with older versions of the OS, set both of the [`NSAllowsArbitraryLoads`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsallowsarbitraryloads) and `NSAllowsLocalNetworking` keys to YES.
        ///
        /// In iOS 17, iPadOS 17, and macOS 14, ATS no longer allows connections to IP addresses by default. Add individual IP addresses and classless inter-domain routing (CIDR) ranges in the `NSExceptionDomains` dictionary.
        ///
        /// The local networking exception tells newer versions of the OS to ignore the arbitrary loads key, and enable access to unqualified domains, `.local` domains, and IP addresses that they would otherwise restrict. Meanwhile, the arbitrary loads key tells older versions of the OS, which don’t process the local networking exception key, to bypass ATS completely. This allows your app to work on different OS versions while minimizing the use of the wider exception. For more information about how global ATS exceptions interact across OS versions, see the NSAppTransportSecurity key’s Versioning section.
        ///
        /// - Note: While ATS doesn’t block local loads by default in newer versions of the OS, consider setting NSAllowsLocalNetworking to YES as a declaration of intent, if appropriate, even if you don’t support older OS versions.
        ///
        /// Availability: iOS 10.0+, iPadOS 10.0+, macOS 10.12+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsallowslocalnetworking)
        static func NSAllowsLocalNetworking(_ value: Bool) -> Self {
            Self(
                name: "Allows Local Networking",
                key: "NSAllowsLocalNetworking",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "10.0",
                    iPadOS: "10.0",
                    macOS: "10.12",
                    visionOS: "1.0"
                )
            )
        }
        
        // MARK: - Domain-Specific Exceptions
        
        /// - Parameter values: Custom App Transport Security (ATS) configurations for named domains.
        ///
        /// The value for this key is a dictionary with keys that name specific domains, IP addresses, or IP address ranges for which you want to set exceptions. The value for each domain key is another dictionary that indicates the exceptions for that domain.
        ///
        /// ```
        /// NSExceptionDomains : Dictionary {
        ///     <domain-name-or-ip-address-string> : Dictionary {
        ///         NSIncludesSubdomains : Boolean
        ///         NSExceptionAllowsInsecureHTTPLoads : Boolean
        ///         NSExceptionMinimumTLSVersion : String
        ///         NSExceptionRequiresForwardSecrecy : Boolean
        ///     }
        /// }
        /// ```
        ///
        /// Follow these rules when setting a domain name string:
        ///
        /// - **Use lowercase** — Use `example.com`, not `EXAMPLE.COM`.
        ///
        /// - **Use a DNS domain name, IP address, or range of IP addresses** — In iOS 17, iPadOS 17, and macOS 14, you can use an IPv4 address, for example 192.168.42.63, or an IPv6 address, for example 2001:db8:12::34. You can also use a classless inter-domain routing (CIDR) range, for example 2001:db8:12::/48. For information about how ATS handles IP addresses, see [`NSAllowsLocalNetworking`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsallowslocalnetworking).
        ///
        /// - Note: If you exclude a DNS domain name and your app contacts a host by IP address, the ATS exclusion for the domain name doesn’t apply to the connection even if a DNS query for the domain name would resolve to the IP address. If you exclude an IP address and your app contacts a host by DNS name that resolves to that IP address, the ATS exclusion for the IP address doesn’t apply to the connection.
        ///
        /// - **Don’t include a port number** — Use example.com, not example.com:443.
        ///
        /// - **Don’t include a trailing dot, unless you only want to match a domain string with a trailing dot** — For example, example.com. (with a trailing dot) matches “example.com.” but not “example.com”. Similarly, example.com matches “example.com” but not “example.com.”.
        ///
        /// - **Don’t use wildcard domains** — Don’t use \*.example.com. Instead, use example.com and set [`NSIncludesSubdomains`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsincludessubdomains) to YES.
        ///
        /// The values for the keys in each individual domain’s dictionary control how ATS treats connections made to that domain.
        ///
        /// - Note: If you specify an exception domain dictionary, ATS ignores any global configuration keys, like [`NSAllowsArbitraryLoads`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsallowsarbitraryloads), for that domain. This is true even if you leave the domain-specific dictionary empty and rely entirely on its keys’ default values.
        ///
        /// Availability: iOS 9.0+, iPadOS 9.0+, macOS 10.11+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsexceptiondomains)
        static func NSExceptionDomains(_ values: [String: [NSExceptionDomainsEntry]]) -> Self {
            var childEntries: [PlistEntry] = values.flatMap { $0.1 }
            var valueDict: [String: Plist.Value] = [:]
            for (key, valueArray) in values {
                var domainDict: [String: Plist.Value] = [:]
                valueArray.forEach { domainDict[$0.key] = $0.value }
                valueDict[key] = .dictionary([key: .dictionary(domainDict)])
            }
            return Self(
                name: "Exception Domains",
                key: "NSExceptionDomains",
                value: .dictionary(valueDict),
                childEntries: childEntries,
                availabilities: .init(
                    iOS: "9.0",
                    iPadOS: "9.0",
                    macOS: "10.11",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter values: A collection of certificates that App Transport Security expects when connecting to named domains.
        ///
        /// The value for this optional key is a dictionary with keys that specify the domain names for which you want to set the expected certificates. The value for each domain name key is another dictionary that configures the expected certificates for that domain.
        ///
        /// ```
        /// NSPinnedDomains : Dictionary {
        ///     <domain-name-string> : Dictionary {
        ///         NSIncludesSubdomains : Boolean
        ///         NSPinnedCAIdentities : Array
        ///         NSPinnedLeafIdentities : Array
        ///     }
        /// }
        /// ```
        ///
        /// For any domain that you specify, you must include one or more expected Certificate Authority (CA) or sub-CA certificates as the value for the [`NSPinnedCAIdentities`](https://developer.apple.com/documentation/bundleresources/information_property_list/nspinnedcaidentities) key, one or more expected leaf certificates as the value for the [`NSPinnedLeafIdentities`](https://developer.apple.com/documentation/bundleresources/information_property_list/nspinnedleafidentities) key, or both. If you specify both, App Transport Security (ATS) requires a match in each category.
        ///
        /// To specify a domain name string, follow the rules for domain names given in [`NSExceptionDomains`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsexceptiondomains). You can also extend the pinning to cover subdomains by setting the value for the [`NSIncludesSubdomains`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsincludessubdomains) key to `YES`.
        ///
        /// Pinning a certificate for a given domain has no impact on other security requirements or configuration. For example, pinning a CA certificate doesn’t change the way the system evaluates that certificate’s suitability as an anchor certificate. For information about securing network connections, see [Preventing Insecure Network Connections](https://developer.apple.com/documentation/security/preventing_insecure_network_connections).
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+, macOS 11.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nspinneddomains)
        static func NSPinnedDomains(_ values: [String: [NSPinnedDomainsEntry]]) -> Self {
            var childEntries: [PlistEntry] = values.flatMap { $0.1 }
            var valueDict: [String: Plist.Value] = [:]
            for (key, valueArray) in values {
                var domainDict: [String: Plist.Value] = [:]
                valueArray.forEach { domainDict[$0.key] = $0.value }
                valueDict[key] = .dictionary([key: .dictionary(domainDict)])
            }
            return Self(
                name: nil,
                key: "NSPinnedDomains",
                value: .dictionary(valueDict),
                childEntries: childEntries,
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
