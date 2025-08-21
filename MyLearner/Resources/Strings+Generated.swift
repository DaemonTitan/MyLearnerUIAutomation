// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
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
  internal enum Onboarding {
    /// Hi!
    internal static let hi = L10n.tr("Localizable", "onboarding.hi", fallback: "Hi!")
    /// myLearners is an app for Victorian learner and supervising drivers. Let's look at what you can do.
    internal static let screen1 = L10n.tr("Localizable", "onboarding.screen1", fallback: "myLearners is an app for Victorian learner and supervising drivers. Let's look at what you can do.")
    /// Skip
    internal static let skip = L10n.tr("Localizable", "onboarding.skip", fallback: "Skip")
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
