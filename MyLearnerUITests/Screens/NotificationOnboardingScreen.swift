//
//  NotificationSettingScreen.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 9/9/2025.
//

import Foundation

class NotificationOnboardingScreen: BaseScreen {
        
    private let notificationOnboardingImage = myLearnerApp.images[L10n.NotificationOnboarding.image]
    private let notificationOnboardingInstruction = myLearnerApp.staticTexts[L10n.NotificationOnboarding.instruction]
    private let enableNotificationButton = myLearnerApp.buttons[L10n.NotificationOnboarding.enableButton]
    private let notNowButton = myLearnerApp.buttons[L10n.NotificationOnboarding.notNowButton]
    
    func isNotificationOnboardingImageVisible() {
        notificationOnboardingImage.isVisible()
    }
    
    func isNotificationOnboardingInstructionVisible() {
        notificationOnboardingInstruction.isVisible()
    }
    
    func isEnableNotificationButtonVisible() {
        enableNotificationButton.isVisible()
    }
    
    func isNotNowButtonVisible() {
        notNowButton.isVisible()
    }
    
    func tapOnEnableNotificationButton() {
        enableNotificationButton.tap()
    }
    
    func tapOnNotNowButton() {
        notNowButton.isVisible()
    }
}
