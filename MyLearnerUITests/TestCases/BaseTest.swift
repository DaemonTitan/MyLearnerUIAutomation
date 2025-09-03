//
//  BaseTest.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 26/8/2025.
//

import Foundation
import XCTest

class BaseTest: XCTestCase {
    
    let installApp = AppManager(BaseScreen.appStore)
    let deleteApp = DeleteApp(BaseScreen.springboard)
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        
        let myLearnerApp = XCUIApplication(bundleIdentifier: "au.gov.vic.vicroads.dlk")
        myLearnerApp.launch()
        
//        installApp.searchAppFromAppStore()
//        installApp.downloadApp()
//        installApp.openApp()
    }
    
    override func tearDownWithError() throws {
        //deleteApp.deleteAppFromSpringboard()
    }
}
