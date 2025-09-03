//
//  LoginSignUpTest.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 1/9/2025.
//

import Foundation


class LoginSignUpTest: BaseTest {
    
    let loginSteps = LoginSteps()
    let userAccount = Users()
    
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
    
    func test_Login() {
        loginSteps.assertImages()
        loginSteps.assertLabelsAndTexts()
        loginSteps.enterUserName(email: userAccount.supervisor.userName)
        loginSteps.enterPassword(password: userAccount.supervisor.password)
        loginSteps.tapOnLoginButton()
    }
}
