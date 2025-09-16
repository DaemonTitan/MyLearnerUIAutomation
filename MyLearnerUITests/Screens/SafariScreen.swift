//
//  SafariScreen.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 15/9/2025.
//

import Foundation

class SafariScreen: BaseScreen {
    
    let safariApp = safari
    let addresssBar = safari.textFields[L10n.Safari.addressField]
    let myVicRoadsLoginPage = myLearnerApp.staticTexts[L10n.MoreScreen.myVicRoadsLogInScreen]
    
    func isSafariVisible() {
        safariApp.waitUntilAppState(.runningForeground)
    }
    
    func isMyVicRoadsPageVisible() {
        myVicRoadsLoginPage.isVisible()
    }
    
    func isSafariOpenMyVicRoadsPage() {
        addresssBar.tap()
        addresssBar.textMatches(addresssBar.value as? String, expected: URLs.myVicRoadsLoginPage)
    }
    
    func isSafariOpenSubmitDriveManuallyPage() {
        addresssBar.tap()
        addresssBar.textMatches(addresssBar.value as? String, expected: URLs.submitDriveManuallyPage)
    }
}
