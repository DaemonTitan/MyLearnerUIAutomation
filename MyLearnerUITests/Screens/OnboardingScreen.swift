//
//  OnboardingScreen.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 20/8/2025.
//

import Foundation
import XCTest

class OnboardingScreen: BaseScreen {
    
    enum Images {
        /// Screen 1
        static let vicRoadsLogoImage = myLearnerApp.images[L10n.Onboarding.Screen1.vicRoadsLogoimage]
        static let welcomeIcon = myLearnerApp.images[L10n.Onboarding.Screen1.welcomeIcon]
        /// Screen 2
        static let learningOnboardingImage = myLearnerApp.images[L10n.Onboarding.Screen2.learningOnboardingImage]
        static let phoneOneIcon = myLearnerApp.images[L10n.Onboarding.Screen2.phoneOneIcon]
        /// Screen 3
        static let Screen3userLearnerOnboardingImage = myLearnerApp.images[L10n.Onboarding.Screen3.userLearnerOnboardingImage]
        static let phoneTwoIcon = myLearnerApp.images[L10n.Onboarding.Screen3.phoneTwo]
        /// Screen 4
        static let userSupervisorOnboardingImage = myLearnerApp.images[L10n.Onboarding.Screen4.userSupervisorOnboardingImage]
        static let phoneThreeIcon = myLearnerApp.images[L10n.Onboarding.Screen4.phoneThree]
        /// Screen 5
        static let userLearnerOnboardingImage = myLearnerApp.images[L10n.Onboarding.Screen5.userLearnerOnboardingImage]
        static let phoneSixIcon = myLearnerApp.images[L10n.Onboarding.Screen5.phoneSix]
        
    }
    
    enum Labels {
        /// Screen 1
        static let hi = myLearnerApp.staticTexts[L10n.Onboarding.Screen1.hi]
        static let appInfo = myLearnerApp.staticTexts[L10n.Onboarding.Screen1.appintroduction]
        /// Screen 2
        static let logHours = myLearnerApp.staticTexts[L10n.Onboarding.Screen2.logHours]
        static let recordDrivers = myLearnerApp.staticTexts[L10n.Onboarding.Screen2.recordDrivers]
        /// Screen 3
        static let approvedDrivers = myLearnerApp.staticTexts[L10n.Onboarding.Screen3.approveDrives]
        static let reviewLearner = myLearnerApp.staticTexts[L10n.Onboarding.Screen3.reviewLearner]
        /// Screen 4
        static let trackProgress = myLearnerApp.staticTexts[L10n.Onboarding.Screen4.trackProgress]
        static let seeDriveProgress = myLearnerApp.staticTexts[L10n.Onboarding.Screen4.seeDriveProgress]
        /// Screen 5
        static let learnTogether = myLearnerApp.staticTexts[L10n.Onboarding.Screen5.learnTogether]
        static let getRoadSafetyTips = myLearnerApp.staticTexts[L10n.Onboarding.Screen5.getRoadSafetyTips]
    }
    
    enum Buttons {
        static let skipButton = myLearnerApp.buttons[L10n.Onboarding.skipButton]
        static let doneButton = myLearnerApp.buttons[L10n.Onboarding.doneButton]
    }
    
    let pageIndicator = myLearnerApp.pageIndicators.firstMatch
    
    
    // MARK: Buttons, Page Indicator and Swip Actions
    func assertPagedScreens(assertForPage: (Int) -> Void) {
        let initalPage = 1
        let totalPage = 5
        pageIndicator.isVisible()

        for currentPage in initalPage...totalPage {
            //pageIndicator.textMatches(L10n.Onboarding.pageIndicator(currentPage))
            pageIndicator.textMatches(pageIndicator.value as? String, expected: L10n.Onboarding.pageIndicator(currentPage))

            if currentPage < totalPage {
                pageIndicator.swipeLeft()
            }
        }
    }
    
    func isSkipButtonVisible() {
        Buttons.skipButton.isVisible()
    }
    
    func tapOnSkipButton() {
        Buttons.skipButton.isVisible()
        Buttons.skipButton.tap()
    }
    
    func isDoneButtonVisible() {
        Buttons.doneButton.isVisible()
    }
    
    func tapOnDoneButton() {
        Buttons.doneButton.tap()
    }
    
    // MARK: 1st Onboarding Screen
    func isVicLogoVisible() {
        Images.vicRoadsLogoImage.isVisible()
    }
    
    func isWelcomeIconVisible() {
        Images.welcomeIcon.isVisible()
    }
    
    func isHiTextVisible() {
        Labels.hi.isVisible()
    }
    
    func isAppInfoTextVisible() {
        Labels.appInfo.isVisible()
    }
    
    // MARK: 2nd Onboarding Screen
    func isLearningOnboardingImageVisible() {
        Images.learningOnboardingImage.isVisible()
    }
    
    func isPhoneOneIconVisible() {
        Images.phoneOneIcon.isVisible()
    }
    
    func isLogHoursLabelVisible() {
        Labels.logHours.isVisible()
    }
    
    func isRecordDriversVisible() {
        Labels.recordDrivers.isVisible()
    }
    
    // MARK: 3rd Onboarding Screen
    func islearningOnboardingImage() {
        Images.learningOnboardingImage.isVisible()
    }
    
    func isPhoneTwoIconVisible() {
        Images.phoneTwoIcon.isVisible()
    }
    
    func isApproveDriversLabelVisible() {
        Labels.approvedDrivers.isVisible()
    }
    
    func isReviewLearnerTextVisible() {
        Labels.reviewLearner.isVisible()
    }
    
    // MARK: 4th Onboarding Screen
    func isUserSupervisorOnboardingImageVisible() {
        Images.userSupervisorOnboardingImage.isVisible()
    }
    
    func isPhoneThreeIconVisible() {
        Images.phoneThreeIcon.isVisible()
    }
    
    func isTrackProgressVisible() {
        Labels.trackProgress.isVisible()
    }
    
    func isSeeDriveProgressVisible() {
        Labels.seeDriveProgress.isVisible()
    }
    
    // MARK: 5th Onboarding Screen
    func isUserLearnerOnboardingImage() {
        Images.userLearnerOnboardingImage.isVisible()
    }
    
    func isPhoneSixIconVisible() {
        Images.phoneSixIcon.isVisible()
    }
    
    func isLearnTogetherVisible() {
        Labels.learnTogether.isVisible()
    }
    
    func isGetRoadSafetyTipsVisible() {
        Labels.getRoadSafetyTips.isVisible()
    }
}
