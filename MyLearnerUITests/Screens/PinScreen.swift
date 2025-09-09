//
//  PinScreen.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 4/9/2025.
//

import Foundation
import XCTest

class PinScreen: BaseScreen {
    
    enum Text {
        static let setupPinLabel = myLearnerApp.staticTexts[L10n.Pin.setupPinLabel]
        static let myLearnerLabel = myLearnerApp.staticTexts[L10n.Pin.mylearnerLabel]
        static let createPinMessage = myLearnerApp.staticTexts[L10n.Pin.createPinMessage]
        static let confirmPinMessage = myLearnerApp.staticTexts[L10n.Pin.confirmPinMessage]
        static let alertTitle = myLearnerApp.alerts.staticTexts[L10n.Pin.alertTitle]
        static let alertBody = myLearnerApp.alerts.staticTexts[L10n.Pin.alertBody]
        static let incorrectPinMessage = myLearnerApp.staticTexts[L10n.Pin.incorrentPinMessage]
    }
    
    enum Image {
        static let passcodeImage = myLearnerApp.images[L10n.Pin.passcodeImage]
    }
    
    enum Buttons {
        static let signOutButton = myLearnerApp.buttons[L10n.Pin.signOutButton]
        static let forgotButton = myLearnerApp.buttons[L10n.Pin.forgotButton]
        static let deleteButton = myLearnerApp.buttons[L10n.Pin.deleteButton]
        static let cancelButton = myLearnerApp.alerts.buttons[L10n.Pin.cancelButton]
        static let alertLogoutButton = myLearnerApp.alerts.buttons[L10n.Pin.alertLogoutButton]
    }
    
    static func pinIndicator(name: String) -> XCUIElement {
       return myLearnerApp.staticTexts[L10n.Pin.pinIndicator(name)]
    }
    
    static func numberPads(_ num: Int) -> XCUIElement {
        return myLearnerApp.buttons[String(num)]
    }
    
    func isSetupPinLabelVisible() {
        Text.setupPinLabel.isVisible()
    }
    
    func isMyLearnerLabelVisible() {
        Text.myLearnerLabel.isVisible()
    }
    
    func isCreatePinMessageVisible() {
        Text.createPinMessage.isVisible()
    }
    
    func isConfirmPinMessageVisible() {
        Text.confirmPinMessage.isVisible()
    }
    
    func isSignOutButtonVisible() {
        Buttons.signOutButton.isVisible()
    }
    
    func isPasscodeImageVisible() {
        Image.passcodeImage.isVisible()
    }
    
    func isPinIndicatorVisible(name: String) {
        PinScreen.pinIndicator(name: name).isVisible()
    }
    
    func isIncorrectPinMessageVisible() {
        Text.incorrectPinMessage.isVisible()
    }
    
    func isCancelButtonVisible() {
        Buttons.cancelButton.isVisible()
    }
    
    func isForgotButtonVisible() {
        Buttons.forgotButton.isVisible()
    }
    
    func isDeleteButtonVisible() {
        Buttons.deleteButton.isVisible()
    }
    
    func isAlertTitleVisible() {
        Text.alertTitle.isVisible()
    }
    
    func isAlertBodyVisible() {
        Text.alertBody.isVisible()
    }
    
    func isAlertCancelButtonVisible() {
        Buttons.cancelButton.isVisible()
    }
    
    func isAlertLogoutButtonVisible() {
        Buttons.alertLogoutButton.isVisible()
    }
    
    func isNumberPadVisible() {
        let startNum = 0
        let lastNum = 9
        
        for num in startNum...lastNum {
            PinScreen.numberPads(num).isVisible()
        }
    }
    
    func tapNumberPad(_ nums: Int) {
        let numArray = String(nums).compactMap { Int(String( $0 ))}
        print(numArray)
        for num in numArray {
            PinScreen.numberPads(num).tap()
        }
    }
    
    func tapOnCancelButton() {
        Buttons.cancelButton.tap()
    }
    
    func tapOnForgotButton() {
        Buttons.forgotButton.tap()
    }
    
    func tapOnDeleteButton(digits: Int) {
        let startDigit = 1
        
        for _ in startDigit...digits {
            Buttons.deleteButton.tap()
        }
    }
    
    func tapOnSignOutButton() {
        Buttons.signOutButton.tap()
    }
    
    func tapOnAlertCancelButton() {
        Buttons.cancelButton.tap()
    }
    
    func tapOnAlertLogoutButton() {
        Buttons.alertLogoutButton.tap()
    }
}
