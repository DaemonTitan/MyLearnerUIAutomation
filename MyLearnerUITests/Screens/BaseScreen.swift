//
//  BaseScreen.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 20/8/2025.
//

import Foundation
import XCTest

class BaseScreen {
    static let visibleTimeOut: TimeInterval = 3.0
    static let pressOnDuration: TimeInterval = 1.3
    static let waitForDownload: TimeInterval = 3000
    static let appTimeOut = 6.0
    
    static let appStore = XCUIApplication(bundleIdentifier: L10n.BoundleId.appStore)
    static let springboard = XCUIApplication(bundleIdentifier: L10n.BoundleId.springBoard)
    static let myLearnerApp = XCUIApplication(bundleIdentifier: L10n.BoundleId.mylearner)
    static let safari = XCUIApplication(bundleIdentifier: L10n.BoundleId.safari)
}
