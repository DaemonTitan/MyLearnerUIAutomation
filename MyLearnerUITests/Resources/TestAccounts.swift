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
    
    init(userAccount: String, userName: String, password: String) {
        self.userAccount = userAccount
        self.userName = userName
        self.password = password
    }
}

class Users {
    static let instance = Users()
    
    let learner = UserAccounts(userAccount: "learner", userName: "monica.r+prodtest1@tigerspike.com", password: "Vicpass123@")
    let supervisor = UserAccounts(userAccount: "supervisor", userName: "monica.r+prodtest2@tigerspike.com", password: "Vicpass123@")
    let incorrectAccount = UserAccounts(userAccount: "test", userName: "test", password: "test")
}
