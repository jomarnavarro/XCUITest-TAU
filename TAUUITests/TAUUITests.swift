//
//  TAUUITests.swift
//  TAUUITests
//
//  Created by MACBOOK on 07/04/20.
//  Copyright © 2020 Shashikant Jagtap. All rights reserved.
//

import XCTest

class TAUUITests: TAUUITestBase {



    func testAllElements() throws {
        // UI tests must launch the application that they test.
        
        app.staticTexts["welcomeMessage"].tap()
        app.staticTexts["enterCity"].tap()
        app.buttons["enrollButton"].tap()
        app.staticTexts["Please Enter City"].tap()
        XCTAssert(app.staticTexts["Please Enter City"].exists)
        

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testThankYouMessage() {

        app.staticTexts["welcomeMessage"].tap()
        app.textFields["city"].tap()
        app.textFields["city"].typeText("London")
        app.staticTexts["welcomeMessage"].tap()
        app.buttons["enrollButton"].tap()
        XCTAssert(app.staticTexts["Thanks for Joining!"].exists)
        
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
