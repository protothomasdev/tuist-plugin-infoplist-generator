//
//  InfoPlist+BrowserEngineKit.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 11.08.24.
//

import ProjectDescription

extension InfoPlistEntry {
 
    /// Availability: iOS 17.4+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/beembeddedwebbrowserengine)
    static func BEEmbeddedWebBrowserEngine(_ value: String) -> Self {
        Self(
            name: "App Clip",
            key: "BEEmbeddedWebBrowserEngine",
            value: .string(value),
            availabilities: .init(
                iOS: "17.4"
            )
        )
    }
    
    /// Availability: iOS 17.4+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/beembeddedwebbrowserengine)
    static func BEEmbeddedWebBrowserEngineVersion(_ value: String) -> Self {
        Self(
            name: "App Clip",
            key: "BEEmbeddedWebBrowserEngineVersion",
            value: .string(value),
            availabilities: .init(
                iOS: "17.4"
            )
        )
    }
    
}
