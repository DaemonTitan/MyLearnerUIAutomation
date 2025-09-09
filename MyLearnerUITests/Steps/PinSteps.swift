//
//  PinSteps.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 5/9/2025.
//

import Foundation

class PinSteps {
    
    let pinScreen = PinScreen()
    
    func assertCreatePinTextAndImage() {
        pinScreen.isSetupPinLabelVisible()
        pinScreen.isPasscodeImageVisible()
        pinScreen.isCreatePinMessageVisible()
    }
    
    func assertConfirmPinTextAndImage() {
        pinScreen.isSetupPinLabelVisible()
        pinScreen.isPasscodeImageVisible()
        pinScreen.isConfirmPinMessageVisible()
    }
    
    func assertEnterPinTextAndImage(name: String) {
        pinScreen.isMyLearnerLabelVisible()
        pinScreen.isPinIndicatorVisible(name: name)
    }
    
    func asssertIncorrectPinErrorMessage() {
        pinScreen.isIncorrectPinMessageVisible()
    }
    
    func assertAlertTitleAndBody() {
        pinScreen.isAlertTitleVisible()
        pinScreen.isAlertBodyVisible()
    }
    
    func tapOnDeleteButton(digits: Int) {
        pinScreen.isDeleteButtonVisible()
        pinScreen.tapOnDeleteButton(digits: digits)
    }
    
    func tapOnForgotButton() {
        pinScreen.isForgotButtonVisible()
        pinScreen.tapOnForgotButton()
    }
    
    func tapOnSignOutButton() {
        pinScreen.isSignOutButtonVisible()
        pinScreen.tapOnSignOutButton()
    }
    
    func assertNumberPad() {
        pinScreen.isNumberPadVisible()
    }
    
    func tapOnPin(pin: Int) {
        pinScreen.tapNumberPad(pin)
    }
    
    func assertAlertMessage() {
        pinScreen.isAlertTitleVisible()
        pinScreen.isAlertBodyVisible()
    }
    
    func tapOnCancelButton() {
        pinScreen.isAlertCancelButtonVisible()
        pinScreen.tapOnAlertCancelButton()
    }
    
    func tapOnLogoutButton() {
        pinScreen.isAlertLogoutButtonVisible()
        pinScreen.tapOnAlertLogoutButton()
    }
}
