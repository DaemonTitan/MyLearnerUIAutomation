//
//  LoginSignUpTest.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 1/9/2025.
//

import Foundation
import XCTest


class LoginSignUpTest: BaseTest {
    
    let userAccount = Users()
    let loginSteps = LoginSteps()
    let pinSteps = PinSteps()
    
    override func setUpWithError() throws {
        let myLearnerApp = XCUIApplication(bundleIdentifier: "au.gov.vic.vicroads.dlk")
        myLearnerApp.launch()
    }
    
    func test_Login_With_Supervisor() {
        loginSteps.assertImages()
        loginSteps.assertLabelsAndTexts()
        loginSteps.enterUserName(email: userAccount.supervisor.userName)
        loginSteps.enterPassword(password: userAccount.supervisor.password)
        loginSteps.tapOnLoginButton()
        pinSteps.assertCreatePinTextAndImage()
        pinSteps.assertNumberPad()
        pinSteps.tapOnPin(pin: userAccount.supervisor.incorrectPin)
        pinSteps.tapOnDeleteButton(digits: 5)
        pinSteps.tapOnPin(pin: userAccount.supervisor.pin)
        pinSteps.assertConfirmPinTextAndImage()
        pinSteps.tapOnPin(pin: userAccount.supervisor.incorrectPin)
        pinSteps.tapOnDeleteButton(digits: 5)
        pinSteps.tapOnPin(pin: userAccount.supervisor.pin)
    }
    
    func test_Login_Without_Email_And_Password() {
        loginSteps.tapOnLoginButton()
        loginSteps.assertEmptyEmailFieldErrorMessage()
    }
    
    func test_Login_With_Email_Only() {
        loginSteps.enterUserName(email: userAccount.supervisor.userName)
        loginSteps.tapOnLoginButton()
        loginSteps.assertEmptyPasswordFieldErrorMessage()
    }
    
    func test_Login_With_Password_Only() {
        loginSteps.enterPassword(password: userAccount.supervisor.password)
        loginSteps.tapOnLoginButton()
        loginSteps.assertEmptyEmailFieldErrorMessage()
    }
    
    func test_Login_With_Incorrect_Account() {
        loginSteps.enterUserName(email: userAccount.incorrectAccount.userName)
        loginSteps.enterPassword(password: userAccount.incorrectAccount.password)
        loginSteps.tapOnLoginButton()
        loginSteps.assertIncorrectUserAndPasswordErrorMessage()
    }
    
    func test_Forgot_Password() {
        loginSteps.tapOnForgotPasswordButton()
        loginSteps.assertForgotPasswordWebpage()
        loginSteps.tapOnDoneButton()
        loginSteps.assertLabelsAndTexts()
    }
    
    func test_signUp() {
        loginSteps.tapOnSignUp()
        loginSteps.assertSignUpWebpage()
        loginSteps.tapOnDoneButton()
        loginSteps.assertLabelsAndTexts()
    }
    
    func test_view_Terms_And_Condition_Webpage() {
        loginSteps.tapOnTermAndConditionButton()
        loginSteps.assertTermsAndCondtitionsWebpage()
        loginSteps.tapOnDoneButton()
        loginSteps.assertLabelsAndTexts()
    }
    

}
