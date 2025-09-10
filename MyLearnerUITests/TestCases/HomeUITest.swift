//
//  HomeUITest.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 10/9/2025.
//

import Foundation
import XCTest

class HomeUITest: XCTestCase {
    
    let baseTest = BaseTest()
    let userAccount = Users()
    let loginSteps = LoginSteps()
    let pinSteps = PinSteps()
    let notificationOnboardingSteps = NotificationOnboardingSteps()
    let homeScreenSteps = HomeScreenSteps()
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        baseTest.myLearnerApp.launch()
    }
    
    func test_GIVENSupervisorLoggedOut_WHENLogsIn_THENLandOnDashboardScreen() {
        loginSteps.enterUserName(email: userAccount.supervisor.userName)
        loginSteps.enterPassword(password: userAccount.supervisor.password)
        loginSteps.tapOnLoginButton()
        pinSteps.tapOnPin(pin: userAccount.supervisor.pin)
        homeScreenSteps.assertScreenTitle()
    }
    
    func test_GIVENSupervisorLoggedIn_WHENOpensApp_THENLandOnDashboardScreen() {
        pinSteps.tapOnPin(pin: userAccount.supervisor.pin)
        homeScreenSteps.assertScreenTitle()
    }
}
