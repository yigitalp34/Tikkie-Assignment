//
//  BaseTest.swift
//  ReferenceiOSUITests
//
//  Created by Yigit Pehlivanoglu on 02/02/2024.
//  Copyright © 2024 ABN AMRO. All rights reserved.
//


import Foundation
import XCTest

class BaseTest: XCTestCase {
    
    var app: XCUIApplication!
        
    override func setUp() {
        super.setUp()
        app = XCUIApplication()
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
        XCUIApplication().terminate()
    }
}
