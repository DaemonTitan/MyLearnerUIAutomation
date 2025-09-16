//
//  MoreScreenUITest.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 11/9/2025.
//

import Foundation
import XCTest

class MoreScreenUITest: BaseTest {
    
    let userAccount = Users()
    let loginSteps = LoginSteps()
    let pinSteps = PinSteps()
    let moreScreenSetps = MoreScreenSteps()
    let safariScreenSteps = SafariScreenSteps()
    let onboardingScreenSteps = OnboardingSteps()
    let tabBarSteps = TabBarSteps()
    
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        myLearnerApp.launch()
        pinSteps.tapOnPin(pin: userAccount.supervisor.pin)
        tabBarSteps.tapOnMoreTab()
    }
    
    func test_GIVENUserLogin_WHENOpenMoreScreen_THENMoreScreenAppears() {
        moreScreenSetps.assertMoreScreenTitle()
        moreScreenSetps.assertSettingsSection()
        moreScreenSetps.assertResourcesSection()
        moreScreenSetps.assertSupportAndFeedBackSection()
        moreScreenSetps.assertAccountManagementSection()
        moreScreenSetps.assertAppVersion(version: "1.15.3")
    }
    
    func test_GIVENUserOpensMoreScreen_WHENTapOnUpdateProfileAndSettings_THENLoginMyVicRoadsWebPageOpens() {
        moreScreenSetps.tapOnUpdateProfile()
        safariScreenSteps.assertSafariOpened()
        safariScreenSteps.assertMyVicRoadsWebpageVisible()
    }
    
    func test_GIVENUserOpensMoreScreen_WHENTapOnViewTurorial_THENOnboardingScreenAppears() {
        moreScreenSetps.tapOnViewTutorialButton()
        onboardingScreenSteps.assertEachTutorialScreen()
        onboardingScreenSteps.tapOnCloseButton()
    }
    
    func test_GIVENUserOpenMoreScreen_WHENTapOnSubmitADriveManually_THENSubmitADriveWebPageOpens() {
        moreScreenSetps.tapOnSubmitDriveButton()
        safariScreenSteps.assertSafariOpened()
        safariScreenSteps.assertSubmitDriveManuallyWebpageVisible()
    }
    
    func test_GIVENUserOpenMoreScreen_WHENTapOnHelpAndSupport_THENHelpAndSupportScreenOpens() {
        moreScreenSetps.assertSupportAndFeedBackSection()
        moreScreenSetps.tapOnHelpAndSupportButton()
        
        
    }
    
    func test_GIVENUserOpenMoreScreen_WHENTapOnProvideFeedback_THENFeedbackScreenOpens() {
        moreScreenSetps.tapOnProvideFeedbackButton()
        
        
    }
    
    func test_GIVENUserOpensMoreScreen_WHENTapOnDeactivateAccount_THENDeactiveAccountWebPageOpens() {
        moreScreenSetps.tapOnDeactiveAccountButton()
        
    }
    
    
    
    
    
    
}
