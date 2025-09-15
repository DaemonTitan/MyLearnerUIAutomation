//
//  MoreSteps.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 11/9/2025.
//

import Foundation

class MoreScreenSteps {
    
    let moreScreen = MoreScreen()
    
    func assertMoreScreenTitle() {
        moreScreen.isMoreTitleVisible()
    }
    
    func assertSettingsSection() {
        moreScreen.isSettingSectionTitleVisible()
        moreScreen.isNotificationSettingTitleVisible()
        moreScreen.isNotificationSettingBodyVisible()
        moreScreen.isUpdateProfileTextVisible()
    }
    
    func tapOnUpdateProfile() {
        moreScreen.isUpdateProfileButtonVisible()
        moreScreen.tapOnUpdateProfileButton()
    }
    
    func assertResourcesSection() {
        moreScreen.isResourcesSectionTitleVisible()
        moreScreen.isSubmitDriveTitleVisible()
        moreScreen.isSubmitDriveBodyVisible()
    }
    
    func tapOnViewTutorialButton() {
        moreScreen.isViewTutorialButtonVisible()
        moreScreen.tapOnViewTutorialButton()
    }
    
    func tapOnSubmitDriveButton() {
        moreScreen.isSubmitDriveBodyVisible()
        moreScreen.tapOnSubmitDriveButton()
    }
    
    func assertSupportAndFeedBackSection() {
        moreScreen.isSupportFeedbackSectionTitleVisible()
        moreScreen.isHelpAndSupportTitleVisible()
        moreScreen.isFeedbackTitleVisible()
    }
    
    func tapOnHelpAndSupportButton() {
        moreScreen.isHelpAndSupportButtonVisible()
        moreScreen.tapOnHelpAndSupportButton()
    }
    
    func tapOnProvideFeedbackButton() {
        moreScreen.isFeedbackButtonVisible()
        moreScreen.tapOnFeedbackButton()
    }
    
    func assertAccountManagementSection() {
        moreScreen.isAccountManagementSectionTitle()
        moreScreen.isDeactiveAccountTitleVisible()
    }
    
    func tapOnDeactiveAccountButton() {
        moreScreen.isDeactiveAccountButtonVisible()
        moreScreen.tapOnDeactiveAccountButton()
    }
    
    func assertAppVersion(version: String) {
        moreScreen.isAppVersionVisible(version)
    }
}
