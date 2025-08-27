//
//  AppManagement.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 26/8/2025.
//

import Foundation
import XCTest

class AppStore: BaseScreen {
    
    enum AppStoreElement {
        static let tabBarSearch = appStore.tabBars.buttons[L10n.AppStore.searchButton].firstMatch
        static let navigationBar = appStore.navigationBars[L10n.AppStore.searchButton].firstMatch
        static let searchField = navigationBar.searchFields[L10n.AppStore.searchField].firstMatch
        static let searchButton = appStore.buttons[L10n.AppStore.searchButton]
        static let myLearnerButton = appStore.collectionViews.cells.buttons[L10n.AppStore.appButton].firstMatch
        static let searchKey = appStore.buttons[L10n.AppStore.pressKey].firstMatch
        static let getButton = appStore.buttons[L10n.AppStore.getButton].firstMatch
        static let redownloadButton = appStore.buttons[L10n.AppStore.redownloadButton].firstMatch
        static let openButton = appStore.buttons[L10n.AppStore.openButton].firstMatch
    }

    required init(_ appName: XCUIApplication) {
        super.init()
    }
    
    func launchAppStore() {
        BaseScreen.appStore.launch()
    }
    
    func selectSearchTab() {
        AppStoreElement.tabBarSearch.isVisible()
        AppStoreElement.tabBarSearch.tap()
    }
    
    func enterSearchQuery() {
        AppStoreElement.searchField.isVisible()
        AppStoreElement.navigationBar.isVisible()
        AppStoreElement.searchField.tap()
        AppStoreElement.navigationBar.typeText(L10n.AppStore.enterTextMyLearners)
        AppStoreElement.searchKey.tap()
    }
    
    func appAppearsInSearchResult() {
        AppStoreElement.myLearnerButton.isVisible()
        AppStoreElement.myLearnerButton.tap()
    }
    
    func downloadAppFromAppStore() {
        if AppStoreElement.getButton.exists {
            AppStoreElement.getButton.tap()
        } else if AppStoreElement.redownloadButton.exists {
            AppStoreElement.redownloadButton.tap()
        } else {
            print(L10n.Messages.buttonNotFound)
        }
    }
    
    func openInstalledAppFormAppStore() {
        AppStoreElement.openButton.waitUntilItemVisible()
        AppStoreElement.openButton.tap()
    }
}
