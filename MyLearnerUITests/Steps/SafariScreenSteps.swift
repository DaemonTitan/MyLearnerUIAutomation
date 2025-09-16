//
//  SafariScreenSteps.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 15/9/2025.
//

import Foundation

class SafariScreenSteps {
    
    let safariScreen = SafariScreen()
    
    func assertSafariOpened() {
        safariScreen.isSafariVisible()
    }
    
    func assertMyVicRoadsWebpageVisible() {
        safariScreen.isMyVicRoadsPageVisible()
        safariScreen.isSafariOpenMyVicRoadsPage()
    }
    
    func assertSubmitDriveManuallyWebpageVisible() {
        safariScreen.isSafariOpenSubmitDriveManuallyPage()
    }
}
