//
//  TestAccounts.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 28/8/2025.
//

import Foundation

class UserAccounts {
    let userAccount: String
    let userName: String
    let password: String
    let pin: Int
    let incorrectPin: Int
    
    init(userAccount: String, userName: String, password: String, pin: Int, incorrectPin: Int) {
        self.userAccount = userAccount
        self.userName = userName
        self.password = password
        self.pin = pin
        self.incorrectPin = incorrectPin
    }
}

class Users {
    static let instance = Users()
    
    let learner = UserAccounts(userAccount: "learner", userName: "monica.r+prodtest1@tigerspike.com", password: "Vicpass123@", pin: 123456, incorrectPin: 12345)
    let supervisor = UserAccounts(userAccount: "supervisor", userName: "monica.r+prodtest2@tigerspike.com", password: "Vicpass123@", pin: 123456, incorrectPin: 12345)
    let incorrectAccount = UserAccounts(userAccount: "test", userName: "test", password: "test", pin: 123456, incorrectPin: 12345)
}
