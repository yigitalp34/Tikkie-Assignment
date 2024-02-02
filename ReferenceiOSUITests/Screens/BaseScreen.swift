//
//  BaseScreen.swift
//  ReferenceiOSUITests
//
//  Created by Yigit Pehlivanoglu on 02/02/2024.
//  Copyright © 2024 ABN AMRO. All rights reserved.
//

import Foundation
import XCTest

class BaseScreen {

    var app: XCUIApplication
    
    init(_ app: XCUIApplication) {
        self.app = app
    }
    
    ///Waits for an XCUIElement to exist, then creates an expectation based on a provided status,waits for that expectation with a shorter timeout,
    ///and triggers a failure if the expectation times out or if the element is not found.
    @discardableResult
    func expect(element: XCUIElement, status: UIStatus,
                    timeout: TimeInterval = Timeouts.defaultTimeout,
                    message: String? = nil, file: StaticString = #filePath, line: UInt = #line) -> XCUIElement {
        let isElementFound = element.waitForExistence(timeout: timeout)
        let expectation = XCTNSPredicateExpectation(predicate: NSPredicate(format: status.rawValue), object: element)
        let result = XCTWaiter.wait(for: [expectation], timeout: Timeouts.shorterTimeout)
        if result == .timedOut || !isElementFound {
            XCTAssert(false, message ?? expectation.description, file: file, line: line)
        }
        return element
    }
}
