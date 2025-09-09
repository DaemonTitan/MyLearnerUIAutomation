//
//  MyLearnerUITests.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 20/8/2025.
//

import XCTest
import Foundation

final class MyLearnerUITests: XCTestCase {
    
    let onboardingSteps = OnboardingSteps()

    @MainActor
        func testLaunch() throws {
            let appStore = XCUIApplication(bundleIdentifier: "com.apple.AppStore")
            appStore.launch()
            
            // Search icon on tab bar
            appStore.tabBars.buttons["Search"].firstMatch.tap()
            
            // Search App
            appStore.navigationBars["Search"].searchFields["AppStore.searchField"].firstMatch.tap()
            appStore.navigationBars["Search"].firstMatch.typeText("myLearners")
            appStore.buttons["search"].firstMatch.tap()
            

            let app = appStore.collectionViews.cells.buttons["myLearners, VicRoads Official Learning App"]

            XCTAssert(app.waitForExistence(timeout: 2), "App is not here")
            app.tap()
            
            //appStore.buttons["re-download"].firstMatch.tap()
            
            let open = appStore.buttons["Open"].firstMatch
            print(appStore.buttons["Get"].accessibilityElements)
            
            XCTAssert(open.waitForExistence(timeout: 2000))
            open.tap()
            }
        
        func testDeleteApp() {
            
            XCUIDevice.shared.press(XCUIDevice.Button.home)
            
            let app = XCUIApplication(bundleIdentifier: "com.apple.springboard")
            
            let icon = app.icons["myLearners"]
            icon.press(forDuration: 1.3)
            
            let removeAppButton = app.buttons["Remove App"]
            removeAppButton.tap()
            
            let deleteAppButton = app.buttons["Delete App"]
            deleteAppButton.tap()
            
            let deleteButton = app.buttons["Delete"]
            deleteButton.tap()
        }
        
        func test() throws {
            let myLearnerApp = XCUIApplication(bundleIdentifier: "au.gov.vic.vicroads.dlk")
            myLearnerApp.launch()
            
            let pageIndicator = myLearnerApp.pageIndicators.firstMatch
//            XCTAssertEqual(pageIndicator.value as? String, "page 1 of 5", "Incorrect page indicator")
//
//            pageIndicator.swipeLeft()
//
//            XCTAssertEqual(pageIndicator.value as? String, "page 2 of 5", "Incorrect page indicator")
            
            
            
            for currentPage in 1...5 {
                
                XCTAssertEqual(pageIndicator.value as? String, L10n.Onboarding.pageIndicator(currentPage), "Incorrent page indocator" )
                
                if currentPage < 5 {
                    myLearnerApp.swipeLeft()
                }
            }
//            myLearnerApp.buttons["Skip"].firstMatch.tap()
//            XCTAssert(myLearnerApp.staticTexts["Hi!"].waitForExistence(timeout: 2), "Text is visible")
            
        }
    
    func test1() {
        let myLearnerApp = XCUIApplication(bundleIdentifier: "au.gov.vic.vicroads.dlk")
        myLearnerApp.launch()
        
        
        
        
        
        

        
    }
    

}
