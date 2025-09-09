//
//  LoginSteps.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 28/8/2025.
//

import Foundation

class LoginSteps {
    
    let loginScreen = LoginScreen()
    
    func assertImages() {
        loginScreen.isBackgroundImageVisible()
        loginScreen.isCarLPlateImageVisible()
    }
    
    func assertLabelsAndTexts() {
        loginScreen.isMyLearnersTextVisible()
        loginScreen.isHiTextVisible()
        loginScreen.isLoginInstructionTextVisible()
        loginScreen.isAgreeToVicRoadsTextVisible()
        loginScreen.isDontHaveAccountTextVisible()
    }
    
    func enterUserName(email: String) {
        loginScreen.isEmailFieldVisible()
        loginScreen.tapOnEmailField()
        loginScreen.emailInput(email)
    }
    
    func enterPassword(password: String) {
        loginScreen.isPasswordFieldVisible()
        loginScreen.tapOnPasswordField()
        loginScreen.passwordInput(password)
    }
    
    func tapOnLoginButton() {
        loginScreen.isLoginButtonVisible()
        loginScreen.tapOnLogin()
    }
    
    func assertEmptyEmailFieldErrorMessage() {
        loginScreen.isEmptyEmailFieldErrorTextVisible()
    }
    
    func assertEmptyPasswordFieldErrorMessage() {
        loginScreen.isEmptyPasswordFieldErrorTextVisible()
    }
    
    func assertIncorrectUserAndPasswordErrorMessage() {
        loginScreen.isIncorrectEmailPasswordErrorTextVisible()
    }
    
    func tapOnForgotPasswordButton() {
        loginScreen.isForgotPasswordButtonVisible()
        loginScreen.tapOnForgotPassword()
    }
    
    func assertForgotPasswordWebpage() {
        loginScreen.isForgotYouPasswordTextVisible()
    }
    
    func tapOnTermAndConditionButton() {
        loginScreen.isTermsConditionsButtonVisible()
        loginScreen.tapOnTermsConditions()
    }
    
    func assertTermsAndCondtitionsWebpage() {
        loginScreen.isTermAndConditionTextVisible()
    }
    
    func tapOnDoneButton() {
        loginScreen.isDoneButtonVisible()
        loginScreen.tapOnDone()
    }
    
    func tapOnSignUp() {
        loginScreen.isSignUpButtonVisible()
        loginScreen.tapOnSignUp()
    }
    
    func assertSignUpWebpage() {
        loginScreen.isSignUpTextVisible()
    }
}
