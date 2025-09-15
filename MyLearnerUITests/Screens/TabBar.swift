//
//  TabBar.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 15/9/2025.
//

import Foundation

class TabBar: BaseScreen {
    
    private let dashboardTab = tabBar.buttons[L10n.TabBar.dashboardTab]
    private let driveTab = tabBar.buttons[L10n.TabBar.drivesTab]
    private let myTeachingTab = tabBar.buttons[L10n.TabBar.myTeachingTab]
    private let learnersTab = tabBar.buttons[L10n.TabBar.learnersTab]
    private let moreTab = tabBar.buttons[L10n.TabBar.moreTab]
    
    func isDashboardTabBarVisible() {
        dashboardTab.isVisible()
    }
    
    func isDriveTabBarVisible() {
        driveTab.isVisible()
    }
    
    func isMyTeachingTabBarVisible() {
        myTeachingTab.isVisible()
    }
    
    func isLearnersTabBarVisible() {
        learnersTab.isVisible()
    }
    
    func isMoreTabBarVisible() {
        moreTab.isVisible()
    }
    
    func tapOnDashbarod() {
        dashboardTab.tap()
    }
    
    func tapOnDrive() {
        driveTab.tap()
    }
    
    func tapOnMyTeaching() {
        myTeachingTab.tap()
    }
    
    func tapOnLearners() {
        learnersTab.tap()
    }
    
    func tapOnMore() -> MoreScreenSteps {
        moreTab.tap()
        return MoreScreenSteps()
    }
}
