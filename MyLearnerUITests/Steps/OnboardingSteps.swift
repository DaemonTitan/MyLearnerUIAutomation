//
//  OnboardingSteps.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 27/8/2025.
//

import Foundation

class OnboardingSteps: OnboardingScreen {
    
    // MARK: 1st Onboarding Screen
    func validateFirstOnboardingScreenElements() {
        isWelcomeIconVisible()
        isHiTextVisible()
        isAppInfoTextVisible()
        isSkipButtonVisible()
    }
    
    // MARK: 2nd Onboarding Screen
    func validateSecondOnboardingScreenElements() {
        isLearningOnboardingImageVisible()
        isPhoneOneIconVisible()
        isLogHoursLabelVisible()
        isRecordDriversVisible()
    }
    
    // MARK: 3rd Onboarding Screen
    func validateThirdOnboardingScreenElements() {
        islearningOnboardingImage()
        isPhoneTwoIconVisible()
        isApproveDriversLabelVisible()
        isReviewLearnerTextVisible()
    }
    
    // MARK: 4th Onboarding Screen
    func validateFourthOnboardingScreenElements() {
        isUserSupervisorOnboardingImageVisible()
        isPhoneThreeIconVisible()
        isTrackProgressVisible()
        isSeeDriveProgressVisible()
    }
    
    // MARK: 5th Onboarding Screen
    func validateFivethOnboardingScreenElements() {
        isUserLearnerOnboardingImage()
        isPhoneSixIconVisible()
        isLearnTogetherVisible()
        isGetRoadSafetyTipsVisible()
    }
    
    func tapSkipButton() {
        tapOnSkipButton()
    }
    
    func assertOnboardingScreen() {
        assertPagedScreens { page in
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

