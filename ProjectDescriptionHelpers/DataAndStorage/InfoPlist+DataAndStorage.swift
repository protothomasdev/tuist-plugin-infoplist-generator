//
//  InfoPlist+DataAndStorage.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 02.06.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    // MARK: - Documents
    
    /// - Parameter values: The document types supported by the bundle.
    ///
    /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundledocumenttypes)
    static func CFBundleDocumentTypes(_ values: [[CFBundleDocumentTypesEntry]]) -> Self {
        Self.dictArray(
            name: "Document types",
            key: "CFBundleDocumentTypes",
            childEntries: values,
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
    
    /// - Parameter value: A Boolean value indicating whether the app is a document-based app.
    ///
    /// To allow other apps to open and edit the files stored in your app’s Documents folder, set this key to `YES`. This key also lets users set the app’s default save location in Settings.
    ///
    /// Availability: iOS 11.0+, iPadOS 11.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uisupportsdocumentbrowser)
    static func UISupportsDocumentBrowser(_ value: Bool) -> Self {
        Self(
            name: "Supports Document Browser",
            key: "UISupportsDocumentBrowser",
            value: .boolean(value),
            availabilities: .init(
                iOS: "11.0",
                iPadOS: "11.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value indicating whether the app may open the original document from a file provider, rather than a copy of the document.
    ///
    /// Availability: iOS 12.0+, iPadOS 12.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/lssupportsopeningdocumentsinplace)
    static func LSSupportsOpeningDocumentsInPlace(_ value: Bool) -> Self {
        Self(
            name: "Supports opening documents in place",
            key: "LSSupportsOpeningDocumentsInPlace",
            value: .boolean(value),
            availabilities: .init(
                iOS: "12.0",
                iPadOS: "12.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value that indicates whether the system should download documents before handing them over to the app.
    ///
    /// By default, the system displays the download progress. Set the value to `YES` if you want your app to display a custom download progress indicator instead.
    ///
    /// Availability: macOS 11.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsdownloadsubiquitouscontents)
    static func NSDownloadsUbiquitousContents(_ value: Bool) -> Self {
        Self(
            name: nil,
            key: "NSDownloadsUbiquitousContents",
            value: .boolean(value),
            availabilities: .init(
                macOS: "11.0"
            )
        )
    }
    
    // MARK: - URL schemes
    
    /// - Parameter values: A list of URL schemes (http, ftp, and so on) supported by the app.
    ///
    /// Availability: iOS 2.0+, iPadOS 2.0+, macOS 10.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleurltypes)
    static func CFBundleURLTypes(_ values: [[CFBundleURLTypesEntry]]) -> Self {
        Self.dictArray(
            name: "URL types",
            key: "CFBundleURLTypes",
            childEntries: values,
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
    
    // MARK: - Universal type identifiers
    
    /// - Parameter values: The uniform type identifiers owned and exported by the app.
    ///
    /// Availability: iOS 5.0+, iPadOS 5.0+, macOS 10.7+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/utexportedtypedeclarations)
    static func UTExportedTypeDeclarations(_ values: [[UTExportedTypeDeclarationsEntry]]) -> Self {
        Self.dictArray(
            name: "Exported Type UTIs",
            key: "UTExportedTypeDeclarations",
            childEntries: values,
            availabilities: .init(
                iOS: "5.0",
                iPadOS: "5.0",
                macOS: "10.7",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter values: The uniform type identifiers inherently supported, but not owned, by the app.
    ///
    /// Availability: iOS 3.2+, iPadOS 3.2+, macOS 10.5+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/utimportedtypedeclarations)
    static func UTImportedTypeDeclarations(_ values: [[UTImportedTypeDeclarationsEntry]]) -> Self {
        Self.dictArray(
            name: "Imported Type UTIs",
            key: "UTImportedTypeDeclarations",
            childEntries: values,
            availabilities: .init(
                iOS: "3.2",
                iPadOS: "3.2",
                macOS: "10.5",
                visionOS: "1.0"
            )
        )
    }
    
    // MARK: - Network
    
    /// - Parameter value: The URL where Private Click Measurement and SKAdNetwork send attribution information.
    ///
    /// This key is a string that contains a valid URL containing your domain name. Provide a string in the format `“https://example.com”`, where you replace example with your domain name. Include this key in your app for the following two uses:
    ///
    /// - To specify where the system sends event attribution data it receives from launched websites that support Private Click Measurement (PCM). PCM won’t work if your app doesn’t include this key.
    ///
    /// - To specify where the system sends a copy of the winning install-validation postback to the advertised app’s developer, for apps that are advertised using the [`SKAdNetwork`](https://developer.apple.com/documentation/storekit/skadnetwork) API. Including this key is optional.
    ///
    /// The system sends postbacks to a well-known URL it generates using the domain name you provide in the key. To receive the postbacks, configure your server to receive HTTPS POST messages at the following endpoints:
    ///
    /// - To receive PCM event attribution data: `https://example.com/.well-known/private-click-measurement/report-attribution/`
    ///
    /// - To receive SKAdNetwork install-validation postbacks: `https://example.com/.well-known/skadnetwork/report-attribution/`
    ///
    /// Replace `example.com` with your domain name. The system uses only the registrable part of the domain name, and ignores any subdomains.
    ///
    /// For more information about PCM and setting up a server to receive event attribution data, see [Introducing Private Click Measurement](https://webkit.org/blog/11529/introducing-private-click-measurement-pcm/). For more information about configuring an advertised app to enable its developer to receive postbacks, see [Configuring an advertised app](https://developer.apple.com/documentation/storekit/skadnetwork/configuring_an_advertised_app) and [`SKAdNetwork`](https://developer.apple.com/documentation/storekit/skadnetwork).
    ///
    /// - Note: Mac apps built with Mac Catalyst don’t support PCM.
    ///
    /// Availability: iOS 14.5+, iPadOS 14.5+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsadvertisingattributionreportendpoint)
    static func NSAdvertisingAttributionReportEndpoint(_ value: String) -> Self {
        Self(
            name: nil,
            key: "NSAdvertisingAttributionReportEndpoint",
            value: .string(value),
            availabilities: .init(
                iOS: "14.5",
                iPadOS: "14.5",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter values: A description of changes made to the default security for HTTP connections.
    ///
    /// On Apple platforms, a networking feature called App Transport Security (ATS) improves privacy and data integrity for all apps and app extensions. ATS requires that all HTTP connections made with the [URL Loading System](https://developer.apple.com/documentation/foundation/url_loading_system)—typically using the [`URLSession`](https://developer.apple.com/documentation/foundation/urlsession) class—use HTTPS. It further imposes extended security checks that supplement the default server trust evaluation prescribed by the Transport Layer Security (TLS) protocol. ATS blocks connections that fail to meet minimum security specifications. For additional details, see [Preventing Insecure Network Connections](https://developer.apple.com/documentation/security/preventing_insecure_network_connections).
    ///
    /// You can circumvent or augment these protections by adding the` NSAppTransportSecurity` key to your app’s [`Information Property List`](https://developer.apple.com/documentation/bundleresources/information_property_list) file and providing an ATS configuration dictionary as the value. For example, you can:
    ///
    /// - Allow insecure loads for web views while maintaining ATS protections elsewhere in your app using the [`NSAllowsArbitraryLoadsInWebContent`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsallowsarbitraryloadsinwebcontent) key.
    ///
    /// - Enable additional security features like Certificate Transparency using the [`NSRequiresCertificateTransparency`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsrequirescertificatetransparency) key, or Certificate Pinning using the [`NSPinnedDomains`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nspinneddomains) key.
    ///
    /// - Reduce or remove security requirements for communication with particular servers using the [`NSExceptionDomains`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsexceptiondomains) key.
    ///
    /// - Important: Always look for ways to improve server security before adding ATS exceptions. Loosening ATS restrictions reduces the security of your app.
    ///
    /// All keys in the ATS configuration dictionary are optional, with default values that are suitable for most apps. Keys that define global exceptions apply to all network connections made by your app, except connections to domains specified in the [`NSExceptionDomains`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsexceptiondomains) sub-dictionary. That sub-dictionary allows you to separately manage settings for individual domains.
    ///
    /// # Versioning
    ///
    /// ATS operates by default for apps linked against the iOS 9.0 or macOS 10.11 SDKs or later. When you link your app against an older SDK, ATS is disabled no matter which version of operating system your app runs on.
    ///
    /// If you specify a value for any of the global exceptions besides [`NSAllowsArbitraryLoads`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsallowsarbitraryloads), then the ATS behavior depends on the version of the OS on which your app runs:
    ///
    /// iOS 9.0 or macOS 10.11 - ATS uses the [`NSAllowsArbitraryLoads`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsallowsarbitraryloads) value that you set, or NO by default, and ignores the other global exceptions.
    ///
    /// iOS 10.0 or later or macOS 10.12 or later - ATS ignores the [`NSAllowsArbitraryLoads`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsallowsarbitraryloads) value that you set and instead obeys the other key or keys.
    ///
    /// This behavior enables you to manage differences between OS versions. You provide a coarse exception ([`NSAllowsArbitraryLoads`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsallowsarbitraryloads)) for older versions, and a more targeted exception, like [`NSAllowsArbitraryLoadsInWebContent`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsallowsarbitraryloadsinwebcontent), for when it’s available.
    ///
    /// Availability: iOS 9.0+, iPadOS 9.0+, macOS 10.11+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity)
    static func NSAppTransportSecurity(_ values: [NSAppTransportSecurityEntry]) -> Self {
        Self.dict(
            name: "App Transport Security Settings",
            key: "NSAppTransportSecurity",
            childEntries: values,
            availabilities: .init(
                iOS: "9.0",
                iPadOS: "9.0",
                macOS: "10.11",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter values: Bonjour service types browsed by the app.
    ///
    /// The value associated with this key is an array of strings that represent Bonjour service types. Include all service types that your app expects to use. Bonjour service type strings look like `_ipp._tcp`, and `_myservice._udp`, where the first substring identifies the application protocol and the second identifies the transport protocol.
    ///
    /// Availability: iOS 14.0+, iPadOS 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsbonjourservices)
    static func NSBonjourServices(_ values: [String]) -> Self {
        Self(
            name: "Bonjour services",
            key: "NSBonjourServices",
            value: .array(values.map { .string($0) }),
            availabilities: .init(
                iOS: "14.0",
                iPadOS: "14.0",
                macOS: "11.0",
                tvOS: "14.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value that indicates your app supports CloudKit Sharing.
    ///
    /// If your app supports CloudKit Sharing, add this key to your app’s `Info.plist` file with a value of `true`. This tells the system to launch your app when the user taps or clicks a share’s URL. For example, one they receive in an email or an iMessage from the share’s owner.
    ///
    /// Before your app launches, CloudKit verifies that the user has an active iCloud account and, for private shares, that it matches their participant details. Following successful verification, CloudKit provides the share’s metadata to your app’s scene, or application, delegate. The method it calls varies by platform and app configuration. For more information, see [`CKShare.Metadata`](https://developer.apple.com/documentation/cloudkit/ckshare/metadata).
    ///
    /// To indicate that your app supports CloudKit Sharing:
    ///
    /// 1. Select your project’s `Info.plist` file in the Project navigator in Xcode.

    /// 2. Click the Add button (+) next to any key in the property list editor and press Return.
    ///
    /// 3. Type the key name `CKSharingSupported`.
    ///
    /// 4. Choose Boolean from the pop-up menu in the Type column.
    ///
    /// 5. Choose YES from the pop-up menu in the Value column.
    ///
    /// 6. Save your changes.
    ///
    /// Availability: iOS 10.0+, iPadOS 10.0+, macOS 10.12+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cksharingsupported)
    static func CKSharingSupported(_ value: Bool) -> Self {
        Self(
            name: nil,
            key: "CKSharingSupported",
            value: .boolean(value),
            availabilities: .init(
                iOS: "10.0",
                iPadOS: "10.0",
                macOS: "10.12",
                visionOS: "1.0"
            )
        )
    }
    
    // MARK: - Background downloads
    
    /// - Parameter values: The restrictions that apply to the set of assets that download immediately after app installation.
    ///
    /// Availability: iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/bainitialdownloadrestrictions)
    static func BAInitialDownloadRestrictions(_ values: [BAInitialDownloadRestrictionsEntry]) -> Self {
        Self.dict(
            name: nil,
            key: "BAInitialDownloadRestrictions",
            childEntries: values,
            availabilities: .init(
                iOS: "16.0",
                iPadOS: "16.0",
                macCatalyst: "16.0",
                macOS: "13.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: The combined size, on disk, of your app bundle and the assets that download immediately after app installation.
    ///
    /// - Important: The App Store displays this value on your app’s product page. Provide an accurate value by specifying the combined size, on disk, of only your app bundle and the assets (uncompressed) the app downloads immediately after installation. Don’t overstate the disk space you require.
    ///
    /// Availability: iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/bamaxinstallsize)
    static func BAMaxInstallSize(_ value: Int) -> Self {
        Self(
            name: nil,
            key: "BAMaxInstallSize",
            value: .integer(value),
            availabilities: .init(
                iOS: "16.0",
                iPadOS: "16.0",
                macCatalyst: "16.0",
                macOS: "13.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// Availability: iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/bamanifesturl)
    static func BAManifestURL(_ value: String) -> Self {
        Self(
            name: nil,
            key: "BAManifestURL",
            value: .string(value),
            availabilities: .init(
                iOS: "16.1",
                iPadOS: "16.1",
                macCatalyst: "16.1",
                macOS: "13.0",
                visionOS: "1.0"
            )
        )
    }
    
    // MARK: - Storage
    
    /// - Parameter values: Describes the files or directories the app installs on the system.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/apfiles)
    static func APFiles(_ values: [APFilesEntry]) -> Self {
        Self.dict(
            name: "Installation files",
            key: "APFiles",
            childEntries: values,
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    /// - Parameter value: The base path to the files or folders that the app installs.
    ///
    /// Use the format `file://localhost/path/` for the path.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/apinstallerurl)
    static func APInstallerURL(_ value: String) -> Self {
        Self(
            name: "Installation directory base file URL",
            key: "APInstallerURL",
            value: .string(value),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value indicating whether the app continues working if the system purges the local storage.
    ///
    /// Availability: iOS 9.3+, iPadOS 9.3+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nssupportspurgeablelocalstorage)
    static func NSSupportsPurgeableLocalStorage(_ value: Bool) -> Self {
        Self(
            name: nil,
            key: "NSSupportsPurgeableLocalStorage",
            value: .boolean(value),
            availabilities: .init(
                iOS: "9.3",
                iPadOS: "9.3",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value indicating whether the files this app creates are quarantined by default.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/lsfilequarantineenabled)
    static func LSFileQuarantineEnabled(_ value: Bool) -> Self {
        Self(
            name: "File quarantine enabled",
            key: "LSFileQuarantineEnabled",
            value: .boolean(value),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value indicating whether the app shares files.
    ///
    /// If you set this key to `YES`, your app can share files with the user. Place the files in a Documents folder located in the app’s home directiory. The default value is `NO`.
    ///
    /// Availability: iOS 3.2+, iPadOS 3.2+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uifilesharingenabled)
    static func UIFileSharingEnabled(_ value: Bool) -> Self {
        Self(
            name: "Application supports iTunes file sharing",
            key: "UIFileSharingEnabled",
            value: .boolean(value),
            availabilities: .init(
                iOS: "3.2",
                iPadOS: "3.2",
                tvOS: "9.0",
                watchOS: "2.0",
                visionOS: "1.0"
            )
        )
    }
    
    /// - Parameter value: A Boolean value indicating whether the app's resources files should be mapped into memory.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/csresourcesfilemapped)
    static func CSResourcesFileMapped(_ value: Bool) -> Self {
        Self(
            name: "Resources should be file-mapped",
            key: "CSResourcesFileMapped",
            value: .boolean(value),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
    // MARK: - CoreML models
    
    /// - Parameter value: A Boolean value indicating whether the app contains a Core ML model to optimize loading the model.
    ///
    /// Availability: iOS 12.0+, iPadOS 12.0+, macOS 10.0+, tvOS 12.0+, watchOS 5.0+, visionOS 1.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/lsbundlecontainscoremlmlmodelc)
    static func LSBundleContainsCoreMLmlmodelc(_ value: Bool) -> Self {
        Self(
            name: "Bundle contains CoreML models",
            key: "LSBundleContainsCoreMLmlmodelc",
            value: .boolean(value),
            availabilities: .init(
                iOS: "12.0",
                iPadOS: "12.0",
                macOS: "10.0",
                tvOS: "12.0",
                watchOS: "5.0",
                visionOS: "1.0"
            )
        )
    }
    
    // MARK: - Java
    
    /// - Parameter value: The root directory for the app’s Java class files.
    ///
    /// Availability: macOS 10.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsjavaroot)
    static func NSJavaRoot(_ value: String) -> Self {
        Self(
            name: "Java root directory",
            key: "NSJavaRoot",
            value: .string(value),
            availabilities: .init(
                macOS: "10.0"
            )
        )
    }
    
}
