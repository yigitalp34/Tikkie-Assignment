//
//  UIStatus.swift
//  ReferenceiOSUITests
//
//  Created by Yigit Pehlivanoglu on 02/02/2024.
//  Copyright © 2024 ABN AMRO. All rights reserved.
//

import Foundation

/// waitForExistance method only checks if the element exists within the app's current UI hierarchy.
/// In order to check other states for the explicit checking capability like waitForExistance method,
/// expect method had been implemented and the below states of the UI elements are used for this method
/// as follows: expect(element: XCUIElement, status: UIStatus)
enum UIStatus: String {
    case exist = "exists == true"
    case notExist = "exists == false"
    case selected = "selected == true"
    case notSelected = "selected == false"
    case hittable = "isHittable == true"
    case notHittable = "isHittable == false"
    case isLabelEqual = "label MATCHES '%@'"
    case isPlaceholderEqual = "placeholderValue MATCHES '%@'"
}
