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
  internal enum Login {
    /// By tapping Log in, I agree to VicRoads
    internal static let agreeToVicRoadsText = L10n.tr("Localizable", "login.agreeToVicRoadsText", fallback: "By tapping Log in, I agree to VicRoads")
    /// landingIllustrationBackground
    internal static let backgoundImage = L10n.tr("Localizable", "login.backgoundImage", fallback: "landingIllustrationBackground")
    /// graphicCarLplate
    internal static let carLPlateImage = L10n.tr("Localizable", "login.carLPlateImage", fallback: "graphicCarLplate")
    /// Done
    internal static let doneButton = L10n.tr("Localizable", "login.doneButton", fallback: "Done")
    /// Don't have a myVicRoads account?
    internal static let dontHaveAccountText = L10n.tr("Localizable", "login.dontHaveAccountText", fallback: "Don't have a myVicRoads account?")
    /// Email address
    internal static let emailTextField = L10n.tr("Localizable", "login.emailTextField", fallback: "Email address")
    /// You must enter an email.
    internal static let emptyEmailErrorText = L10n.tr("Localizable", "login.emptyEmailErrorText", fallback: "You must enter an email.")
    /// You must enter a password
    internal static let emptyPasswordErrorText = L10n.tr("Localizable", "login.emptyPasswordErrorText", fallback: "You must enter a password")
    /// Forgot your password?
    internal static let forgotPasswordButton = L10n.tr("Localizable", "login.forgotPasswordButton", fallback: "Forgot your password?")
    /// Hi!
    internal static let hiText = L10n.tr("Localizable", "login.hiText", fallback: "Hi!")
    /// Incorrect email or password. Please try again.
    internal static let incorrectEmailPasswordText = L10n.tr("Localizable", "login.incorrectEmailPasswordText", fallback: "Incorrect email or password. Please try again.")
    /// Log in
    internal static let loginButton = L10n.tr("Localizable", "login.loginButton", fallback: "Log in")
    /// Log in with your myVicRoads personal account
    internal static let loginInstructionText = L10n.tr("Localizable", "login.loginInstructionText", fallback: "Log in with your myVicRoads personal account")
    /// myLearners
    internal static let myLearnersText = L10n.tr("Localizable", "login.myLearnersText", fallback: "myLearners")
    /// Password
    internal static let passwordField = L10n.tr("Localizable", "login.passwordField", fallback: "Password")
    /// Sign up
    internal static let signUpButton = L10n.tr("Localizable", "login.signUpButton", fallback: "Sign up")
    /// Sign up for myVicRoads and myLearners
    internal static let signUpMylearnersWeb = L10n.tr("Localizable", "login.signUpMylearnersWeb", fallback: "Sign up for myVicRoads and myLearners")
    /// Terms & Conditions and Privacy Statement
    internal static let termAndConditionButton = L10n.tr("Localizable", "login.termAndConditionButton", fallback: "Terms & Conditions and Privacy Statement")
    /// myLearners terms and conditions
    internal static let termAndConditionWeb = L10n.tr("Localizable", "login.termAndConditionWeb", fallback: "myLearners terms and conditions")
  }
  internal enum Messages {
    /// Button not found
    internal static let buttonNotFound = L10n.tr("Localizable", "messages.buttonNotFound", fallback: "Button not found")
    /// Can't locate app in App Store
    internal static let cantLocateApp = L10n.tr("Localizable", "messages.cantLocateApp", fallback: "Can't locate app in App Store")
  }
  internal enum Onboarding {
    /// Done
    internal static let doneButton = L10n.tr("Localizable", "onboarding.doneButton", fallback: "Done")
    /// page %d of 5
    internal static func pageIndicator(_ p1: Int) -> String {
      return L10n.tr("Localizable", "onboarding.pageIndicator", p1, fallback: "page %d of 5")
    }
    /// Skip
    internal static let skipButton = L10n.tr("Localizable", "onboarding.skipButton", fallback: "Skip")
    internal enum Screen1 {
      /// myLearners is an app for Victorian learner and supervising drivers. Let's look at what you can do.
      internal static let appintroduction = L10n.tr("Localizable", "onboarding.screen1.appintroduction", fallback: "myLearners is an app for Victorian learner and supervising drivers. Let's look at what you can do.")
      /// Hi!
      internal static let hi = L10n.tr("Localizable", "onboarding.screen1.hi", fallback: "Hi!")
      /// vicRoadsLogoRgb
      internal static let vicRoadsLogoimage = L10n.tr("Localizable", "onboarding.screen1.vicRoadsLogoimage", fallback: "vicRoadsLogoRgb")
      /// welcomeIcon
      internal static let welcomeIcon = L10n.tr("Localizable", "onboarding.screen1.welcomeIcon", fallback: "welcomeIcon")
    }
    internal enum Screen2 {
      /// learningOnboarding
      internal static let learningOnboardingImage = L10n.tr("Localizable", "onboarding.screen2.learningOnboardingImage", fallback: "learningOnboarding")
      /// Log hours
      internal static let logHours = L10n.tr("Localizable", "onboarding.screen2.logHours", fallback: "Log hours")
      /// phoneOne
      internal static let phoneOneIcon = L10n.tr("Localizable", "onboarding.screen2.phoneOneIcon", fallback: "phoneOne")
      /// Record your drives and send them to your supervisor.
      internal static let recordDrivers = L10n.tr("Localizable", "onboarding.screen2.recordDrivers", fallback: "Record your drives and send them to your supervisor.")
    }
    internal enum Screen3 {
      /// Approve drives
      internal static let approveDrives = L10n.tr("Localizable", "onboarding.screen3.approveDrives", fallback: "Approve drives")
      /// phoneTwo
      internal static let phoneTwo = L10n.tr("Localizable", "onboarding.screen3.phoneTwo", fallback: "phoneTwo")
      /// Review your learner's drives and verify them.
      internal static let reviewLearner = L10n.tr("Localizable", "onboarding.screen3.reviewLearner", fallback: "Review your learner's drives and verify them.")
      /// userLearnerOnboarding
      internal static let userLearnerOnboardingImage = L10n.tr("Localizable", "onboarding.screen3.userLearnerOnboardingImage", fallback: "userLearnerOnboarding")
    }
    internal enum Screen4 {
      /// phoneThree
      internal static let phoneThree = L10n.tr("Localizable", "onboarding.screen4.phoneThree", fallback: "phoneThree")
      /// See your drive progress, hours and more.
      internal static let seeDriveProgress = L10n.tr("Localizable", "onboarding.screen4.seeDriveProgress", fallback: "See your drive progress, hours and more.")
      /// Track progress
      internal static let trackProgress = L10n.tr("Localizable", "onboarding.screen4.trackProgress", fallback: "Track progress")
      /// userSupervisorOnboarding
      internal static let userSupervisorOnboardingImage = L10n.tr("Localizable", "onboarding.screen4.userSupervisorOnboardingImage", fallback: "userSupervisorOnboarding")
    }
    internal enum Screen5 {
      /// Get road safety tips, updates on your drives and learn more when you want.
      internal static let getRoadSafetyTips = L10n.tr("Localizable", "onboarding.screen5.getRoadSafetyTips", fallback: "Get road safety tips, updates on your drives and learn more when you want.")
      /// Learn together
      internal static let learnTogether = L10n.tr("Localizable", "onboarding.screen5.learnTogether", fallback: "Learn together")
      /// phoneSix
      internal static let phoneSix = L10n.tr("Localizable", "onboarding.screen5.phoneSix", fallback: "phoneSix")
      /// userLearnerOnboarding
      internal static let userLearnerOnboardingImage = L10n.tr("Localizable", "onboarding.screen5.userLearnerOnboardingImage", fallback: "userLearnerOnboarding")
    }
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
