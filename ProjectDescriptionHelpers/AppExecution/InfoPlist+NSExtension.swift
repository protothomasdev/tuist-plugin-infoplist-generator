//
//  InfoPlist+NSExtension.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 13.05.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct NSExtensionEntry: PlistEntry {
        
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
        
        // MARK: - Attributes
        
        /// - Parameter values: Properties of an app extension.
        ///
        /// Availability: iOS 8.0+, iPadOS 8.0+, macOS 10.10+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionattributes)
        static func NSExtensionAttributes(_ values: [NSExtensionAttributesEntry]) -> Self {
            Self.dict(
                name: nil,
                key: "NSExtensionAttributes",
                childEntries: values,
                availabilities: .init(
                    iOS: "8.0",
                    iPadOS: "8.0",
                    macOS: "10.10",
                    visionOS: "1.0"
                )
            )
        }
        
        // MARK: - Authentication
        
        /// - Parameter value: The rules the system satisfies when generating a strong password for your extension during an automatic upgrade.
        ///
        /// For more information about the format and content of this value, see [Customizing Password AutoFill rules](https://developer.apple.com/documentation/security/password_autofill/customizing_password_autofill_rules).
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/asaccountauthenticationmodificationpasswordgenerationrequirements)
        static func ASAccountAuthenticationModificationPasswordGenerationRequirements(_ value: String) -> Self {
            Self(
                name: nil,
                key: "ASAccountAuthenticationModificationPasswordGenerationRequirements",
                value: .string(value),
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: A Boolean value that indicates whether the extension supports upgrading a user’s password to a strong password.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/asaccountauthenticationmodificationsupportsstrongpasswordchange)
        static func ASAccountAuthenticationModificationSupportsStrongPasswordChange(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "ASAccountAuthenticationModificationSupportsStrongPasswordChange",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: A Boolean value that indicates whether the extension supports upgrading from using password authentication to using Sign in with Apple.
        ///
        /// Availability: iOS 14.0+, iPadOS 14.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/asaccountauthenticationmodificationsupportsupgradetosigninwithapple)
        static func ASAccountAuthenticationModificationSupportsUpgradeToSignInWithApple(_ value: Bool) -> Self {
            Self(
                name: nil,
                key: "ASAccountAuthenticationModificationSupportsUpgradeToSignInWithApple",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "14.0",
                    iPadOS: "14.0",
                    visionOS: "1.0"
                )
            )
        }
        
        // MARK: - File Provider
        
        /// - Parameter values: The custom actions for a File Provider extension.
        ///
        /// Availability: iOS 11.0+, iPadOS 11.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionfileprovideractions)
        static func NSExtensionFileProviderActions(_ values: [[NSExtensionFileProviderActionsEntry]]) -> Self {
            Self.dictArray(
                name: nil,
                key: "NSExtensionFileProviderActions",
                childEntries: values,
                availabilities: .init(
                    iOS: "11.0",
                    iPadOS: "11.0",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: The identifier of a shared container that can be accessed by a Document Picker extension and its associated File Provider extension.
        ///
        /// Availability: iOS 8.0+, iPadOS 8.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionfileproviderdocumentgroup)
        static func NSExtensionFileProviderDocumentGroup(_ value: String) -> Self {
            Self(
                name: "App group used for document storage",
                key: "NSExtensionFileProviderDocumentGroup",
                value: .string(value),
                availabilities: .init(
                    iOS: "8.0",
                    iPadOS: "8.0",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: A Boolean value that indicates whether a File Provider extension enumerates its content.
        ///
        /// Availability: iOS 11.0+, iPadOS 11.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionfileprovidersupportsenumeration)
        static func NSExtensionFileProviderSupportsEnumeration(_ value: Bool) -> Self {
            Self(
                name: "File Provider supports Enumeration",
                key: "NSExtensionFileProviderSupportsEnumeration",
                value: .boolean(value),
                availabilities: .init(
                    iOS: "11.0",
                    iPadOS: "11.0",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter value: The per-domain limit of concurrent calls that a file provider extension can make to fetch data from remote storage.
        ///
        /// Use this value to set the limit of concurrent calls to methods like [fetchContents(for:version:request:completionHandler:)](https://developer.apple.com/documentation/fileprovider/nsfileproviderreplicatedextension/3553303-fetchcontents). Set the value for this key to an integer in the range 1 to 128.
        ///
        /// Availability: macOS 11.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionfileproviderdownloadpipelinedepth)
        static func NSExtensionFileProviderDownloadPipelineDepth(_ value: Int) -> Self {
            Self(
                name: nil,
                key: "NSExtensionFileProviderDownloadPipelineDepth",
                value: .integer(value),
                availabilities: .init(
                    macOS: "11.0"
                )
            )
        }
        
        /// - Parameter value: The per-domain limit of concurrent calls that a file provider extension can make to upload data.
        ///
        /// Use this value to set the limit of concurrent calls to methods like [createItem(basedOn:fields:contents:options:request:completionHandler:)](https://developer.apple.com/documentation/fileprovider/nsfileproviderreplicatedextension/3656549-createitem) and [modifyItem(_:baseVersion:changedFields:contents:options:request:completionHandler:)](https://developer.apple.com/documentation/fileprovider/nsfileproviderreplicatedextension/3656552-modifyitem). Set the value for this key to an integer in the range 1 to 128.
        ///
        /// Availability: macOS 12.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/nsextensionfileprovideruploadpipelinedepth)
        static func NSExtensionFileProviderUploadPipelineDepth(_ value: Int) -> Self {
            Self(
                name: nil,
                key: "NSExtensionFileProviderUploadPipelineDepth",
                value: .integer(value),
                availabilities: .init(
                    macOS: "12.0"
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
        
        // MARK: - Professional Video Applications
        
        /// - Parameter values: A dictionary that specifies the minimum size of the floating window in which Final Cut Pro hosts the extension view.
        ///
        /// See [Set a Minimum Floating Window Size](https://developer.apple.com/documentation/professional_video_applications/workflow_extensions/designing_workflow_extensions#3571184).
        ///
        /// Availability: ProVideo Workflow Extensions 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/proextensionattributes)
        static func ProExtensionAttributes(_ values: [ProExtensionAttributesEntry]) -> Self {
            Self.dict(
                name: nil,
                key: "ProExtensionAttributes",
                childEntries: values,
                availabilities: .init(
                    proVideoWorkFlow: "1.0"
                )
            )
        }
        
        /// - Parameter value: The name of the class with the principal implementation of your extension.
        ///
        /// The Compressor app instantiates the class specified in the `ProExtensionPrincipalClass` key to convert source files to the output format your extension supports. Customize your extension code by adopting the following protocols in the implementation of this class:
        /// - [CompressorExtensionSettings](https://developer.apple.com/documentation/professional_video_applications/compressorextensionsettings)
        /// - [CompressorExtensionColorSpaces](https://developer.apple.com/documentation/professional_video_applications/compressorextensioncolorspaces)
        /// - [CompressorExtensionSettingsOptional](https://developer.apple.com/documentation/professional_video_applications/compressorextensionsettingsoptional)
        /// - [CompressorExtensionEncoder](https://developer.apple.com/documentation/professional_video_applications/compressorextensionencoder)
        ///
        /// Availability: ProVideo Workflow Extensions 1.0+, ProVideo Encoder Extensions 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/proextensionprincipalclass)
        static func ProExtensionPrincipalClass(_ value: String) -> Self {
            Self(
                name: nil,
                key: "ProExtensionPrincipalClass",
                value: .string(value),
                availabilities: .init(
                    proVideoWorkFlow: "1.0",
                    proVideoEncoder: "1.0"
                )
            )
        }
        
        /// - Parameter value: The name of the principal view controller class of your extension.
        ///
        /// This key provides the name of the primary view controller class of your extension that adopts the [NSViewController](https://developer.apple.com/documentation/appkit/nsviewcontroller) protocol. When you create an extension, the Xcode template automatically includes this key in the workflow extension information property list. You only modify the value of this key when you rename the primary view controller class in your extension.
        ///
        /// Availability: ProVideo Workflow Extensions 1.0+, ProVideo Encoder Extensions 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/proextensionprincipalviewcontrollerclass)
        static func ProExtensionPrincipalViewControllerClass(_ value: String) -> Self {
            Self(
                name: nil,
                key: "ProExtensionPrincipalViewControllerClass",
                value: .string(value),
                availabilities: .init(
                    proVideoWorkFlow: "1.0",
                    proVideoEncoder: "1.0"
                )
            )
        }
        
        /// - Parameter value: A UUID string that uniquely identifies your extension to the Compressor app.
        ///
        /// The value for this key is a placeholder UUID the Xcode template generates. Each extension must have a unique UUID. When you build an extension for the first time, the build script in the Xcode template replaces the placeholder UUID with a new UUID. The new UUID fulfills the uniqueness and persistence requirement for `ProExtensionUUID`. For subsequent rebuilds, the UUID stays the same because the Compressor app uses this UUID to differentiate between previously saved and newly discovered extensions.
        ///
        /// Availability: ProVideo Workflow Extensions 1.0+, ProVideo Encoder Extensions 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsextension/proextensionuuid)
        static func ProExtensionUUID(_ value: String) -> Self {
            Self(
                name: nil,
                key: "ProExtensionUUID",
                value: .string(value),
                availabilities: .init(
                    proVideoWorkFlow: "1.0",
                    proVideoEncoder: "1.0"
                )
            )
        }
        
        // MARK: - SafariServices
        
        
        
    }
    
}



extension InfoPlistEntry.InfoPlistValue {
    
    enum NSExtensionPointIdentifier: String {
        case uiServices = "com.apple.ui-services"
        case services = "com.apple.services"
        case keyboardService = "com.apple.keyboard-service"
        case fileproviderNonUI = "com.apple.fileprovider-nonui"
        case fileproviderActionsUI = "com.apple.fileprovider-actionsui"
        case finderSync = "com.apple.FinderSync"
        case identitylookupMessageFilter = "com.apple.identitylookup.message-filter"
        case photoEditing = "com.apple.photo-editing"
        case shareServices = "com.apple.share-services"
        case callkitCallDirectory = "com.apple.callkit.call-directory"
        case authenticationServicesAccountAuthenticationModificationUI = "com.apple.authentication-services-account-authentication-modification-ui"
        case audioUnitUI = "com.apple.AudioUnit-UI"
        case appSSOIDPExtension = "com.apple.AppSSO.idp-extension"
        case authenticationServicesCredentialProviderUI = "com.apple.authentication-services-credential-provider-ui"
        case broadcastServicesSetupUI = "com.apple.broadcast-services-setupui"
        case broadcastServicesUpload = "com.apple.broadcast-services-upload"
        case classkitContextProvider = "com.apple.classkit.context-provider"
        case safariContentBlocker = "com.apple.Safari.content-blocker"
        case messagePayloadProvider = "com.apple.message-payload-provider"
        case intentsService = "com.apple.intents-service"
        case intentsUIService = "com.apple.intents-ui-service"
        case networkextensionAppProxy = "com.apple.networkextension.app-proxy"
        case usernotificationsContentExtension = "com.apple.usernotifications.content-extension"
        case usernotificationsService = "com.apple.usernotifications.service"
        case ctkTokens = "com.apple.ctk-tokens"
        case photoProject = "com.apple.photo-project"
        case quicklookPreview = "com.apple.quicklook.preview"
        case SafariExtension = "com.apple.Safari.extension"
        case spotlightIndex = "com.apple.spotlight.index"
        case quicklookThumbnail = "com.apple.quicklook.thumbnail"
        case tvTopShelf = "com.apple.tv-top-shelf"
        case identitylookupClassificationUI = "com.apple.identitylookup.classification-ui"
        case widgetkitExtension = "com.apple.widgetkit-extension"
        case dtXcodeExtensionSourceEditor = "com.apple.dt.Xcode.extension.source-editor"
    }
    
}
