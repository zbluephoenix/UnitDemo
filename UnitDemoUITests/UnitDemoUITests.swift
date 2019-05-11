//
//  UnitDemoUITests.swift
//  UnitDemoUITests
//
//  Created by 筱鹏 on 2019/4/25.
//  Copyright © 2019 筱鹏. All rights reserved.
//

import XCTest

class UnitDemoUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        app.buttons["enter Child VC"].tap()
        let textField = app.textFields["标题"]
        textField.tap()
        textField.typeText("测试标题， 输入测试")
        textField.tap()
        app.menuItems["Select All"].tap()
        textField.typeText("重新输入")
        
        let textView = app.otherElements.containing(.navigationBar, identifier:"UnitDemo.ChildView").children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .textView).element
        textView.tap()
        textView.tap()
        textView.tap()
        textView.typeText("测试数据，输入文字")
        
        textView.tap()

        app.menuItems["Select All"].tap()
        textView.typeText("测试数据，输入文字, 重新输入")

        app.navigationBars["UnitDemo.ChildView"].buttons["Back"].tap()
        
    }
    
    func testShowViewOnWindow() {

        let app = XCUIApplication()
        let enterChildVcButton = app.buttons["enter Child VC"]
        enterChildVcButton.tap()
        let textView = app.otherElements.containing(.navigationBar, identifier:"UnitDemo.ChildView").children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .textView).element
        textView.tap()
        
    }
}
