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
    
    func visible() -> Bool {
        guard self.exists && !self.frame.isEmpty else { return false }
        return XCUIApplication().windows.element(boundBy: 0).frame.contains(self.frame)
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
    
    func tap(_ element: XCUIElement) {
        guard element.waitForExistence(timeout: BaseScreen.visibleTimeOut) else {
            return XCTFail("\(element.description) element is not visible and tap fails")
        }
        element.tap()
    }
    
}
