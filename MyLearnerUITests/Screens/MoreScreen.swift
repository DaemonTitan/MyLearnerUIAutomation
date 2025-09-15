//
//  SettingScreen.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 10/9/2025.
//

import Foundation
import XCTest

class MoreScreen: BaseScreen {
    
    enum Text {
        static let moreTitle = myLearnerApp.staticTexts[L10n.MoreScreen.moreTitle]
        static let settingSectionTitle = myLearnerApp.staticTexts[L10n.MoreScreen.settingSectionTitle]
        static let notificationSettingTitle = myLearnerApp.staticTexts[L10n.MoreScreen.notificationSettingTitle]
        static let notificationSettingBody = myLearnerApp.staticTexts[L10n.MoreScreen.notificationSettingBody]
        static let updateProfileText = myLearnerApp.staticTexts[L10n.MoreScreen.updateProfileText]
        static let resourcesSectionTitle = myLearnerApp.staticTexts[L10n.MoreScreen.resourcesSectionTitle]
        static let submitDriveTitle = myLearnerApp.staticTexts[L10n.MoreScreen.submitDriveTitle]
        static let submitDriveBody = myLearnerApp.staticTexts[L10n.MoreScreen.submitDriveBody]
        static let supportFeedbackSectionTitle = myLearnerApp.staticTexts[L10n.MoreScreen.supportFeedbackSectionTitle]
        static let helpAndSupportTitle = myLearnerApp.staticTexts[L10n.MoreScreen.helpAndSupportTitle]
        static let feedbackTitle = myLearnerApp.staticTexts[L10n.MoreScreen.feedbackTitle]
        static let accountManagementSectionTitle = myLearnerApp.staticTexts[L10n.MoreScreen.accountManagementSectionTitle]
        static let deactiveAccountTitle = myLearnerApp.staticTexts[L10n.MoreScreen.deactiveAccountTitle]
    }
    
    enum Button {
        static let logoutButton = myLearnerApp.buttons[L10n.MoreScreen.logoutButton]
        static let updateProfileButton = myLearnerApp.buttons[L10n.MoreScreen.updateProfileButton]
        static let viewTutorialButton = myLearnerApp.buttons[L10n.MoreScreen.viewTutorialButton]
        static let submitDriveButton = myLearnerApp.buttons[L10n.MoreScreen.submitDriveButton]
        static let helpAndSupportButton = myLearnerApp.buttons[L10n.MoreScreen.helpAndSupportButton]
        static let feedbackButton = myLearnerApp.buttons[L10n.MoreScreen.feedbackButton]
        static let deactiveAccountButton = myLearnerApp.buttons[L10n.MoreScreen.deactiveAccountButton]
    }
    
    static func appVersion(_ version: String) -> XCUIElement {
        return myLearnerApp.staticTexts[L10n.MoreScreen.appVersion(String(version))]
    }
    
    func isMoreTitleVisible() {
        Text.moreTitle.isVisible()
    }
    
    func isSettingSectionTitleVisible() {
        Text.settingSectionTitle.isVisible()
    }
    
    func isNotificationSettingTitleVisible() {
        Text.notificationSettingTitle.isVisible()
    }
    
    func isNotificationSettingBodyVisible() {
        Text.notificationSettingBody.isVisible()
    }
    
    func isUpdateProfileTextVisible() {
        Text.updateProfileText.isVisible()
    }
    
    func isResourcesSectionTitleVisible() {
        Text.resourcesSectionTitle.isVisible()
    }
    
    func isSubmitDriveTitleVisible() {
        Text.submitDriveTitle.isVisible()
    }
    
    func isSubmitDriveBodyVisible() {
        Text.submitDriveBody.isVisible()
    }
    
    func isSupportFeedbackSectionTitleVisible() {
        Text.supportFeedbackSectionTitle.isVisible()
    }
    
    func isHelpAndSupportTitleVisible() {
        Text.helpAndSupportTitle.isVisible()
    }
    
    func isFeedbackTitleVisible() {
        Text.feedbackTitle.isVisible()
    }
    
    func isAccountManagementSectionTitle() {
        Text.accountManagementSectionTitle.isVisible()
    }
    
    func isDeactiveAccountTitleVisible() {
        Text.deactiveAccountTitle.isVisible()
    }
    
    func isAppVersionVisible(_ version: String) {
        MoreScreen.appVersion(version).isVisible()
    }
    
    func isLogoutButtonVisible() {
        Button.logoutButton.isVisible()
    }
    
    func tapOnLogoutButton() {
        Button.logoutButton.tap()
    }
    
    func isUpdateProfileButtonVisible() {
        Button.logoutButton.isVisible()
    }
    
    func tapOnUpdateProfileButton() {
        Button.updateProfileButton.tap()
    }
    
    func isViewTutorialButtonVisible() {
        Button.viewTutorialButton.isVisible()
    }
    
    func tapOnViewTutorialButton() {
        Button.viewTutorialButton.tap()
    }
    
    func isSubmitDriveButtonVisible() {
        Button.submitDriveButton.isVisible()
    }
    
    func tapOnSubmitDriveButton() {
        Button.submitDriveButton.tap()
    }
    
    func isHelpAndSupportButtonVisible() {
        Button.helpAndSupportButton.isVisible()
    }
    
    func tapOnHelpAndSupportButton() {
        Button.helpAndSupportButton.tap()
    }
    
    func isFeedbackButtonVisible() {
        Button.feedbackButton.isVisible()
    }
    
    func tapOnFeedbackButton() {
        Button.feedbackButton.tap()
    }
    
    func isDeactiveAccountButtonVisible() {
        Button.deactiveAccountButton.isVisible()
    }
    
    func tapOnDeactiveAccountButton() {
        Button.deactiveAccountButton.tap()
    }
}
