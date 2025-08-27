//
//  Extensions.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 20/8/2025.
//

import Foundation
import XCTest

extension XCUIElement {
    
    func labelContents(_ text: String) {
        XCTAssertEqual(text, self.label, "\(self.label) shows incorrect Label: \(text)")
    }
    
    func isVisible() {
        guard self.waitForExistence(timeout: BaseScreen.visibleTimeOut) else {
            XCTFail("\(self.description) is not presented")
            return
        }
    }
    
    func waitUntilItemVisible() {
        guard self.waitForExistence(timeout: BaseScreen.waitForDownload) else {
            XCTFail("\(self.description) is not presented")
            return
        }
    }
    
    
    func clearAndEnterText(_ text: String) {
        guard let stringValue = self.value as? String else {
            XCTFail("Tried to clear and enter text into a non string value")
            return
        }
        
        self.tap()
        
        let deleteString = String(repeating: XCUIKeyboardKey.delete.rawValue, count: stringValue.count)
        self.typeText(deleteString)
        self.typeText(text)
    }
    
    func tapElement() {
        guard self.waitForExistence(timeout: BaseScreen.visibleTimeOut) else {
            return XCTFail("\(self.description) element is not visible and tap fails")
        }
        self.tap()
    }
    
    func swipeLeft(_ element: XCUIElement) {
        guard element.waitForExistence(timeout: BaseScreen.visibleTimeOut) else {
            return XCTFail("\(element.description) element is not visible and swip left fails")
        }
        element.swipeLeft()
    }
    
    func scrollUp(_ element: XCUIElement) {
        guard element.waitForExistence(timeout: BaseScreen.visibleTimeOut) else {
            return XCTFail("\(element.description) element is not visible and swip up fails")
        }
        element.swipeUp()
    }
}
