//
//  InfoPlist+AVFoundation.swift
//  tuist-plugin-infoplist-generator
//
//  Created by Thomas Meyer on 11.08.24.
//

import ProjectDescription

extension InfoPlistEntry {
    
    /// - Parameter value: A Boolean value that indicates if a person can configure a microphone mode regardless of whether the microphone is in an active state.
    ///
    /// When your app is in the foreground, use this key to allow someone to configure their microphone mode — automatic, standard, voice isolation, or wide spectrum — before activating the microphone. For example, a person can configure the microphone mode to voice isolation before starting a call in your teleconferencing app.
    ///
    /// Availability: iOS 18.0+, iPadOS 18.0+
    ///
    /// Reference: [Apple Documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsalwaysallowmicrophonemodecontrol)
    static func NSAlwaysAllowMicrophoneModeControl(_ value: Bool) -> Self {
        Self(
            name: nil,
            key: "NSAlwaysAllowMicrophoneModeControl",
            value: .boolean(value),
            availabilities: .init(
                iOS: "18.0",
                iPadOS: "18.0"
            )
        )
    }
    
}
