//
//  InfoPlist+NSExtensionAttributes.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 14.05.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct NSExtensionAttributesEntry: PlistEntry {
        
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
        
        // MARK: - Appearance and Presentation
        
        /// - Parameter value: A Boolean value indicating whether the Action extension is presented in full screen.
        ///
        /// Availability: iOS 8.0+, iPadOS 8.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionactionwantsfullscreenpresentation)
        static func NSExtensionActionWantsFullScreenPresentation(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "NSExtensionActionWantsFullScreenPresentation",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "8.0",
                    iPadOS: "8.0",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: The name of the app extension’s main storyboard file.
        ///
        /// This key is mutually exclusive with [NSExtensionPrincipalClass](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionprincipalclass). Typically, Xcode sets the value of this key when creating an App Extension target in your project. If you change the name of your storyboard file, remember to update the value of this key.
        ///
        /// - Important: If the app extension’s `Info.plist` file contains both keys, the system won’t load the extension.
        ///
        /// Availability: iOS 8.0+, iPadOS 8.0+, macOS 10.10+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionmainstoryboard)
        static func NSExtensionMainStoryboard(_ value: String) -> Self {
            Self(
                name: nil,
                key: "NSExtensionMainStoryboard",
                value: .string(value),
                availabilities: .init(
                    iOS: "8.0",
                    iPadOS: "8.0",
                    macOS: "10.10",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: A Boolean value indicating whether the app extension ignores appearance changes made by the host app.
        ///
        /// Availability: iOS 10.0+, iPadOS 10.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionoverrideshostuiappearance)
        static func NSExtensionOverridesHostUIAppearance(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "NSExtensionOverridesHostUIAppearance",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "10.0",
                    iPadOS: "10.0",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: The extension point that supports an app extension.
        ///
        /// Availability: iOS 8.0+, iPadOS 8.0+, macOS 10.10+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionpointidentifier)
        static func NSExtensionPointIdentifier(_ value: InfoPlistValue.NSExtensionPointIdentifier) -> Self {
            Self(
                name: nil,
                key: "NSExtensionPointIdentifier",
                value: .string(value.rawValue),
                availabilities: .init(
                    iOS: "8.0",
                    iPadOS: "8.0",
                    macOS: "10.10",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: The custom class that implements an app extension’s primary view or functionality.
        ///
        /// This key is mutually exclusive with [NSExtensionMainStoryboard](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionmainstoryboard). Typically, Xcode sets the value of this key when creating an App Extension target in your project. If you change the name of the specified class, remember to update the value of this key.
        ///
        /// - Important: If the app extension’s `Info.plist` file contains both keys, the system won’t load the extension.
        ///
        /// Availability: iOS 8.0+, iPadOS 8.0+, macOS 10.10+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionprincipalclass)
        static func NSExtensionPrincipalClass(_ value: String) -> Self {
            Self(
                name: nil,
                key: "NSExtensionPrincipalClass",
                value: .string(value),
                availabilities: .init(
                    iOS: "8.0",
                    iPadOS: "8.0",
                    macOS: "10.10",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter values: The semantic data types that a Share or Action extension supports.
        ///
        /// Availability: iOS 8.0+, iPadOS 8.0+, macOS 10.10+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionactivationrule)
        static func NSExtensionActivationRule(_ values: [NSExtensionActivationRuleEntry]) -> Self {
            Self.dict(
                name: nil,
                key: "NSExtensionActivationRule",
                childEntries: values,
                availabilities: .init(
                    iOS: "8.0",
                    iPadOS: "8.0",
                    macOS: "10.10",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: The name of a JavaScript file supplied by a Share or Action extension.
        ///
        /// Availability: iOS 8.0+, iPadOS 8.0+, macOS 10.10+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionjavascriptpreprocessingfile)
        static func NSExtensionJavaScriptPreprocessingFile(_ value: String) -> Self {
            Self(
                name: nil,
                key: "NSExtensionJavaScriptPreprocessingFile",
                value: .string(value),
                availabilities: .init(
                    iOS: "8.0",
                    iPadOS: "8.0",
                    macOS: "10.10",
                    visionOS: "1.0"
                )
            )
        }
        
        // MARK: - Core Spotlight
        
        /// Availability: iOS 15.0+, iPadOS 15.0, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/cssupportedcontenttypes)
        static func CSSupportedContentTypes(_ values: [String]) -> Self {
            Self(
                name: nil,
                key: "CSSupportedContentTypes",
                value: .array(values.map { .string($0) }),
                availabilities: .init(
                    iOS: "15.0",
                    iPadOS: "15.0",
                    visionOS: "1.0"
                )
            )
        }
        
        // MARK: - Credential providers
        
        /// - Parameter values: The credential types supported by a credential provider extension, and whether it presents a user interface.
        ///
        /// Availability: iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/ascredentialproviderextensioncapabilities)
        static func ASCredentialProviderExtensionCapabilities(_ values: [ASCredentialProviderExtensionCapabilitiesEntry]) -> Self {
            Self.dict(
                name: nil,
                key: "ASCredentialProviderExtensionCapabilities",
                childEntries: values,
                availabilities: .init(
                    iOS: "17.0",
                    iPadOS: "17.0",
                    macCatalyst: "17.0",
                    macOS: "14.0"
                )
            )
        }
        
        // MARK: - Intents
        
        /// - Parameter values: The names of the intents that an extension supports.
        ///
        /// Availability: iOS 10.0+, iPadOS 10.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/intentssupported)
        static func IntentsSupported(_ values: [String]) -> Self {
            Self(
                name: nil,
                key: "IntentsSupported",
                value: .array(values.map { .string($0) }),
                availabilities: .init(
                    iOS: "10.0",
                    iPadOS: "10.0",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: Types of media supported by an app extension’s media-playing intents.
        ///
        /// Specify one or more media categories to allow Siri to invoke your app’s intent handling when a user asks to play media. Use `INMediaCategoryGeneral` for media that doesn’t fit into any of the other categories, like white noise or sound effects.
        ///
        /// To specify this information in Xcode, add [INPlayMediaIntent](https://developer.apple.com/documentation/sirikit/inplaymediaintent) to your extension’s list of Supported Intents. Then select the relevant media types in the list that appears.
        ///
        /// Availability: iOS 13.0+, iPadOS 13.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/supportedmediacategories)
        static func SupportedMediaCategories(_ values: [InfoPlistValue.SupportedMediaCategories]) -> Self {
            Self(
                name: nil,
                key: "SupportedMediaCategories",
                value: .array(values.map { .string($0.rawValue) }),
                availabilities: .init(
                    iOS: "13.0",
                    iPadOS: "13.0",
                    visionOS: "1.0"
                )
            )
        }
        
        // MARK: - Mail
        
        /// Availability: macOS 12.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/mecomposesession)
        static func MEComposeSession(_ values: [MEComposeSessionEntry]) -> Self {
            Self.dict(
                name: nil,
                key: "MEComposeSession",
                childEntries: values,
                availabilities: .init(
                    macOS: "12.0"
                )
            )
        }
        
        /// Availability: macOS 12.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/meextensioncapabilities)
        static func MEExtensionCapabilities(_ values: [InfoPlistValue.MEExtensionCapabilities]) -> Self {
            Self(
                name: nil,
                key: "MEExtensionCapabilities",
                value: .array(values.map { .string($0.rawValue) }),
                availabilities: .init(
                    macOS: "12.0"
                )
            )
        }
        
        // MARK: - Photos
        
        /// - Parameter value: A Boolean value indicating whether the Photos app gets a list of supported project types from an extension.
        ///
        /// Availability: macOS 10.14+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/phprojectextensiondefinesprojecttypes)
        static func PHProjectExtensionDefinesProjectTypes(_ value: Bool) -> Self {
            Self(
                name: "Extension defines custom project types",
                key: "PHProjectExtensionDefinesProjectTypes",
                value: .boolean(value),
                availabilities: .init(
                    macOS: "10.14"
                )
            )
        }
        
        /// - Parameter values: The types of assets a Photo Editing extension can edit.
        ///
        /// Availability: iOS 8.0+, iPadOS 8.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/phsupportedmediatypes)
        static func PHSupportedMediaTypes(_ values: [InfoPlistValue.PHSupportedMediaTypes]) -> Self {
            Self(
                name: nil,
                key: "PHSupportedMediaTypes",
                value: .array(values.map { .string($0.rawValue) }),
                availabilities: .init(
                    iOS: "8.0",
                    iPadOS: "8.0"
                )
            )
        }
        
        // MARK: - Quick Actions
        
        /// - Parameter value: A Boolean value indicating whether the extension appears in the Finder Preview pane and Quick Actions menu.
        ///
        /// Availability: macOS 10.14+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionserviceallowsfinderpreviewitem)
        static func NSExtensionServiceAllowsFinderPreviewItem(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "NSExtensionServiceAllowsFinderPreviewItem",
                value: .boolean(value),
                availabilities: .init(
                    macOS: "10.14"
                )
            )
        }
        
        /// - Parameter value: The name of an icon for display when the extension appears in the Finder Preview pane and Quick Actions menu.
        ///
        /// This key is used in conjunction with the [NSExtensionServiceAllowsFinderPreviewItem](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionserviceallowsfinderpreviewitem) key.
        ///
        /// Set the `NSExtensionServiceFinderPreviewIconName` key's value to a system icon name or the name of an icon in the extension bundle. This icon should be a *emplate image*: a monochromatic image with transparency, anti-aliasing, and no drop shadow that uses a mask to define its shape. For design guidance, see [Human Interface Guidelines > macOS > Custom Icons](https://developer.apple.com/design/human-interface-guidelines/macos/icons-and-images/custom-icons/). If no icon is specified, a default icon is used.
        ///
        /// Availability: macOS 10.14+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionservicefinderpreviewiconname)
        static func NSExtensionServiceFinderPreviewIconName(_ value: String) -> Self {
            Self(
                name: nil,
                key: "NSExtensionServiceFinderPreviewIconName",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.14"
                )
            )
        }
        
        /// - Parameter value: A name for display when the extension appears in the Finder Preview pane and Quick Actions menu.
        ///
        /// This key is used in conjunction with the [NSExtensionServiceAllowsFinderPreviewItem](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionserviceallowsfinderpreviewitem) key.
        ///
        /// If the `NSExtensionServiceFinderPreviewLabel` key isn't provided, the extension's display name is used.
        ///
        /// Availability: macOS 10.14+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionservicefinderpreviewlabel)
        static func NSExtensionServiceFinderPreviewLabel(_ value: String) -> Self {
            Self(
                name: nil,
                key: "NSExtensionServiceFinderPreviewLabel",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.14"
                )
            )
        }
        
        /// - Parameter value: The type of task an Action extension performs.
        ///
        /// Availability: macOS 10.10+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionserviceroletype)
        static func NSExtensionServiceRoleType(_ value: InfoPlistValue.NSExtensionServiceRoleType) -> Self {
            Self(
                name: nil,
                key: "NSExtensionServiceRoleType",
                value: .string(value.rawValue),
                availabilities: .init(
                    macOS: "10.10"
                )
            )
        }
        
        // MARK: - Toolbar
        
        /// - Parameter value: A Boolean value indicating whether an Action extension displays an item in a window’s toolbar.
        ///
        /// Availability: macOS 10.10+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionserviceallowstoolbaritem)
        static func NSExtensionServiceAllowsToolbarItem(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "NSExtensionServiceAllowsToolbarItem",
                value: .boolean(value),
                availabilities: .init(
                    macOS: "10.10"
                )
            )
        }
        
        /// - Parameter value: The image for an Action extension’s toolbar item.
        ///
        /// Availability: macOS 10.10+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionservicetoolbariconfile)
        static func NSExtensionServiceToolbarIconFile(_ value: String) -> Self {
            Self(
                name: nil,
                key: "NSExtensionServiceToolbarIconFile",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.10"
                )
            )
        }
        
        /// - Parameter value: The label for an Action extension's toolbar item.
        ///
        /// Availability: macOS 10.10+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionservicetoolbarpalettelabel)
        static func NSExtensionServiceToolbarPaletteLabel(_ value: String) -> Self {
            Self(
                name: nil,
                key: "NSExtensionServiceToolbarPaletteLabel",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.10"
                )
            )
        }
        
        // MARK: - Touch Bar
        
        /// - Parameter value: A Boolean value indicating whether the extension appears as a Quick Action in the Touch Bar.
        ///
        /// Availability: macOS 10.14+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionserviceallowstouchbaritem)
        static func NSExtensionServiceAllowsTouchBarItem(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "NSExtensionServiceAllowsTouchBarItem",
                value: .boolean(value),
                availabilities: .init(
                    macOS: "10.14"
                )
            )
        }
        
        /// - Parameter value: The color to use for the bezel around the extension when it appears as a Quick Action in the Touch Bar.
        ///
        /// This key is used in conjunction with the [NSExtensionServiceAllowsTouchBarItem](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionserviceallowstouchbaritem) key.
        ///
        /// Set the `NSExtensionServiceTouchBarBezelColorName` key's value to the name of a color that exists in your extension's asset catalog—a color that matches a system color is recommended. If no color is specified, a default color is used.
        ///
        /// Availability: macOS 10.14+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionservicetouchbarbezelcolorname)
        static func NSExtensionServiceTouchBarBezelColorName(_ value: String) -> Self {
            Self(
                name: nil,
                key: "NSExtensionServiceTouchBarBezelColorName",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.14"
                )
            )
        }
        
        /// - Parameter value: The name of an icon for display when the extension appears as a Quick Action in the Touch Bar
        ///
        /// This key is used in conjunction with the [NSExtensionServiceAllowsTouchBarItem](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionserviceallowstouchbaritem) key.
        ///
        /// Set the `NSExtensionServiceTouchBarIconName` key's value to a system icon name or the name of an icon within the extension bundle. This icon should be a *template image*: a monochromatic image with transparency, anti-aliasing, and no drop shadow that uses a mask to define its shape. For design guidance, see [Human Interface Guidelines > macOS > Custom Icons](https://developer.apple.com/design/human-interface-guidelines/macos/icons-and-images/custom-icons/). If no icon is specified, a default icon is used.
        ///
        /// Availability: macOS 10.14+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionservicetouchbariconname)
        static func NSExtensionServiceTouchBarIconName(_ value: String) -> Self {
            Self(
                name: nil,
                key: "NSExtensionServiceTouchBarIconName",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.14"
                )
            )
        }
        
        /// - Parameter value: A name for display when the extension appears as a Quick Action in the Touch Bar.
        ///
        /// This key is used in conjunction with the [NSExtensionServiceAllowsTouchBarItem](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionserviceallowstouchbaritem) key.
        ///
        /// If the `NSExtensionServiceTouchBarLabel` key isn't provided, the extension's display name is used.
        ///
        /// Availability: macOS 10.14+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/nsextensionservicetouchbarlabel)
        static func NSExtensionServiceTouchBarLabel(_ value: String) -> Self {
            Self(
                name: nil,
                key: "NSExtensionServiceTouchBarLabel",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.14"
                )
            )
        }
        
        // MARK: - UIKit
        
        /// - Parameter value: The server that a Message Filter app extension may defer a query to.
        ///
        /// Availability: iOS 11.0+, iPadOS 11.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/idmessagefilterextensionnetworkurl)
        static func IDMessageFilterExtensionNetworkURL(_ value: String) -> Self {
            Self(
                name: nil,
                key: "IDMessageFilterExtensionNetworkURL",
                value: .string(value),
                availabilities: .init(
                    iOS: "11.0",
                    iPadOS: "11.0"
                )
            )
        }
        
        /// - Parameter value: The phone number that receives SMS messages when the user reports an SMS message or a call.
        ///
        /// Availability: iOS 12.0+, iPadOS 12.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/ilclassificationextensionsmsreportdestination)
        static func ILClassificationExtensionSMSReportDestination(_ value: String) -> Self {
            Self(
                name: nil,
                key: "ILClassificationExtensionSMSReportDestination",
                value: .string(value),
                availabilities: .init(
                    iOS: "12.0",
                    iPadOS: "12.0"
                )
            )
        }
        
        /// - Parameter value: A Boolean value indicating whether a custom keyboard displays standard ASCII characters.
        ///
        /// Availability: iOS 8.0+, iPadOS 8.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/isasciicapable)
        static func IsASCIICapable(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "IsASCIICapable",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "8.0",
                    iPadOS: "8.0"
                )
            )
        }
        
        /// - Parameter values: The contexts that an iMessage app or sticker pack supports.
        ///
        /// Availability: iOS 12.0+, iPadOS 12.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/msmessagesapppresentationcontextmessages)
        static func MSMessagesAppPresentationContextMessages(_ values: [InfoPlistValue.MSMessagesAppPresentationContextMessages]) -> Self {
            Self(
                name: nil,
                key: "MSMessagesAppPresentationContextMessages",
                value: .array(values.map { .string($0.rawValue) }),
                availabilities: .init(
                    iOS: "12.0",
                    iPadOS: "12.0"
                )
            )
        }
        
        /// - Parameter value: A Boolean value indicating whether a keyboard extension supports right-to-left languages.
        ///
        /// Availability: iOS 8.0+, iPadOS 8.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/prefersrighttoleft)
        static func PrefersRightToLeft(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "PrefersRightToLeft",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "8.0",
                    iPadOS: "8.0"
                )
            )
        }
        
        /// - Parameter value: The primary language for a keyboard extension.
        ///
        /// Availability: iOS 8.0+, iPadOS 8.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/primarylanguage)
        static func PrimaryLanguage(_ value: String) -> Self {
            Self(
                name: nil,
                key: "PrimaryLanguage",
                value: .string(value),
                availabilities: .init(
                    iOS: "8.0",
                    iPadOS: "8.0"
                )
            )
        }
        
        /// - Parameter value: A Boolean value indicating whether a custom keyboard uses a shared container and accesses the network.
        ///
        /// Availability: iOS 8.0+, iPadOS 8.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/requestsopenaccess)
        static func RequestsOpenAccess(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "RequestsOpenAccess",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "8.0",
                    iPadOS: "8.0"
                )
            )
        }
        
        /// - Parameter values: The modes that a Document Picker extension supports.
        ///
        /// Availability: iOS 8.0+, iPadOS 8.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/uidocumentpickermodes)
        static func UIDocumentPickerModes(_ values: [InfoPlistValue.UIDocumentPickerModes]) -> Self {
            Self(
                name: nil,
                key: "UIDocumentPickerModes",
                value: .array(values.map { .string($0.rawValue) }),
                availabilities: .init(
                    iOS: "8.0",
                    iPadOS: "8.0"
                )
            )
        }
        
        /// - Parameter values: The Uniform Type Identifiers that a document picker extension supports.
        ///
        /// Availability: iOS 8.0+, iPadOS 8.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/uidocumentpickersupportedfiletypes)
        static func UIDocumentPickerSupportedFileTypes(_ values: [String]) -> Self {
            Self(
                name: nil,
                key: "UIDocumentPickerSupportedFileTypes",
                value: .array(values.map { .string($0) }),
                availabilities: .init(
                    iOS: "8.0",
                    iPadOS: "8.0"
                )
            )
        }
        
        /// - Parameter value: The identifier of a category declared by the app extension.
        ///
        /// Availability: iOS 10.0+, iPadOS 10.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/unnotificationextensioncategory)
        static func UNNotificationExtensionCategory(_ value: String) -> Self {
            Self(
                name: nil,
                key: "UNNotificationExtensionCategory",
                value: .string(value),
                availabilities: .init(
                    iOS: "10.0",
                    iPadOS: "10.0"
                )
            )
        }
        
        /// - Parameter value: A Boolean value indicating whether only the app extension's custom view controller is displayed in the notification interface.
        ///
        /// Availability: iOS 10.0+, iPadOS 10.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/unnotificationextensiondefaultcontenthidden)
        static func UNNotificationExtensionDefaultContentHidden(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "UNNotificationExtensionDefaultContentHidden",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "10.0",
                    iPadOS: "10.0"
                )
            )
        }
        
        /// - Parameter value: The initial size of the view controller's view for an app extension, expressed as a ratio of its height to its width.
        ///
        /// Availability: iOS 10.0+, iPadOS 10.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/unnotificationextensioninitialcontentsizeratio)
        static func UNNotificationExtensionInitialContentSizeRatio(_ value: Double) -> Self {
            Self(
                name: nil,
                key: "UNNotificationExtensionInitialContentSizeRatio",
                value: .real(value),
                availabilities: .init(
                    iOS: "10.0",
                    iPadOS: "10.0"
                )
            )
        }
        
        /// - Parameter value: A Boolean value indicating whether the title of the app extension's view controller is used as the title of the notification.
        ///
        /// Availability: iOS 10.0+, iPadOS 10.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/unnotificationextensionoverridesdefaulttitle)
        static func UNNotificationExtensionOverridesDefaultTitle(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "UNNotificationExtensionOverridesDefaultTitle",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "10.0",
                    iPadOS: "10.0"
                )
            )
        }
        
        /// - Parameter value: A Boolean value indicating whether user interactions in a custom notification are enabled.
        ///
        /// Availability: iOS 12.0+, iPadOS 12.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes/unnotificationextensionuserinteractionenabled)
        static func UNNotificationExtensionUserInteractionEnabled(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "UNNotificationExtensionUserInteractionEnabled",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "12.0",
                    iPadOS: "12.0"
                )
            )
        }
        
    }
    
}

extension InfoPlistEntry.InfoPlistValue {
    
    enum SupportedMediaCategories: String {
        /// Audiobooks
        case INMediaCategoryAudiobooks
        /// Music
        case INMediaCategoryMusic
        /// General
        case INMediaCategoryGeneral
        /// Podcasts
        case INMediaCategoryPodcasts
        /// Radio
        case INMediaCategoryRadio
    }
    
    enum MEExtensionCapabilities: String {
        case MEComposeSessionHandler
        case MEMessageActionHandler
        case MEContentBlocker
        case MEMessageSecurityHandler
    }
    
    enum PHSupportedMediaTypes: String {
        case Image
        case Video
    }
    
    enum NSExtensionServiceRoleType: String {
        case NSExtensionServiceRoleTypeEditor
        case NSExtensionServiceRoleTypeViewer
    }
    
    enum MSMessagesAppPresentationContextMessages: String {
        case MSMessagesAppPresentationContextMessages
        case MSMessagesAppPresentationContextMedia
    }
    
    enum UIDocumentPickerModes: String {
        case UIDocumentPickerModeImport
        case UIDocumentPickerModeOpen
        case UIDocumentPickerModeExportToService
        case UIDocumentPickerModeMoveToService
    }
    
}
