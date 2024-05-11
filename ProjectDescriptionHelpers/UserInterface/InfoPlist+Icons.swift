//
//  InfoPlist+Icons.swift
//  ProjectDescriptionHelpers
//
//  Created by Thomas Meyer on 09.05.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct CFBundleIconsEntry: PlistEntry {
        
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
        
        // MARK: - Property List Keys
        
        /// - Parameter values: A list of alternate icons for the Home screen and Settings app.
        ///
        /// The value of this key is different in iOS and tvOS.
        ///
        /// In tvOS, the value of the key is an array of strings. The value of each string is the name of an icon file in your app.
        ///
        /// In iOS, the value of the key is a dictionary. The key for each dictionary entry is the name of the alternate icon, which is also the string you pass to [setAlternateIconName(_:completionHandler:)](https://developer.apple.com/documentation/uikit/uiapplication/2806818-setalternateiconname) when changing icons.
        ///
        /// Availability: iOS 5.0+, iPadOS 5.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleicons/cfbundlealternateicons)
        static func CFBundleAlternateIcons(_ values: [CFBundleAlternateIconsEntry]) -> Self {
            Self.dict(
                name: nil,
                key: "CFBundleAlternateIcons",
                childEntries: values,
                availabilities: .init(
                    iOS: "5.0",
                    iPadOS: "5.0",
                    tvOS: "9.0",
                    watchOS: "2.0",
                    visionOS: "1.0"
                )
            )
        }
        
        /// - Parameter values: The app’s primary icon for display on the Home Screen, in the Settings app, and many other places throughout the system.
        ///
        /// Availability: iOS 5.0+, iPadOS 5.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleicons/cfbundleprimaryicon)
        static func CFBundlePrimaryIcon(_ values: [CFBundlePrimaryIconEntry]) -> Self {
            Self.dict(
                name: "Primary Icon",
                key: "CFBundlePrimaryIcon",
                childEntries: values,
                availabilities: .init(
                    iOS: "5.0",
                    iPadOS: "5.0",
                    tvOS: "9.0",
                    watchOS: "2.0",
                    visionOS: "1.0"
                )
            )
        }
        
        public struct CFBundleAlternateIconsEntry: PlistEntry {
            
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
            
            /// - Parameter values: the configuration of the app icon
            ///
            /// Availability: iOS 5.0+, iPadOS 5.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
            ///
            /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleicons/cfbundlealternateicons/appiconreferencename)
            static func AppIconReferenceName(_ values: [AppIconReferenceNameEntry]) -> Self {
                Self.dict(
                    name: nil,
                    key: "AppIconReferenceName",
                    childEntries: values,
                    availabilities: .init(
                        iOS: "5.0",
                        iPadOS: "5.0",
                        tvOS: "9.0",
                        watchOS: "2.0",
                        visionOS: "1.0"
                    )
                )
            }
            
            public struct AppIconReferenceNameEntry: PlistEntry {
                
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
                
                /// - Parameter values: The reference name of the app icon.
                ///
                /// Availability: iOS 5.0+, iPadOS 5.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
                ///
                /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleicons/cfbundlealternateicons/appiconreferencename/cfbundleiconfiles)
                static func CFBundleIconFiles(_ values: [String]) -> Self {
                    let names = values.map { Plist.Value.string($0) }
                    return Self(
                        name: nil,
                        key: "CFBundleIconFiles",
                        value: .array(names),
                        availabilities: .init(
                            iOS: "5.0",
                            iPadOS: "5.0",
                            tvOS: "9.0",
                            watchOS: "2.0",
                            visionOS: "1.0"
                        )
                    )
                }
                
                /// - Parameter value: A boolean that indicates that the icon is prerendered
                ///
                /// Availability: iOS 5.0+, iPadOS 5.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
                ///
                /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleicons/cfbundlealternateicons/appiconreferencename/uiprerenderedicon)
                static func UIPrerenderedIcon(_ value: Bool) -> Self {
                    Self(
                        name: nil,
                        key: "UIPrerenderedIcon",
                        value: .boolean(value),
                        availabilities: .init(
                            iOS: "5.0",
                            iPadOS: "5.0",
                            tvOS: "9.0",
                            watchOS: "2.0",
                            visionOS: "1.0"
                        )
                    )
                }
                
            }
            
        }
        
        public struct CFBundlePrimaryIconEntry: PlistEntry {
            
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
            
            // MARK: - Specifying app icon files
            
            /// - Parameter values: The names of the icon files in the app’s asset catalog or bundle.
            ///
            /// - Note: For Action extensions, to use a symbol from SF Symbols, you can specify the CFBundleSymbolName key instead of CFBundleIconFiles.
            ///
            /// Availability: iOS 5.0+, iPadOS 5.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
            ///
            /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleicons/cfbundleprimaryicon/cfbundleiconfiles)
            static func CFBundleIconFiles(_ values: [String]) -> Self {
                Self(
                    name: "Icon files",
                    key: "CFBundleIconFiles",
                    value: .array(values.map { .string($0) }),
                    availabilities: .init(
                        iOS: "5.0",
                        iPadOS: "5.0",
                        tvOS: "9.0",
                        watchOS: "2.0",
                        visionOS: "1.0"
                    )
                )
            }
            
            /// - Parameter value: A Boolean value indicating whether the app’s icon files already incorporate a shine effect.
            ///
            /// Availability: iOS 5.0+, iPadOS 5.0+, tvOS 9.0+, watchOS 2.0+, visionOS 1.0+
            ///
            /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleicons/cfbundleprimaryicon/uiprerenderedicon)
            static func UIPrerenderedIcon(_ value: Bool) -> Self {
                Self(
                    name: "Icon already includes gloss effects",
                    key: "UIPrerenderedIcon",
                    value: .boolean(value),
                    availabilities: .init(
                        iOS: "5.0",
                        iPadOS: "5.0",
                        tvOS: "9.0",
                        watchOS: "2.0",
                        visionOS: "1.0"
                    )
                )
            }
            
            // MARK: - Customizing the App Shortcuts platter
            
            /// - Parameter value: The tint color to apply to text and symbols in the App Shortcuts platter.
            ///
            /// By default, the system uses predefined colors for text and symbols in the App Shortcuts platter — a view that represents a single group of App Shortcuts. To override that behavior and change the color of those items, add a custom color to your app’s asset catalog and specify the color’s name as the value for this key.
            ///
            /// ```
            /// <dict>
            ///     <key>CFBundlePrimaryIcon</key>
            ///     <dict>
            ///         <key>NSAppIconActionTintColorName</key>
            ///         <string>CustomTintColor</string>
            ///     </dict>
            /// </dict>
            /// ```
            ///
            /// If your app provides multiple app icons, you can specify a different tint color to match each alternative.
            ///
            /// <dict>
            ///     <key>CFBundlePrimaryIcon</key>
            ///     <dict>
            ///         <key>NSAppIconActionTintColorName</key>
            ///         <string>CustomTintColor</string>
            ///     </dict>
            ///     <key>CFBundleAlternateIcons</key>
            ///     <dict>
            ///         <key>MyAlternateIcon</key>
            ///         <dict>
            ///             <key>NSAppIconActionTintColorName</key>
            ///             <string>AlternateCustomTintColor</string>
            ///         </dict>
            ///     </dict>
            /// </dict>
            ///
            /// Availability: iOS 17.0+, iPadOS 17.0+, watchOS 10.0+
            ///
            /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleicons/cfbundleprimaryicon/nsappiconactiontintcolorname)
            static func NSAppIconActionTintColorName(_ value: String) -> Self {
                Self(
                    name: nil,
                    key: "NSAppIconActionTintColorName",
                    value: .string(value),
                    availabilities: .init(
                        iOS: "17.0",
                        iPadOS: "17.0",
                        watchOS: "10.0"
                    )
                )
            }
            
            /// - Parameter values: The names of the colors to use for the background of the App Shortcuts platter.
            ///
            /// By default, the system chooses an appropriate background color for the App Shortcuts platter — a view that represents a single group of App Shortcuts. You can override that behavior in one of two ways:
            /// 1. Specify the name of a single custom color in your app’s asset catalog to show a solid background.
            /// 2. Specify the names of two custom colors to show a gradient background.
            ///
            /// - Important: Use `array` for the value’s type, even when specifying a single custom color for a solid background.
            ///
            /// ```
            /// <dict>
            ///     <key>CFBundlePrimaryIcon</key>
            ///     <dict>
            ///         <key>NSAppIconActionTintColorName</key>
            ///         <string>CustomTintColor</string>
            ///         <key>NSAppIconComplementingColorNames</key>
            ///         <array>
            ///             <string>BackgroundGradientColor1</string>
            ///             <string>BackgroundGradientColor2</string>
            ///         </array>
            ///     </dict>
            /// </dict>
            ///
            /// If your app provides multiple app icons, you can specify different background colors to match each alternative.
            ///
            /// <dict>
            ///     <key>CFBundlePrimaryIcon</key>
            ///     <dict>
            ///         <key>NSAppIconActionTintColorName</key>
            ///         <string>CustomTintColor</string>
            ///         <key>NSAppIconComplementingColorNames</key>
            ///         <array>
            ///             <string>BackgroundGradientColor1</string>
            ///             <string>BackgroundGradientColor2</string>
            ///         </array>
            ///     </dict>
            ///     <key>CFBundleAlternateIcons</key>
            ///     <dict>
            ///         <key>MyAlternateIcon</key>
            ///         <dict>
            ///             <key>NSAppIconActionTintColorName</key>
            ///             <string>AlternateCustomTintColor</string>
            ///             <key>NSAppIconComplementingColorNames</key>
            ///             <array>
            ///                 <string>AlternateBackgroundGradientColor1</string>
            ///                 <string>AlternateBackgroundGradientColor2</string>
            ///             </array>
            ///         </dict>
            ///     </dict>
            /// </dict>
            ///
            /// Availability: iOS 17.0+, iPadOS 17.0+, watchOS 10.0+
            ///
            /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleicons/cfbundleprimaryicon/nsappiconcomplementingcolornames)
            static func NSAppIconComplementingColorNames(_ values: [String]) -> Self {
                Self(
                    name: nil,
                    key: "NSAppIconComplementingColorNames",
                    value: .array(values.map { .string($0) }),
                    availabilities: .init(
                        iOS: "17.0",
                        iPadOS: "17.0",
                        watchOS: "10.0"
                    )
                )
            }
            
            // MARK: - Associating an SF Symbol
            
            /// - Parameter value: The name of the symbol to show in the action sheet, and in Finder’s sidebar on macOS.
            ///
            /// The system associates the given symbol with your application. The system displays the symbol in the following locations:
            /// - The action sheet displayed by an Action extension
            /// - The Finder sidebar icons for file provider domains (macOS only)
            ///
            /// To use a symbol from SF Symbols as the icon, set the value of `CFBundleSymbolName` to the symbol’s name. For example, to use the `flame.fill` symbol, configure the `Info.plist` entry as follows:
            ///
            ///![https://docs-assets.developer.apple.com/published/b6b479f451/3570821@2x.png](https://docs-assets.developer.apple.com/published/b6b479f451/3570821@2x.png)
            ///
            /// The resulting item shown on the action sheet looks like this:
            ///
            /// ![https://docs-assets.developer.apple.com/published/450eec3014/3570823@2x.png](https://docs-assets.developer.apple.com/published/450eec3014/3570823@2x.png)
            ///
            /// In the Finder sidebar, it looks like this:
            ///
            /// ![https://docs-assets.developer.apple.com/published/50724d2254/rendered2x-1638832308.png](https://docs-assets.developer.apple.com/published/50724d2254/rendered2x-1638832308.png)
            ///
            /// To create a custom symbol for your app, see [Creating custom symbol images for your app](https://developer.apple.com/documentation/uikit/uiimage/creating_custom_symbol_images_for_your_app).
            ///
            /// Availability: iOS 13.0+, iPadOS 13.0+
            ///
            /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleicons/cfbundleprimaryicon/cfbundlesymbolname)
            static func CFBundleSymbolName(_ value: String) -> Self {
                Self(
                    name: nil,
                    key: "CFBundleSymbolName",
                    value: .string(value),
                    availabilities: .init(
                        iOS: "13.0",
                        iPadOS: "13.0"
                    )
                )
            }
            
        }
        
    }
    
}
