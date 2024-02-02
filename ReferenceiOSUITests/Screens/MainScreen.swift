//
//  MainScreen.swift
//  ReferenceiOSUITests
//
//  Created by Yigit Pehlivanoglu on 02/02/2024.
//  Copyright © 2024 ABN AMRO. All rights reserved.
//


import Foundation
import XCTest

class MainScreen: BaseScreen {
    
    lazy private var button = app.buttons["Button"].firstMatch
    lazy private var text = app.staticTexts.matching(identifier: "label").firstMatch
    
    @discardableResult
    func checkMainScreenDisplayedWithAllViewsByDefault() -> Self {
        expect(element: button, status: .hittable)
        XCTAssertEqual(text.label, "Hello")
        return self
    }
    
    @discardableResult
    func tapOnButton() -> Self {
        expect(element: button, status: .hittable).tap()
        return self
    }
    
    @discardableResult
    func checkTextIsChangedToTheEuroCurrencyValue() -> Self {
        expect(element: text, status: .exist)
        XCTAssertTrue(text.label.contains("€"))
        return self
    }
}
