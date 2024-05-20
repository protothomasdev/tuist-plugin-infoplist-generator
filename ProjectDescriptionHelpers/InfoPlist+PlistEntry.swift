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
    
    public enum AvailabilityPlatform: String {
        case iOS
        case iPadOS
        case macCatalyst
        case macOS
        case tvOS
        case watchOS
        case visionOS
        case proVideoWorkflowExtensions
        case proVideoEncoderExtensions
    }
    
    private let latestOSVersions: [AvailabilityPlatform: Version] = [
        .iOS: Version(17, 5, 0, prereleaseIdentifiers: ["Beta 4"]),
        .iPadOS: Version(17, 5, 0, prereleaseIdentifiers: ["Beta 4"]),
        .macCatalyst: Version(17, 5, 0, prereleaseIdentifiers: ["Beta 4"]),
        .macOS: Version(14, 5, 0, prereleaseIdentifiers: ["Beta 4"]),
        .tvOS: Version(17, 5, 0, prereleaseIdentifiers: ["Beta 4"]),
        .watchOS: Version(10, 5, 0, prereleaseIdentifiers: ["Beta 4"]),
        .visionOS: Version(1, 2, 0, prereleaseIdentifiers: ["Beta 4"]),
        .proVideoWorkflowExtensions: Version(1, 0, 0),
        .proVideoEncoderExtensions: Version(1, 0, 0)
    ]
    
    private var avaliabilities: [AvailabilityPlatform: ClosedRange<Version>] = [:]
    private var deprecatedPlattforms: Set<AvailabilityPlatform> = []
    private let isDeprecated: Bool
    
    public init(iOS: Version? = nil, 
                iPadOS: Version? = nil,
                macCatalyst: Version? = nil,
                macOS: Version? = nil,
                tvOS: Version? = nil,
                watchOS: Version? = nil,
                visionOS: Version? = nil) {
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
        
        self.isDeprecated = false
    }
    
    public init(proVideoWorkFlow: Version? = nil, 
                proVideoEncoder: Version? = nil) {
        if let version = proVideoWorkFlow,
            let latest = latestOSVersions[.proVideoWorkflowExtensions] {
            avaliabilities[.proVideoWorkflowExtensions] = version...latest
        }
        if let version = proVideoEncoder,
            let latest = latestOSVersions[.proVideoEncoderExtensions] {
            avaliabilities[.proVideoEncoderExtensions] = version...latest
        }
        
        self.isDeprecated = false
    }
    
    public init(iOSMin: Version? = nil,
                iOSMax: Version? = nil,
                iPadOSMin: Version? = nil,
                iPadOSMax: Version? = nil,
                macCatalystMin: Version? = nil,
                macCatalystMax: Version? = nil,
                macOSMin: Version? = nil,
                macOSMax: Version? = nil,
                tvOSMin: Version? = nil,
                tvOSMax: Version? = nil,
                watchOSMin: Version? = nil,
                watchOSMax: Version? = nil,
                visionOSMin: Version? = nil,
                visionOSMax: Version? = nil) {
        if let min = iOSMin, let latest = latestOSVersions[.iOS] {
            if let iOSMax {
                avaliabilities[.iOS] = min...iOSMax
                deprecatedPlattforms.insert(.iOS)
            } else {
                avaliabilities[.iOS] = min...latest
            }
        }
        if let min = iPadOSMin, let latest = latestOSVersions[.iPadOS] {
            if let iPadOSMax {
                avaliabilities[.iPadOS] = min...iPadOSMax
                deprecatedPlattforms.insert(.iPadOS)
            } else {
                avaliabilities[.iPadOS] = min...latest
            }
        }
        if let min = macCatalystMin, let latest = latestOSVersions[.macCatalyst] {
            if let macCatalystMax {
                avaliabilities[.macCatalyst] = min...macCatalystMax
                deprecatedPlattforms.insert(.macCatalyst)
            } else {
                avaliabilities[.macCatalyst] = min...latest
            }
        }
        if let min = macOSMin, let latest = latestOSVersions[.macOS] {
            if let macOSMax {
                avaliabilities[.macOS] = min...macOSMax
                deprecatedPlattforms.insert(.macOS)
            } else {
                avaliabilities[.macOS] = min...latest
            }
        }
        if let min = tvOSMin, let latest = latestOSVersions[.tvOS] {
            if let tvOSMax {
                avaliabilities[.tvOS] = min...tvOSMax
                deprecatedPlattforms.insert(.tvOS)
            } else {
                avaliabilities[.tvOS] = min...latest
            }
        }
        if let min = watchOSMin, let latest = latestOSVersions[.watchOS] {
            if let watchOSMax {
                avaliabilities[.watchOS] = min...watchOSMax
                deprecatedPlattforms.insert(.watchOS)
            } else {
                avaliabilities[.watchOS] = min...latest
            }
        }
        if let min = visionOSMin, let latest = latestOSVersions[.visionOS] {
            if let visionOSMax {
                avaliabilities[.visionOS] = min...visionOSMax
                deprecatedPlattforms.insert(.visionOS)
            } else {
                avaliabilities[.visionOS] = min...latest
            }
        }
        
        self.isDeprecated = true
    }
    
    public init(proVideoWorkFlowMin: Version? = nil,
                proVideoWorkFlowMax: Version? = nil,
                proVideoEncoderMin: Version? = nil,
                proVideoEncoderMax: Version? = nil) {
        if let min = proVideoWorkFlowMin, let latest = latestOSVersions[.proVideoWorkflowExtensions] {
            if let proVideoWorkFlowMax {
                avaliabilities[.proVideoWorkflowExtensions] = min...proVideoWorkFlowMax
                deprecatedPlattforms.insert(.proVideoWorkflowExtensions)
            } else {
                avaliabilities[.proVideoWorkflowExtensions] = min...latest
            }
        }
        
        if let min = proVideoEncoderMin, let latest = latestOSVersions[.proVideoEncoderExtensions] {
            if let proVideoEncoderMax {
                avaliabilities[.proVideoEncoderExtensions] = min...proVideoEncoderMax
                deprecatedPlattforms.insert(.proVideoEncoderExtensions)
            } else {
                avaliabilities[.proVideoEncoderExtensions] = min...latest
            }
        }
        
        self.isDeprecated = true
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
            deprecatedPlattforms.insert(.iOS)
        }
        if let iPadOS {
            avaliabilities[.iPadOS] = iPadOS
            deprecatedPlattforms.insert(.iPadOS)
        }
        if let macCatalyst {
            avaliabilities[.macCatalyst] = macCatalyst
            deprecatedPlattforms.insert(.macCatalyst)
        }
        if let macOS {
            avaliabilities[.macOS] = macOS
            deprecatedPlattforms.insert(.macOS)
        }
        if let watchOS {
            avaliabilities[.watchOS] = watchOS
            deprecatedPlattforms.insert(.watchOS)
        }
        if let tvOS {
            avaliabilities[.tvOS] = tvOS
            deprecatedPlattforms.insert(.tvOS)
        }
        if let visionOS {
            avaliabilities[.visionOS] = visionOS
            deprecatedPlattforms.insert(.visionOS)
        }
        
        self.isDeprecated = true
    }
    
    public init(proVideoWorkFlow: ClosedRange<Version>? = nil,
                proVideoEncoder: ClosedRange<Version>? = nil) {
        if let proVideoWorkFlow {
            avaliabilities[.proVideoWorkflowExtensions] = proVideoWorkFlow
            deprecatedPlattforms.insert(.proVideoWorkflowExtensions)
        }
        if let proVideoEncoder {
            avaliabilities[.proVideoEncoderExtensions] = proVideoEncoder
            deprecatedPlattforms.insert(.proVideoEncoderExtensions)
        }
        
        self.isDeprecated = false
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

