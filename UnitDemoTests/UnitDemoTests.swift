//
//  UnitDemoTests.swift
//  UnitDemoTests
//
//  Created by 筱鹏 on 2019/4/25.
//  Copyright © 2019 筱鹏. All rights reserved.
//

import XCTest
@testable import UnitDemo

class UnitDemoTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let rootVC = UIApplication.shared.keyWindow?.rootViewController as! UINavigationController
        let vc = rootVC.topViewController as! ViewController
        vc.showViewToWindow()
        
        let window = UIApplication.shared.keyWindow!
        
        let showView = window.viewWithTag(100)
        XCTAssert((showView != nil), "not find tag 100")
        if let view = showView {
            XCTAssertEqual(view.backgroundColor, .red)
        }

    }
    

    func testPerformanceExample() {
        let window = UIApplication.shared.keyWindow!
        let rootVC = window.rootViewController as! UINavigationController
        let vc = rootVC.topViewController as! ViewController
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            vc.showViewToWindow()
        }
        
        XCTAssert(window.subviews.count > 0, "子视图为0")
        let showView = window.viewWithTag(100)
        XCTAssertNotNil(showView)
        if let view = showView {
            XCTAssert(view.isMember(of: UIView.self), "view is not member UIView class")
        }
    }

}
