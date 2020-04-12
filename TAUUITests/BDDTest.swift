

import Foundation
import XCTest

class BDDTest: TAUUITestBase {

    func testThankYouMessageBddStyle() {
        givenAppIsReady()
        whenIEnter(city: "London")
        whenIEnroll()
        thenIShouldSeeThankYouMessage()
    }
}

extension TAUUITestBase {
    func givenAppIsReady() {
        XCTContext.runActivity(named: "Given app is ready") { _ in
            XCTAssertTrue(app.buttons["enrollButton"].exists)
        }
    }
    
    func whenIEnter(city: String) {
        XCTContext.runActivity(named: "When I enter city \(city)") { _ in
            app.textFields["city"].tap()
            app.textFields["city"].typeText(city)
        }
    }
    
    func whenIEnroll() {
        XCTContext.runActivity(named: "When I enroll") { _ in
            app.buttons["enrollButton"].tap()
        }
    }
    
    func thenIShouldSeeThankYouMessage() {
        XCTContext.runActivity(named: "Then I should see a Thank You Message") { _ in
            XCTAssertTrue(app.staticTexts["Thanks for Joining!"].exists)
        }
    }
}
