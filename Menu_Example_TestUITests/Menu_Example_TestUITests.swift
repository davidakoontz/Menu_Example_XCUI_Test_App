//
//  Menu_Example_TestUITests.swift
//  Menu_Example_TestUITests
//
//  Created by David on 2/12/21.
//

import XCTest

class Menu_Example_TestUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMenu_hasTitle() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        print(app.debugDescription)
        let menuButton = app.buttons["popup"] // via accessibilityIdentifier
        XCTAssertEqual(menuButton.label, "Edit Menu (Pop-up)")
    }

    func testMenu_hasButtonAddColor() throws {
        let app = XCUIApplication()
        app.launch()

        print(app.debugDescription)
        let menuButton = app.buttons["popup"] // via accessibilityIdentifier
        menuButton.tap()
        
        print(app.debugDescription)
        
        //let button1 = app.buttons["color"]                // grab button by accessibilityIdentifier - DOES NOT WORK
        //let button2 = app.buttons["contrast"]             // grab button by accessibilityIdentifier - DOES NOT WORK
        //  APPLE YOU VEX ME!!!
        let button1 = app.buttons["Add color"]              // grab button by label string
        let button2 = app.buttons["Change contrast"]        // grab button by label string
        
        XCTAssertEqual(button1.label, "Add color")
        XCTAssertEqual(button2.label, "Change contrast")
    }
}
