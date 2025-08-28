//
//  OnboardingTest.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 28/8/2025.
//

import XCTest

class OnboardingTest: BaseTest {
    
    let onboardingSteps = OnboardingSteps()
    
    @MainActor
    func testOnboardingScreen() {
        let myLearnerApp = XCUIApplication(bundleIdentifier: "au.gov.vic.vicroads.dlk")
        myLearnerApp.launch()
        onboardingSteps.assertOnboardingScreen()
    }
}
