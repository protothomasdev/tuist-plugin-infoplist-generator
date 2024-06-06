//
//  InfoPlist+CFBundleDocumentTypes.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 02.06.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct CFBundleDocumentTypesEntry: PlistEntry {
        
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
        
        /// - Parameter value: The icon to associate with the document type.
        ///
        /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundledocumenttypes/cfbundletypeiconfile)
        static func CFBundleTypeIconFile(_ value: String) -> Self {
            Self(
                name: "Icon File Name",
                key: "CFBundleTypeIconFile",
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
        
        /// - Parameter value: The abstract name for the document type.
        ///
        /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundledocumenttypes/cfbundletypename)
        static func CFBundleTypeName(_ value: String) -> Self {
            Self(
                name: "Document Type Name",
                key: "CFBundleTypeName",
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
        
        /// - Parameter value: The app's role with respect to the document type.
        ///
        /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundledocumenttypes/cfbundletyperole)
        static func CFBundleTypeRole(_ value: InfoPlistValue.CFBundleTypeRoleValue) -> Self {
            Self(
                name: "Role",
                key: "CFBundleTypeRole",
                value: .string(value.rawValue),
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
        
        /// - Parameter value: The ranking of this app among apps that declare themselves as editors or viewers of the given file type.
        ///
        /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundledocumenttypes/lshandlerrank)
        static func LSHandlerRank(_ value: InfoPlistValue.LSHandlerRankValue) -> Self {
            Self(
                name: "Handler rank",
                key: "LSHandlerRank",
                value: .string(value.rawValue),
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
        
        /// - Parameter values: The document file types the app supports.
        ///
        /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundledocumenttypes/lsitemcontenttypes)
        static func LSItemContentTypes(_ values: [String]) -> Self {
            Self(
                name: "Document Content Type UTIs",
                key: "LSItemContentTypes",
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
        
        /// - Parameter value: A Boolean value indicating whether the document is distributed as a bundle.
        ///
        /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundledocumenttypes/lstypeispackage)
        static func LSTypeIsPackage(_ value: Bool) -> Self {
            Self(
                name: "Document is a package or bundle",
                key: "LSTypeIsPackage",
                value: .boolean(value),
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
        
        /// - Parameter value: The subclass used to create instances of this document.
        ///
        /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundledocumenttypes/nsdocumentclass)
        static func NSDocumentClass(_ value: String) -> Self {
            Self(
                name: "Cocoa NSDocument Class",
                key: "NSDocumentClass",
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
        
        /// - Parameter values: The file types that this document can be exported to.
        ///
        /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundledocumenttypes/nsexportabletypes)
        static func NSExportableTypes(_ values: [String]) -> Self {
            Self(
                name: "Exportable Type UTIs",
                key: "NSExportableTypes",
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

extension InfoPlistEntry.InfoPlistValue {
    
    enum CFBundleTypeRoleValue: String {
        case Editor
        case Viewer
        case Shell
        case QLGenerator
        case None
    }
    
    enum LSHandlerRankValue: String {
        case Owner
        case Default
        case Alternate
        case None
    }
    
}
