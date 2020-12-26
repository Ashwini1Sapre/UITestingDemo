//
//  UITestingDemoUITests.swift
//  UITestingDemoUITests
//
//  Created by Knoxpo MacBook Pro on 26/12/20.
//

import XCTest

class UITestingDemoUITests: XCTestCase {

    
    override func setUp() {
        
        continueAfterFailure = false
        
    }
    
    
    

    
    
    
    
    func testforAddList()
    {
        let qpp = XCUIApplication()
        qpp.launch()
        
        qpp.navigationBars["Things to do"].buttons["New Item"].tap()
        let todoItem = qpp.textFields["Enter name"]
        todoItem.tap()
        todoItem.typeText("Buy a house")
        qpp.buttons["Add"].tap()
        XCTAssertTrue(qpp.tables.staticTexts["Buy a house"].exists)
        
        
        
    }
  
}
