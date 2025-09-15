//
//  MyLearnerUITests.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 20/8/2025.
//

import XCTest
import Foundation

final class MyLearnerUITests: XCTestCase {
    
    let onboardingSteps = OnboardingSteps()

    @MainActor
    func test1() {
        let myLearnerApp = XCUIApplication(bundleIdentifier: "au.gov.vic.vicroads.dlk")
        myLearnerApp.launch()
        
        
        
        
        
        

        
    }
    

}
