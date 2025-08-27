//
//  DeleteAppScreen.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 26/8/2025.
//

import Foundation
import XCTest

class DeleteAppScreen: BaseScreen {
    
    enum Buttons {
        static let appIcon = springboard.icons[L10n.Springboard.appIcon]
        static let removeAppButton = springboard.buttons[L10n.Springboard.removeAppButton]
        static let deleteAppButton = springboard.buttons[L10n.Springboard.deleteAppButton]
        static let confirmDeleteButton = springboard.buttons[L10n.Springboard.confirmDeleteButton]
    }
    
    required init(_ app: XCUIApplication) {
        super.init()
    }
    
    func goToHomeScreen() {
        XCUIDevice.shared.press(XCUIDevice.Button.home)
    }
    
    func pressOnAppIcon() {
        Buttons.appIcon.isVisible()
        Buttons.appIcon.press(forDuration: BaseScreen.pressOnDuration)
    }
    
    func pressOnRemoveAppButton() {
        Buttons.removeAppButton.isVisible()
        Buttons.removeAppButton.tap()
    }
    
    func pressOnDeleteAppButton() {
        Buttons.deleteAppButton.isVisible()
        Buttons.deleteAppButton.tap()
    }
    
    func pressOnConfirmDeleteButton() {
        Buttons.confirmDeleteButton.isVisible()
        Buttons.confirmDeleteButton.tap()
    }
}
