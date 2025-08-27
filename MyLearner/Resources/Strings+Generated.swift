// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  internal enum AppStore {
    /// myLearners, VicRoads Official Learning App
    internal static let appButton = L10n.tr("Localizable", "appStore.appButton", fallback: "myLearners, VicRoads Official Learning App")
    /// myLearners
    internal static let enterTextMyLearners = L10n.tr("Localizable", "appStore.enterTextMyLearners", fallback: "myLearners")
    /// Get
    internal static let getButton = L10n.tr("Localizable", "appStore.getButton", fallback: "Get")
    /// Open
    internal static let openButton = L10n.tr("Localizable", "appStore.openButton", fallback: "Open")
    /// search
    internal static let pressKey = L10n.tr("Localizable", "appStore.pressKey", fallback: "search")
    /// re-download
    internal static let redownloadButton = L10n.tr("Localizable", "appStore.redownloadButton", fallback: "re-download")
    /// Search
    internal static let searchButton = L10n.tr("Localizable", "appStore.searchButton", fallback: "Search")
    /// AppStore.searchField
    internal static let searchField = L10n.tr("Localizable", "appStore.searchField", fallback: "AppStore.searchField")
  }
  internal enum BoundleId {
    /// Localizable.strings
    ///   MyLearner
    /// 
    ///   Created by Tony Chen on 21/8/2025.
    internal static let appStore = L10n.tr("Localizable", "boundleId.appStore", fallback: "com.apple.AppStore")
    /// au.gov.vic.vicroads.dlk
    internal static let mylearner = L10n.tr("Localizable", "boundleId.mylearner", fallback: "au.gov.vic.vicroads.dlk")
    /// com.apple.springboard
    internal static let springBoard = L10n.tr("Localizable", "boundleId.springBoard", fallback: "com.apple.springboard")
  }
  internal enum Messages {
    /// Button not found
    internal static let buttonNotFound = L10n.tr("Localizable", "messages.buttonNotFound", fallback: "Button not found")
    /// Can't locate app in App Store
    internal static let cantLocateApp = L10n.tr("Localizable", "messages.cantLocateApp", fallback: "Can't locate app in App Store")
  }
  internal enum Onboarding {
    /// Hi!
    internal static let hi = L10n.tr("Localizable", "onboarding.hi", fallback: "Hi!")
    /// myLearners is an app for Victorian learner and supervising drivers. Let's look at what you can do.
    internal static let screen1 = L10n.tr("Localizable", "onboarding.screen1", fallback: "myLearners is an app for Victorian learner and supervising drivers. Let's look at what you can do.")
    /// Skip
    internal static let skip = L10n.tr("Localizable", "onboarding.skip", fallback: "Skip")
  }
  internal enum Springboard {
    /// myLearners
    internal static let appIcon = L10n.tr("Localizable", "springboard.appIcon", fallback: "myLearners")
    /// Delete
    internal static let confirmDeleteButton = L10n.tr("Localizable", "springboard.confirmDeleteButton", fallback: "Delete")
    /// Delete App
    internal static let deleteAppButton = L10n.tr("Localizable", "springboard.deleteAppButton", fallback: "Delete App")
    /// Remove App
    internal static let removeAppButton = L10n.tr("Localizable", "springboard.removeAppButton", fallback: "Remove App")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
