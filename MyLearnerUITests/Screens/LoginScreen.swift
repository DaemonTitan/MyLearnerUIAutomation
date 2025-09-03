//
//  LoginScreen.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 28/8/2025.
//

import Foundation

class LoginScreen: BaseScreen {
    
    enum Images {
        static let backgroundImage = myLearnerApp.images[L10n.Login.backgoundImage].firstMatch
        static let carLPlateImage = myLearnerApp.images[L10n.Login.carLPlateImage].firstMatch
    }
    
    enum DataEntry {
        static let emailField = myLearnerApp.textFields[L10n.Login.emailTextField]
        static let passwordField = myLearnerApp.secureTextFields[L10n.Login.passwordField]
    }
    
    enum Text {
        static let myLearnersText = myLearnerApp.staticTexts[L10n.Login.myLearnersText]
        static let hiText = myLearnerApp.staticTexts[L10n.Login.hiText]
        static let loginInstructionText = myLearnerApp.staticTexts[L10n.Login.loginInstructionText]
        static let agreeToVicRoadsText = myLearnerApp.staticTexts[L10n.Login.agreeToVicRoadsText]
        static let dontHaveAccountText = myLearnerApp.staticTexts[L10n.Login.dontHaveAccountText]
        static let emptyEmailErrorText = myLearnerApp.staticTexts[L10n.Login.emptyEmailErrorText]
        static let emptyPasswordErrorText =  myLearnerApp.staticTexts[L10n.Login.emptyPasswordErrorText]
        static let incorrectEmailPasswordText = myLearnerApp.staticTexts[L10n.Login.incorrectEmailPasswordText]
        static let forgotYourPasswordText = myLearnerApp.staticTexts[L10n.Login.forgotPasswordButton]
        static let termAndConditionText = myLearnerApp.staticTexts[L10n.Login.termAndConditionWeb]
        static let signUpText = myLearnerApp.staticTexts[L10n.Login.signUpMylearnersWeb]
    }
    
    enum Buttons {
        static let loginButton = myLearnerApp.buttons[L10n.Login.loginButton]
        static let forgotPasswordButton = myLearnerApp.buttons[L10n.Login.forgotPasswordButton]
        static let termAndConditionButton = myLearnerApp.buttons[L10n.Login.termAndConditionButton]
        static let SignUpButton = myLearnerApp.buttons[L10n.Login.signUpButton]
        static let doneButton = myLearnerApp.staticTexts[L10n.Login.doneButton]
    }
    
    func isBackgroundImageVisible() {
        Images.backgroundImage.isVisible()
    }
    
    func isCarLPlateImageVisible() {
        Images.carLPlateImage.isVisible()
    }
    
    func isMyLearnersTextVisible() {
        Text.myLearnersText.isVisible()
    }
    
    func isHiTextVisible() {
        Text.hiText.isVisible()
    }
    
    func isLoginInstructionTextVisible() {
        Text.loginInstructionText.isVisible()
    }
    
    func isAgreeToVicRoadsTextVisible() {
        Text.agreeToVicRoadsText.isVisible()
    }
    
    func isDontHaveAccountTextVisible() {
        Text.dontHaveAccountText.isVisible()
    }
    
    func isEmptyEmailFieldErrorTextVisible() {
        Text.emptyEmailErrorText.isVisible()
    }
    
    func isEmptyPasswordFieldErrorTextVisible() {
        Text.emptyPasswordErrorText.isVisible()
    }
    
    func isIncorrectEmailPasswordErrorTextVisible() {
        Text.incorrectEmailPasswordText.isVisible()
    }
    
    func isForgotYouPasswordTextVisible() {
        Text.forgotYourPasswordText.isVisible()
    }
    
    func isTermAndConditionTextVisible() {
        Text.termAndConditionText.isVisible()
    }
    
    func isSignUpTextVisible() {
        Text.signUpText.isVisible()
    }
    
    func isEmailFieldVisible() {
        DataEntry.emailField.isVisible()
        emailPlaceHolderMatches()
    }
    
    func isPasswordFieldVisible() {
        DataEntry.passwordField.isVisible()
        passwordPlaceHolderMatches()
    }
    
    func emailPlaceHolderMatches() {
        DataEntry.emailField.textMatches(DataEntry.emailField.placeholderValue, expected: L10n.Login.emailTextField)
    }
    
    func passwordPlaceHolderMatches() {
        DataEntry.passwordField.textMatches(DataEntry.passwordField.placeholderValue, expected: L10n.Login.passwordField)
    }
    
    func tapOnEmailField() {
        DataEntry.emailField.tap()
    }
    
    func emailInput(_ email: String) {
        DataEntry.emailField.typeText(email)
    }
    
    func tapOnPasswordField() {
        DataEntry.passwordField.tap()
    }
    
    func passwordInput(_ password: String) {
        DataEntry.passwordField.typeText(password)
    }
    
    func isLoginButtonVisible() {
        Buttons.loginButton.isVisible()
    }
    
    func tapOnLogin() {
        Buttons.loginButton.tap()
    }
    
    func isForgotPasswordButtonVisible() {
        Buttons.forgotPasswordButton.isVisible()
    }
    
    func tapOnForgotPassword() {
        Buttons.forgotPasswordButton.tap()
    }
    
    func isTermsConditionsButtonVisible() {
        Buttons.termAndConditionButton.isVisible()
    }
    
    func tapOnTermsConditions() {
        Buttons.termAndConditionButton.tap()
    }
    
    func isSignUpButtonVisible() {
        Buttons.SignUpButton.isVisible()
    }
    
    func tapOnSignUp() {
        Buttons.SignUpButton.tap()
    }
    
    func isDoneButtonVisible() {
        Buttons.doneButton.isVisible()
    }
    
    func tapOnDone() {
        Buttons.doneButton.tap()
    }
}
