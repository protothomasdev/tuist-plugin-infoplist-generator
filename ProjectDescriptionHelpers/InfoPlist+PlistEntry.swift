//
//  InfoPlist+PlistEntry.swift
//  ProjectDescriptionHelpers
//
//  Created by Thomas Meyer on 05.05.24.
//

import ProjectDescription

public typealias PlistDictionary = [String: ProjectDescription.Plist.Value]

public protocol PlistArrayEntry {
    var value: ProjectDescription.Plist.Value { get }
    var childEntries: [PlistEntry]? { get }
    
    func validate()
}

public protocol PlistEntry {
    var name: String? { get }
    var key: String { get }
    var value: ProjectDescription.Plist.Value { get }
    var childEntries: [PlistEntry]? { get }
    var availabilities: PlatformAvailability? { get }
    var isRequired: Bool { get }
    
    func validate(for availability: PlatformAvailability)
    
    init(name: String?, key: String, value: ProjectDescription.Plist.Value, childEntries: [PlistEntry]?, availabilities: PlatformAvailability?, isRequired: Bool)
    static func array(name: String?, key: String, childEntries: [PlistEntry], availabilities: PlatformAvailability?, isRequired: Bool) -> Self
    static func dict(name: String?, key: String, childEntries: [PlistEntry], availabilities: PlatformAvailability?, isRequired: Bool) -> Self
    static func dictArray(name: String?, key: String, childEntries: [[PlistEntry]], availabilities: PlatformAvailability?, isRequired: Bool) -> Self
}

extension PlistEntry {
    
    public func validate(for availability: PlatformAvailability) {
        // TODO: Add validation logic
        print("\(self) validate(for:)")
        childEntries?.forEach { $0.validate(for: availability) }
    }
    
    public static func array(name: String?, key: String, childEntries: [PlistEntry], availabilities: PlatformAvailability?, isRequired: Bool = false) -> Self {
        return Self(
            name: name,
            key: key,
            value: .array(childEntries.map { $0.value }),
            childEntries: childEntries,
            availabilities: availabilities,
            isRequired: isRequired
        )
    }
    
    public static func dict(name: String?, key: String, childEntries: [PlistEntry], availabilities: PlatformAvailability?, isRequired: Bool = false) -> Self {
        return Self(
            name: name,
            key: key,
            value: .dictionary(PlistDictionary(entries: childEntries)),
            childEntries: childEntries,
            availabilities: availabilities,
            isRequired: isRequired
        )
    }
    
    public static func dictArray(name: String?, key: String, childEntries: [[PlistEntry]], availabilities: PlatformAvailability?, isRequired: Bool = false) -> Self {
        let value = childEntries.map { return Plist.Value.dictionary(PlistDictionary(entries: $0)) }
        return Self(
            name: name,
            key: key,
            value: .array(value),
            childEntries: childEntries.flatMap { $0 },
            availabilities: availabilities,
            isRequired: isRequired
        )
    }
    
}

public struct InfoPlistEntry: PlistEntry {
    
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
    
}

extension InfoPlistEntry {
    enum InfoPlistKey { }
    enum InfoPlistValue { }
}

public struct PlatformAvailability {
    
    /// Minimum version for iOS
    public var minimumiOS: Version? {
        return avaliabilities[.iOS]?.lowerBound
    }
    
    /// Minimum version for iPadOS
    public var minimumiPadOS: Version? {
        return avaliabilities[.iPadOS]?.lowerBound
    }
    
    /// Minimum version for Mac Catalyst
    public var minimumMacCatalyst: Version? {
        return avaliabilities[.macCatalyst]?.lowerBound
    }
    
    /// Minimum version for macOS
    public var minimumMacOS: Version? {
        return avaliabilities[.macOS]?.lowerBound
    }
    
    /// Minimum version for watchOS
    public var minimumWatchOS: Version? {
        return avaliabilities[.watchOS]?.lowerBound
    }
    
    /// Minimum version for tvOS
    public var minimumTVOS: Version? {
        return avaliabilities[.tvOS]?.lowerBound
    }
    
    /// Minimum version for visionOS
    public var minimumVisionOS: Version? {
        return avaliabilities[.visionOS]?.lowerBound
    }
    
    public var isDeprecated: Bool
    
    public enum AvailabilityPlatform: String {
        case iOS
        case iPadOS
        case macCatalyst
        case macOS
        case tvOS
        case watchOS
        case visionOS
    }
    
    private let latestOSVersions: [AvailabilityPlatform: Version] = [
        .iOS: Version(17, 5, 0, prereleaseIdentifiers: ["Beta 4"]),
        .iPadOS: Version(17, 5, 0, prereleaseIdentifiers: ["Beta 4"]),
        .macCatalyst: Version(17, 5, 0, prereleaseIdentifiers: ["Beta 4"]),
        .macOS: Version(14, 5, 0, prereleaseIdentifiers: ["Beta 4"]),
        .tvOS: Version(17, 5, 0, prereleaseIdentifiers: ["Beta 4"]),
        .watchOS: Version(10, 5, 0, prereleaseIdentifiers: ["Beta 4"]),
        .visionOS: Version(1, 2, 0, prereleaseIdentifiers: ["Beta 4"])
    ]
    
    private var avaliabilities: [AvailabilityPlatform: ClosedRange<Version>] = [:]
    
    public init(iOS: Version? = nil, 
                iPadOS: Version? = nil,
                macCatalyst: Version? = nil,
                macOS: Version? = nil,
                tvOS: Version? = nil,
                watchOS: Version? = nil,
                visionOS: Version? = nil,
                isDeprecated: Bool = false) {
        if let version = iOS, let latest = latestOSVersions[.iOS] {
            avaliabilities[.iOS] = version...latest
        }
        if let version = iPadOS, let latest = latestOSVersions[.iPadOS] {
            avaliabilities[.iPadOS] = version...latest
        }
        if let version = macCatalyst, let latest = latestOSVersions[.macCatalyst] {
            avaliabilities[.macCatalyst] = version...latest
        }
        if let version = macOS, let latest = latestOSVersions[.macOS] {
            avaliabilities[.macOS] = version...latest
        }
        if let version = tvOS, let latest = latestOSVersions[.tvOS] {
            avaliabilities[.tvOS] = version...latest
        }
        if let version = watchOS, let latest = latestOSVersions[.watchOS] {
            avaliabilities[.watchOS] = version...latest
        }
        if let version = visionOS, let latest = latestOSVersions[.visionOS] {
            avaliabilities[.visionOS] = version...latest
        }
        self.isDeprecated = isDeprecated
    }
    
    public init(iOS: ClosedRange<Version>? = nil,
                iPadOS: ClosedRange<Version>? = nil,
                macCatalyst: ClosedRange<Version>? = nil,
                macOS: ClosedRange<Version>? = nil,
                tvOS: ClosedRange<Version>? = nil,
                watchOS: ClosedRange<Version>? = nil,
                visionOS: ClosedRange<Version>? = nil) {
        if let iOS {
            avaliabilities[.iOS] = iOS
        }
        if let iPadOS {
            avaliabilities[.iPadOS] = iPadOS
        }
        if let macCatalyst {
            avaliabilities[.macCatalyst] = macCatalyst
        }
        if let macOS {
            avaliabilities[.macOS] = macOS
        }
        if let watchOS {
            avaliabilities[.watchOS] = watchOS
        }
        if let tvOS {
            avaliabilities[.tvOS] = tvOS
        }
        if let visionOS {
            avaliabilities[.visionOS] = visionOS
        }
        self.isDeprecated = true
    }
    
    /// Convenience accessor to retreive a minimum version given a `Platform`
    public subscript(platform: AvailabilityPlatform) -> Version? {
        return avaliabilities[platform]?.lowerBound
    }
    
}

public extension PlistDictionary {
    
    init(entries: [PlistEntry]) {
        self.init()
        entries.forEach { self[$0.key] = $0.value }
    }
    
    init(arrayLiteral elements: PlistEntry...) {
        self.init()
        elements.forEach { self[$0.key] = $0.value }
    }
    
    func extend(with entries: [InfoPlistEntry], validatingFor availability: PlatformAvailability? = nil) -> PlistDictionary {
        var newDict = self
        entries.forEach {
            if let availability {
                $0.validate(for: availability)
            }
            newDict[$0.key] = $0.value
        }
        return newDict
    }
    
    mutating func extending(with entries: [InfoPlistEntry], validatingFor availability: PlatformAvailability? = nil) {
        entries.forEach {
            if let availability {
                $0.validate(for: availability)
            }
            self[$0.key] = $0.value
        }
    }
    
}

