//
//  InfoPlist+UTImportedTypeDeclarations.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 02.06.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct UTImportedTypeDeclarationsEntry: PlistEntry {
        
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
        
        /// - Parameter values: The Uniform Type Identifier types that this type conforms to.
        ///
        /// Availability: iOS 3.2+, iPadOS 3.2+, macOS 10.5+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/utimportedtypedeclarations/uttypeconformsto)
        static func UTTypeConformsTo(_ values: [String]) -> Self {
            Self(
                name: "Conforms to UTIs",
                key: "UTTypeConformsTo",
                value: .array(values.map { .string($0) }),
                availabilities: .init(
                    iOS: "3.2",
                    iPadOS: "3.2",
                    macOS: "10.5",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: A description for this type.
        ///
        /// Availability: iOS 3.2+, iPadOS 3.2+, macOS 10.5+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/utimportedtypedeclarations/uttypedescription)
        static func UTTypeDescription(_ value: String) -> Self {
            Self(
                name: "Description",
                key: "UTTypeDescription",
                value: .string(value),
                availabilities: .init(
                    iOS: "3.2",
                    iPadOS: "3.2",
                    macOS: "10.5",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: The bundle icon resource to associate with this type.
        ///
        /// Availability: iOS 3.2+, iPadOS 3.2+, macOS 10.5+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/utimportedtypedeclarations/uttypeiconfile)
        static func UTTypeIconFile(_ value: String) -> Self {
            Self(
                name: "Icon file name",
                key: "UTTypeIconFile",
                value: .string(value),
                availabilities: .init(
                    iOS: "3.2",
                    iPadOS: "3.2",
                    macOS: "10.5",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter values: One or more bundle icon resources to associate with this type.
        ///
        /// Availability: iOS 3.2+, iPadOS 3.2+, macOS 10.5+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/utimportedtypedeclarations/uttypeiconfiles)
        static func UTTypeIconFiles(_ values: [String]) -> Self {
            Self(
                name: "Icon file names",
                key: "UTTypeIconFiles",
                value: .array(values.map { .string($0) }),
                availabilities: .init(
                    iOS: "3.2",
                    iPadOS: "3.2",
                    macOS: "10.5",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: The Uniform Type Identifier to assign to this type.
        ///
        /// Availability: iOS 3.2+, iPadOS 3.2+, macOS 10.5+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/utimportedtypedeclarations/uttypeidentifier)
        static func UTTypeIdentifier(_ value: String) -> Self {
            Self(
                name: "Identifier",
                key: "UTTypeIdentifier",
                value: .string(value),
                availabilities: .init(
                    iOS: "3.2",
                    iPadOS: "3.2",
                    macOS: "10.5",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: The webpage for a reference document that describes this type.
        ///
        /// Availability: iOS 3.2+, iPadOS 3.2+, macOS 10.5+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/utimportedtypedeclarations/uttypereferenceurl)
        static func UTTypeReferenceURL(_ value: String) -> Self {
            Self(
                name: "Reference URL",
                key: "UTTypeReferenceURL",
                value: .string(value),
                availabilities: .init(
                    iOS: "3.2",
                    iPadOS: "3.2",
                    macOS: "10.5",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: A dictionary defining one or more equivalent type identifiers.
        ///
        /// Availability: iOS 3.2+, iPadOS 3.2+, macOS 10.5+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/utimportedtypedeclarations/uttypetagspecification)
        static func UTTypeTagSpecification(_ values: [String: String]) -> Self {
            var valueDict: [String: Plist.Value] = [:]
            for (key, value) in values {
                valueDict[key] = .string(value)
            }
            return Self(
                name: "Equivalent Types",
                key: "UTTypeTagSpecification",
                value: .dictionary(valueDict),
                availabilities: .init(
                    iOS: "3.2",
                    iPadOS: "3.2",
                    macOS: "10.5",
                    visionOS: "1.0"
                )
            )
        }
        
    }
    
}
