//
//  InfoPlist+CFBundleURLTypes.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 02.06.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct CFBundleURLTypesEntry: PlistEntry {
        
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
        
        // MARK: - Property List Keys
        
        /// - Parameter value: The app’s role with respect to the type.
        ///
        /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleurltypes/cfbundletyperole)
        static func CFBundleTypeRole(_ value: String) -> Self {
            Self(
                name: "Document Role",
                key: "CFBundleTypeRole",
                value: .string(value),
                availabilities: .init(
                    iOS: "2.0",
                    iPadOS: "2.0",
                    macOS: "10.0",
                    tvOS: "9.0",
                    watchOS: "2.0",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: The name of the icon image file, without the extension, to be used for this type.
        ///
        /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleurltypes/cfbundleurliconfile)
        static func CFBundleURLIconFile(_ value: String) -> Self {
            Self(
                name: "Document Icon File Name",
                key: "CFBundleURLIconFile",
                value: .string(value),
                availabilities: .init(
                    iOS: "2.0",
                    iPadOS: "2.0",
                    macOS: "10.0",
                    tvOS: "9.0",
                    watchOS: "2.0",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: The abstract name for this type.
        ///
        /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleurltypes/cfbundleurlname)
        static func CFBundleURLName(_ value: String) -> Self {
            Self(
                name: "URL identifier",
                key: "CFBundleURLName",
                value: .string(value),
                availabilities: .init(
                    iOS: "2.0",
                    iPadOS: "2.0",
                    macOS: "10.0",
                    tvOS: "9.0",
                    watchOS: "2.0",
                    visionOS: "1.0"

                ),
                isRequired: true
            )
        }
        
        /// - Parameter values: The URL schemes supported by this type.
        ///
        /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleurltypes/cfbundleurlschemes)
        static func CFBundleURLSchemes(_ values: [String]) -> Self {
            Self(
                name: "URL Schemes",
                key: "CFBundleURLSchemes",
                value: .array(values.map { .string($0) }),
                availabilities: .init(
                    iOS: "2.0",
                    iPadOS: "2.0",
                    macOS: "10.0",
                    tvOS: "9.0",
                    watchOS: "2.0",
                    visionOS: "1.0"
                )
            )
        }
        
    }
    
}
