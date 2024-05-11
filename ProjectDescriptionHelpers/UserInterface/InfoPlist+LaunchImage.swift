//
//  InfoPlist+LaunchImage.swift
//  ProjectDescriptionHelpers
//
//  Created by Thomas Meyer on 09.05.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct UILaunchImagesEntry: PlistEntry {
        
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
        
        // MARK: - Launch Image Configuration
        
        /// - Parameter value: A string representing the minimum iOS version number for which the image is intended.
        ///
        /// The version number string is formatted in the form n.n.n, where n is a number. For example, images targeting iOS 7 and later should specify a string “7.0”.
        ///
        /// Availability: iOS 7.0-13.0, iPadOS 7.0-13.0, tvOS 9.0-13.0
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchimages/uilaunchimageminimumosversion)
        static func UILaunchImageMinimumOSVersion(_ value: String) -> Self {
            Self(
                name: nil,
                key: "UILaunchImageMinimumOSVersion",
                value: .string(value),
                availabilities: .init(
                    iOS: "7.0"..."13.0",
                    iPadOS: "7.0"..."13.0",
                    tvOS: "9.0"..."13.0"
                )
            )
        }
        
        /// - Parameter value: A string containing the name of the image file.
        ///
        /// The image file must reside at the top level of the app bundle. The name you specify for this key should not include a filename extension, nor should it include modifiers such as `@2x, -568h, ~iphone`, or `~ipad`.
        ///
        /// On disk, your image filenames may still include the modifiers as appropriate, although they are not required. The system automatically considers such modifiers when choosing which file to load.
        ///
        /// Availability: iOS 7.0-13.0, iPadOS 7.0-13.0, tvOS 9.0-13.0
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchimages/uilaunchimagename)
        static func UILaunchImageName(_ value: String) -> Self {
            Self(
                name: nil,
                key: "UILaunchImageName",
                value: .string(value),
                availabilities: .init(
                    iOS: "7.0"..."13.0",
                    iPadOS: "7.0"..."13.0",
                    tvOS: "9.0"..."13.0"
                )
            )
        }
        
        /// - Parameter value: A string containing the orientation of the image
        ///
        /// If it is not specified, the default orientation is `Portrait`.
        ///
        /// Availability: iOS 7.0-13.0, iPadOS 7.0-13.0, tvOS 9.0-13.0
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchimages/uilaunchimageorientation)
        static func UILaunchImageOrientation(_ value: UILaunchImageOrientationValue) -> Self {
            Self(
                name: nil,
                key: "UILaunchImageOrientation",
                value: .string(value.rawValue),
                availabilities: .init(
                    iOS: "7.0"..."13.0",
                    iPadOS: "7.0"..."13.0",
                    tvOS: "9.0"..."13.0"
                )
            )
        }
        
        /// - Parameter value: A string containing the width and height of the image.
        ///
        /// This string represents the size of the display for which the image is intended. You must specify the width and height with respect to the device in a portrait orientation. In other words, portrait and landscape images targeting the same device would have the same width and height.
        ///
        /// The format of this string is `{width, height}` where width and height are the size of the image in points. For example, the string `{320, 480}` specifies an image that can be used on an iPhone 4 or iPhone 4S.
        ///
        /// If you do not specify this key, the image size is assumed to be `{320, 480}`.
        ///
        /// Availability: iOS 7.0-13.0, iPadOS 7.0-13.0, tvOS 9.0-13.0
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchimages/uilaunchimagesize)
        static func UILaunchImageSize(_ value: String) -> Self {
            Self(
                name: nil,
                key: "UILaunchImageSize",
                value: .string(value),
                availabilities: .init(
                    iOS: "7.0"..."13.0",
                    iPadOS: "7.0"..."13.0",
                    tvOS: "9.0"..."13.0"
                )
            )
        }
        
        enum UILaunchImageOrientationValue: String {
            /// The image has portrait orientation.
            case Portrait
            /// The image has portrait orientation but is upside down.
            case PortraitUpsideDown
            /// The image has landscape orientation.
            case Landscape
            /// The image is in landscape orientation with the bottom of the device on the left side.
            case LandscapeLeft
            /// The image is in landscape orientation with the bottom of the device on the right side.
            case LandscapeRight
        }
        
    }
}
