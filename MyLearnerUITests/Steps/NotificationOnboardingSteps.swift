//
//  NotificationOnboardingSteps.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 10/9/2025.
//

import Foundation

class NotificationOnboardingSteps {
    
    let notificationOnboardingScreen = NotificationOnboardingScreen()
    
    func assertImageAndText() {
        notificationOnboardingScreen.isNotificationOnboardingImageVisible()
        notificationOnboardingScreen.isNotificationOnboardingInstructionVisible()
    }
    
    func tapOnEnableButton() {
        notificationOnboardingScreen.isEnableNotificationButtonVisible()
        notificationOnboardingScreen.tapOnEnableNotificationButton()
    }
    
    func tapOnNotNowButton() {
        notificationOnboardingScreen.isNotNowButtonVisible()
        notificationOnboardingScreen.tapOnNotNowButton()
    }
    
    func tapOnAllowButton() {
        if notificationOnboardingScreen.isAllowButtonVisible() {
            notificationOnboardingScreen.tapOnAllowButton()
        }
    }
    
    func tapOnDontAllowButton() {
        if notificationOnboardingScreen.isNotAllowButtonVisible() {
            notificationOnboardingScreen.tapOnDontAllowButton()
        }
    }
}
