//
//  MainScreenUITests.swift
//  ReferenceiOSUITests
//
//  Created by Yigit Pehlivanoglu on 02/02/2024.
//  Copyright © 2024 ABN AMRO. All rights reserved.
//


import XCTest

final class MainScreenUITests: BaseTest {
    
    func test_whenAppIsLaunched_thenExpectedViewsAreDisplayed() {
        MainScreen(app)
            .checkMainScreenDisplayedWithAllViewsByDefault()
    }
    
    func test_givenAppIsLaunched_whenButtonIsClicked_thenCheckWhetherTextIsChangedToTheCurrencyValue() {
        MainScreen(app)
            .tapOnButton()
            .checkTextIsChangedToTheEuroCurrencyValue()
    }
    
    func test_givenDeviceOrientationIsLandscape_whenButtonIsClicked_thenExpectedViewsAreDisplayed() {
        XCUIDevice.shared.orientation = .landscapeLeft
        MainScreen(app)
            .checkMainScreenDisplayedWithAllViewsByDefault()
            .tapOnButton()
        
        XCUIDevice.shared.orientation = .portrait
        MainScreen(app)
            .checkTextIsChangedToTheEuroCurrencyValue()
    }
}
