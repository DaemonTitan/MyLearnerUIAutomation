//
//  OnboardingSteps.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 27/8/2025.
//

import Foundation

class OnboardingSteps {
    
    let onboardingScreen = OnboardingScreen()
    
    // MARK: 1st Onboarding Screen
    func validateFirstOnboardingScreenElements() {
        onboardingScreen.isWelcomeIconVisible()
        onboardingScreen.isHiTextVisible()
        onboardingScreen.isAppInfoTextVisible()
        onboardingScreen.isSkipButtonVisible()
    }
    
    // MARK: 2nd Onboarding Screen
    func validateSecondOnboardingScreenElements() {
        onboardingScreen.isLearningOnboardingImageVisible()
        onboardingScreen.isPhoneOneIconVisible()
        onboardingScreen.isLogHoursLabelVisible()
        onboardingScreen.isRecordDriversVisible()
    }
    
    // MARK: 3rd Onboarding Screen
    func validateThirdOnboardingScreenElements() {
        onboardingScreen.islearningOnboardingImage()
        onboardingScreen.isPhoneTwoIconVisible()
        onboardingScreen.isApproveDriversLabelVisible()
        onboardingScreen.isReviewLearnerTextVisible()
    }
    
    // MARK: 4th Onboarding Screen
    func validateFourthOnboardingScreenElements() {
        onboardingScreen.isUserSupervisorOnboardingImageVisible()
        onboardingScreen.isPhoneThreeIconVisible()
        onboardingScreen.isTrackProgressVisible()
        onboardingScreen.isSeeDriveProgressVisible()
    }
    
    // MARK: 5th Onboarding Screen
    func validateFivethOnboardingScreenElements() {
        onboardingScreen.isUserLearnerOnboardingImage()
        onboardingScreen.isPhoneSixIconVisible()
        onboardingScreen.isLearnTogetherVisible()
        onboardingScreen.isGetRoadSafetyTipsVisible()
    }
    
    func tapSkipButton() {
        onboardingScreen.tapOnSkipButton()
    }
    
    func tapOnDoneButton() -> LoginSteps {
        onboardingScreen.isDoneButtonVisible()
        onboardingScreen.tapOnDoneButton()
        return LoginSteps()
    }
    
    func assertEachOnboardingScreen() {
        onboardingScreen.assertPagedScreens { page in
            switch page {
            case 1:
                validateFirstOnboardingScreenElements()
            case 2:
                validateSecondOnboardingScreenElements()
            case 3:
                validateFourthOnboardingScreenElements()
            case 4:
                validateFivethOnboardingScreenElements()
            case 5:
                validateFivethOnboardingScreenElements()
            default:
                print("Error")
            }
        }
    }
    
}

