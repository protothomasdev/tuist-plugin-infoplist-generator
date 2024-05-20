//
//  InfoPlist+NSExtensionActivationRule.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 13.05.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct NSExtensionActivationRuleEntry: PlistEntry {
        
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
        
        // MARK: - Configuration
        
        /// - Parameter value: A Boolean value indicating whether strict or fuzzy matching is used when determining the asset types an app extension handles.
        ///
        /// Availability: iOS 9.0+, iPadOS 9.0+, macOS 10.11+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionactivationrule/nsextensionactivationusesstrictmatching)
        static func NSExtensionActivationUsesStrictMatching(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "NSExtensionActivationUsesStrictMatching",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "9.0",
                    iPadOS: "9.0",
                    macOS: "10.11",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: The version of the parent extension-activation rule dictionary.
        ///
        /// Availability: iOS 9.0+, iPadOS 9.0+, macOS 10.11+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionactivationrule/nsextensionactivationdictionaryversion)
        static func NSExtensionActivationDictionaryVersion(_ value: Int) -> Self {
            Self(
                name: nil,
                key: "NSExtensionActivationDictionaryVersion",
                value: .integer(value),
                availabilities: .init(
                    iOS: "9.0",
                    iPadOS: "9.0",
                    macOS: "10.11",
                    visionOS: "1.0"
                )
            )
        }
        
        // MARK: - Attachments
        
        /// - Parameter value: The minimum number of attachments that the app extension supports.
        ///
        /// Availability: iOS 8.0+, iPadOS 8.0+, macOS 10.10+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionactivationrule/nsextensionactivationsupportsattachmentswithmincount)
        static func NSExtensionActivationSupportsAttachmentsWithMinCount(_ value: Int) -> Self {
            Self(
                name: nil,
                key: "NSExtensionActivationSupportsAttachmentsWithMinCount",
                value: .integer(value),
                availabilities: .init(
                    iOS: "8.0",
                    iPadOS: "8.0",
                    macOS: "10.10",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: The maximum number of attachments that the app extension supports.
        ///
        /// Availability: iOS 8.0+, iPadOS 8.0+, macOS 10.10+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionactivationrule/nsextensionactivationsupportsattachmentswithmaxcount)
        static func NSExtensionActivationSupportsAttachmentsWithMaxCount(_ value: Int) -> Self {
            Self(
                name: nil,
                key: "NSExtensionActivationSupportsAttachmentsWithMaxCount",
                value: .integer(value),
                availabilities: .init(
                    iOS: "8.0",
                    iPadOS: "8.0",
                    macOS: "10.10",
                    visionOS: "1.0"
                )
            )
        }
        
        // MARK: - Files
        
        /// - Parameter value: The maximum number of all types of files that the app extension supports.
        ///
        /// Availability: iOS 8.0+, iPadOS 8.0+, macOS 10.10+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionactivationrule/nsextensionactivationsupportsfilewithmaxcount)
        static func NSExtensionActivationSupportsFileWithMaxCount(_ value: Int) -> Self {
            Self(
                name: nil,
                key: "NSExtensionActivationSupportsFileWithMaxCount",
                value: .integer(value),
                availabilities: .init(
                    iOS: "8.0",
                    iPadOS: "8.0",
                    macOS: "10.10",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: The maximum number of image files that the app extension supports.
        ///
        /// Availability: iOS 8.0+, iPadOS 8.0+, macOS 10.10+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionactivationrule/nsextensionactivationsupportsimagewithmaxcount)
        static func NSExtensionActivationSupportsImageWithMaxCount(_ value: Int) -> Self {
            Self(
                name: nil,
                key: "NSExtensionActivationSupportsImageWithMaxCount",
                value: .integer(value),
                availabilities: .init(
                    iOS: "8.0",
                    iPadOS: "8.0",
                    macOS: "10.10",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: The maximum number of movie files that the app extension supports.
        ///
        /// Availability: iOS 8.0+, iPadOS 8.0+, macOS 10.10+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionactivationrule/nsextensionactivationsupportsmoviewithmaxcount)
        static func NSExtensionActivationSupportsMovieWithMaxCount(_ value: Int) -> Self {
            Self(
                name: nil,
                key: "NSExtensionActivationSupportsMovieWithMaxCount",
                value: .integer(value),
                availabilities: .init(
                    iOS: "8.0",
                    iPadOS: "8.0",
                    macOS: "10.10",
                    visionOS: "1.0"
                )
            )
        }
        
        // MARK: - Text
        
        /// - Parameter value: A Boolean value indicating whether the app extension supports text.
        ///
        /// Availability: iOS 8.0+, iPadOS 8.0+, macOS 10.10+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionactivationrule/nsextensionactivationsupportstext)
        static func NSExtensionActivationSupportsText(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "NSExtensionActivationSupportsText",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "8.0",
                    iPadOS: "8.0",
                    macOS: "10.10",
                    visionOS: "1.0"
                )
            )
        }
        
        // MARK: - Web Content
        
        /// - Parameter value: The maximum number of webpages that the app extension supports.
        ///
        /// Availability: iOS 8.0+, iPadOS 8.0+, macOS 10.10+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionactivationrule/nsextensionactivationsupportswebpagewithmaxcount)
        static func NSExtensionActivationSupportsWebPageWithMaxCount(_ value: Int) -> Self {
            Self(
                name: nil,
                key: "NSExtensionActivationSupportsWebPageWithMaxCount",
                value: .integer(value),
                availabilities: .init(
                    iOS: "8.0",
                    iPadOS: "8.0",
                    macOS: "10.10",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: The maximum number of HTTP URLs that the app extension supports.
        ///
        /// Availability: iOS 8.0+, iPadOS 8.0+, macOS 10.10+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionactivationrule/nsextensionactivationsupportsweburlwithmaxcount)
        static func NSExtensionActivationSupportsWebURLWithMaxCount(_ value: Int) -> Self {
            Self(
                name: nil,
                key: "NSExtensionActivationSupportsWebURLWithMaxCount",
                value: .integer(value),
                availabilities: .init(
                    iOS: "8.0",
                    iPadOS: "8.0",
                    macOS: "10.10",
                    visionOS: "1.0"
                )
            )
        }
        
    }
    
}
