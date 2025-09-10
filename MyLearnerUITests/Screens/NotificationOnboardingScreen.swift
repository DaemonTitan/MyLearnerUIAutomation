//
//  NotificationSettingScreen.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 9/9/2025.
//

import Foundation

class NotificationOnboardingScreen: BaseScreen {
    
    enum TextAndImage {
        static let notificationOnboardingImage = myLearnerApp.images[L10n.NotificationOnboarding.image]
        static let notificationOnboardingInstruction = myLearnerApp.staticTexts[L10n.NotificationOnboarding.instruction]
    }
    
    enum Buttons {
        static let enableNotificationButton = myLearnerApp.buttons[L10n.NotificationOnboarding.enableButton]
        static let notNowButton = myLearnerApp.buttons[L10n.NotificationOnboarding.notNowButton]
        static let allowButton = springboard.alerts.buttons[L10n.SystemAlert.allowButton]
        static let dontAllowButton = springboard.alerts.buttons[L10n.SystemAlert.dontAllow]
    }

    
    func isNotificationOnboardingImageVisible() {
        TextAndImage.notificationOnboardingImage.isVisible()
    }
    
    func isNotificationOnboardingInstructionVisible() {
        TextAndImage.notificationOnboardingInstruction.isVisible()
    }
    
    func isEnableNotificationButtonVisible() {
        Buttons.enableNotificationButton.isVisible()
    }
    
    func isNotNowButtonVisible() {
        Buttons.notNowButton.isVisible()
    }
    
    func tapOnEnableNotificationButton() {
        Buttons.enableNotificationButton.tap()
    }
    
    func tapOnNotNowButton() {
        Buttons.notNowButton.isVisible()
    }
    
    func isAllowButtonVisible() -> Bool {
        return Buttons.allowButton.isDisplayed()
    }
    
    func isNotAllowButtonVisible() -> Bool {
        return Buttons.dontAllowButton.isDisplayed()
    }
    
    func tapOnAllowButton() {
            Buttons.allowButton.tap()

    }
    
    func tapOnDontAllowButton() {
            Buttons.dontAllowButton.tap()
    }
}
