//
//  CalcPage.swift
//  KalculatorUITests
//
//  Created by magalu on 14/12/23.
//  Copyright © 2023 Jogendra Singh. All rights reserved.
//

import XCTest

class CalcPage: BaseTest {
    
    override var rootElement: XCUIElement {
        return app.staticTexts["1"]
    }
    
    lazy var oneButton = app.staticTexts["1"]
    lazy var plusButton = app.staticTexts["+"]
    lazy var fiveButton = app.staticTexts["5"]
    lazy var equalButton = app.staticTexts["="]
    
    @discardableResult
    func tapOne(completion: Completion = nil) -> Self {
        log("One button tap done")
        oneButton.tap()
        return self
    }
    
    @discardableResult
    func tapFive(completion: Completion = nil) -> Self {
        log("Five button tap done")
        fiveButton.tap()
        return self
    }
    
    @discardableResult
    func tapPlus(completion: Completion = nil) -> Self {
        log("Plus button tap done")
        plusButton.tap()
        return self
    }
    
    @discardableResult
    func tapEqual(completion: Completion = nil) -> Self {
        log("Equal button tap done")
        equalButton.tap()
        return self
    }
}
