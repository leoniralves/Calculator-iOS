//
//  BaseTest.swift
//  KalculatorUITests
//
//  Created by magalu on 12/12/23.
//  Copyright © 2023 Jogendra Singh. All rights reserved.
//

import XCTest

class Logger {
    func log(_ mLog: String) {
        NSLog(mLog)
    }
}

public class BaseTest {
    typealias Completion = (()->Void)?
    
    let app = XCUIApplication()
    let log = Logger().log
    
    var rootElement: XCUIElement {
        fatalError("Subclass should overrid rootElement")
    }
    
    required init(
        timeout: TimeInterval = 10,
        completion: Completion = nil
    ) {
        log("waiting \(timeout)s for \(String(describing: self)) existence")
        
        XCTAssert(
            rootElement.waitForExistence(timeout: timeout),
            "Page \(String(describing: self)) waited, but not loader"
        )
        
        completion?()
    }
    
    // Button
    func button(_ name: String) -> XCUIElement {
        return app.buttons[name]
    }
    
    // Navigation Bar
    func navBar(_ name: String) -> XCUIElement {
        return app.navigationBars[name]
    }
    
    // SecureField
    func secureField(_ name: String) -> XCUIElement {
        return app.secureTextFields[name]
    }
    
    // TextField
    func texteField(_ name: String) -> XCUIElement {
        return app.textFields[name]
    }
    
    // TextView
    func textView(_ name: String) -> XCUIElement {
        return app.textViews[name]
    }
    
    // Text
    func text(_ name: String) -> XCUIElement {
        return app.staticTexts[name]
    }
}
