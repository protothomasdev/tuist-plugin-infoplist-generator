//
//  InfoPlist+APFiles.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 04.06.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    public struct APFilesEntry: PlistEntry {
        
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
        
        /// - Parameter value: A Boolean value indicating whether the file or a folder icon is displayed in the Info window.
        ///
        /// Availability: macOS 10.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/apfiles/apdisplayedascontainer)
        static func APDisplayedAsContainer(_ value: Bool) -> Self {
            Self(
                name: "Display with folder icon",
                key: "APDisplayedAsContainer",
                value: .boolean(value),
                availabilities: .init(
                    macOS: "10.0"
                )
            )
        }
        
        /// - Parameter value: A short description of the file or folder that appears in the Info window.
        ///
        /// Availability: macOS 10.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/apfiles/apfiledescriptionkey)
        static func APFileDescriptionKey(_ value: String) -> Self {
            Self(
                name: "Install file description text",
                key: "APFileDescriptionKey",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.0"
                ),
                isRequired: true
            )
        }
        
        /// - Parameter value: The path to use when installing the file or folder, relative to the app bundle.
        ///
        /// Availability: macOS 10.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/apfiles/apfiledestinationpath)
        static func APFileDestinationPath(_ value: String) -> Self {
            Self(
                name: "File destination path",
                key: "APFileDestinationPath",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.0"
                ),
                isRequired: true
            )
        }
        
        /// - Parameter value: The name of the file or folder to install.
        ///
        /// Availability: macOS 10.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/apfiles/apfilename)
        static func APFileName(_ value: String) -> Self {
            Self(
                name: "Install file name",
                key: "APFileName",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.0"
                ),
                isRequired: true
            )
        }
        
        /// - Parameter value: The path to the file or folder in the app package, relative to the installer path.
        ///
        /// Availability: macOS 10.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/apfiles/apfilesourcepath)
        static func APFileSourcePath(_ value: String) -> Self {
            Self(
                name: "Install file source path",
                key: "APFileSourcePath",
                value: .string(value),
                availabilities: .init(
                    macOS: "10.0"
                )
            )
        }
        
        /// - Parameter value: The action to take on the file or folder.
        ///
        /// Availability: macOS 10.0+
        ///
        /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/apfiles/apinstallaction)
        static func APInstallAction(_ value: InfoPlistValue.APInstallActionValue) -> Self {
            Self(
                name: "File install action",
                key: "APInstallAction",
                value: .string(value.rawValue),
                availabilities: .init(
                    macOS: "10.0"
                )
            )
        }
        
    }
    
}

extension InfoPlistEntry.InfoPlistValue {
    
    enum APInstallActionValue: String {
        case Copy
        case Open
    }
    
}
