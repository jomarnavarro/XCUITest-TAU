//
//  TAUUITestBase.swift
//  TAUUITests
//
//  Created by MACBOOK on 08/04/20.
//  Copyright © 2020 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

class TAUUITestBase: XCTestCase {
    var app = XCUIApplication()
    override func setUp() {
        super.setUp()
        continueAfterFailure = false;
        app.launch()
        
    }
    
    override func tearDown() {
        super.tearDown()
    }
}
