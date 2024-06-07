//
//  InfoPlist+Misc.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 07.06.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    // MARK: - AdAttributionKit
    
    /// Availability: iOS 17.4+, iPadOS 17.4+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/adnetworkidentifiers)
    static func AdNetworkIdentifiers(_ values: [String]) -> Self {
        Self(
            name: nil,
            key: "AdNetworkIdentifiers",
            value: .array(values.map { .string($0) }),
            availabilities: .init(
                iOS: "17.4",
                iPadOS: "17.4"
            )
        )
    }
    
    /// Availability: iOS 17.4+, iPadOS 17.4+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/attributioncopyendpoint)
    static func AttributionCopyEndpoint(_ value: String) -> Self {
        Self(
            name: nil,
            key: "AttributionCopyEndpoint",
            value: .string(value),
            availabilities: .init(
                iOS: "17.4",
                iPadOS: "17.4"
            )
        )
    }
    
    // MARK: - FinanceKit
    
    /// Availability: iOS 17.4+, iPadOS 17.4+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsfinancialdatausagedescription)
    static func NSFinancialDataUsageDescription(_ value: String) -> Self {
        Self(
            name: nil,
            key: "NSFinancialDataUsageDescription",
            value: .string(value),
            availabilities: .init(
                iOS: "17.4",
                iPadOS: "17.4"
            )
        )
    }
    
}
