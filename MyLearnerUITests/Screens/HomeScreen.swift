//
//  HomeScreenUI.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 10/9/2025.
//

import Foundation
import XCTest

class HomeScreenUI: BaseScreen {
    
    enum Text {
        static let myLearnerTitle = myLearnerApp.staticTexts[L10n.Pin.mylearnerLabel]
        static let readMoreLabel = myLearnerApp.staticTexts[L10n.HomeScreen.readMoreLabel]
        static let instructionsText = myLearnerApp.staticTexts[L10n.HomeScreen.instructionsText]
        static let bannerTitle = myLearnerApp.staticTexts[L10n.HomeScreen.bannerTitle]
        static let bannerBody = myLearnerApp.staticTexts[L10n.HomeScreen.bannerBody]
        static let driveDetailTitle = myLearnerApp.staticTexts[L10n.HomeScreen.driveDetailTitle]
        static let verifiedDrive = myLearnerApp.staticTexts[L10n.HomeScreen.verifiedDrive]
        static let numOfLearners = myLearnerApp.staticTexts[L10n.HomeScreen.numOfLearners]
        static let driveIn7Days = myLearnerApp.staticTexts[L10n.HomeScreen.driveIn7Days]
    }
    
    enum Button {
        static let crossButton = myLearnerApp.buttons[L10n.HomeScreen.crossButton]
        static let bannerCrossButton = myLearnerApp.buttons[L10n.HomeScreen.bannerCrossButton]
        static let downloadNowButton = myLearnerApp.buttons[L10n.HomeScreen.downloadNowButton]
    }
    
    static func hiText(name: String) -> XCUIElement {
        return myLearnerApp.staticTexts[L10n.HomeScreen.hiText(String(name))]
    }
    
    func isScreenTitleVisible() {
        Text.myLearnerTitle.isVisible()
    }
    
    func isReadMoreLabelVisible() {
        Text.readMoreLabel.isVisible()
    }
    
    func isInstructionTextVisible() {
        Text.instructionsText.isVisible()
    }
    
    func isBanerTitleVisible() {
        Text.bannerTitle.isVisible()
    }
    
    func isBannerBodyisVisible() {
        Text.bannerTitle.isVisible()
    }
    
    func isUserNameVisible(name: String) {
        HomeScreenUI.hiText(name: name).isVisible()
    }
    
    func isDriveDetailTitleVisible() {
        Text.driveDetailTitle.isVisible()
    }
    
    func isVerifiedDriveVisible() {
        Text.verifiedDrive.isVisible()
    }
    
    func isNumOfLearnersVisible() {
        Text.numOfLearners.isVisible()
    }
    
    func isDriveIn7DaysVisible() {
        Text.driveIn7Days.isVisible()
    }
    
    func isCrossButtonVisible() {
        Button.crossButton.isVisible()
    }
    
    func isBannerCrossButtonVisible() {
        Button.bannerCrossButton.isVisible()
    }
    
    func isDownloadNowButtonVisible() {
        Button.downloadNowButton.isVisible()
    }
    
    func tapOnCrossButton() {
        Button.crossButton.tap()
    }
    
    func tapOnBannerCrossButton() {
        Button.bannerCrossButton.tap()
    }
    
    func tapOnDownloadNowbutton() {
        Button.downloadNowButton.tap()
    }
}
