//
//  HomeScreenSteps.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 10/9/2025.
//

import Foundation

class HomeScreenSteps {
    
    let homeScreen = HomeScreenUI()
    
    func assertTutorial() {
        homeScreen.isReadMoreLabelVisible()
        homeScreen.isInstructionTextVisible()
    }
    
    func tapOnCrossButton() {
        homeScreen.isCrossButtonVisible()
        homeScreen.tapOnCrossButton()
    }
    
    func assertScreenTitle() {
        homeScreen.isScreenTitleVisible()
    }
    
    func assertBanner() {
        homeScreen.isBanerTitleVisible()
        homeScreen.isBannerBodyisVisible()
    }
    
    func assertUserName(name: String) {
        homeScreen.isUserNameVisible(name: name)
    }
    
    func assertDriveDetails() {
        homeScreen.isDriveDetailTitleVisible()
        homeScreen.isVerifiedDriveVisible()
        homeScreen.isNumOfLearnersVisible()
        homeScreen.isDriveIn7DaysVisible()
    }
}
