//
//  AppInstall.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 26/8/2025.
//

import Foundation
import XCTest

class AppManager: AppStore{
    
    let appAction = AppStore(appStore)
    
    func searchAppFromAppStore() {
        launchAppStore()
        selectSearchTab()
        enterSearchQuery()
        appAppearsInSearchResult()
    }
    
    func downloadApp() {
        downloadAppFromAppStore()
    }
    
    func openApp() {
        openInstalledAppFormAppStore()
    }
}
