//
//  OnboardingTest.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 28/8/2025.
//

import XCTest

class OnboardingTest: XCTestCase {
    
    let onboardingSteps = OnboardingSteps()
    let installApp = AppManager(BaseScreen.appStore)
    let deleteApp = DeleteApp(BaseScreen.springboard)
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        installApp.searchAppFromAppStore()
        installApp.downloadApp()
        installApp.openApp()
    }
    
    func test_Each_Onboarding_Screen() {
        onboardingSteps.assertEachOnboardingScreen()
        let loginSteps = onboardingSteps.tapOnDoneButton()
        loginSteps.assertImages()
        deleteApp.deleteAppFromSpringboard()
    }
    
    func test_Skip_Onboarding() {
        onboardingSteps.tapSkipButton()
        let loginSteps = onboardingSteps.tapOnDoneButton()
        loginSteps.assertImages()
    }
}
