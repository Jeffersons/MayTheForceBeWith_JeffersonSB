//
//  MayTheForceBeWith_JeffersonSBUITests.swift
//  MayTheForceBeWith_JeffersonSBUITests
//
//  Created by Jefferson Batista on 13/01/2020.
//  Copyright © 2020 Jefferson S Batista. All rights reserved.
//

import XCTest

class MayTheForceBeWith_JeffersonSBUITests: XCTestCase {

    let app = XCUIApplication()
    
    override func setUp() {
        continueAfterFailure = false
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testListPeople() {
        app.launch()
        sleep(4)//wait load list data
        app.navigationBars["MayTheForceBeWith Jeff"].searchFields["Search"].tap()
        app.collectionViews/*@START_MENU_TOKEN@*/.staticTexts["Luke Skywalker"]/*[[".cells.staticTexts[\"Luke Skywalker\"]",".staticTexts[\"Luke Skywalker\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["About"].buttons["MayTheForceBeWith Jeff"].tap()
    }
    
    func testListPeopleDetail() {
        app.launch()
        sleep(4)//wait load list data
        app.collectionViews/*@START_MENU_TOKEN@*/.staticTexts["Luke Skywalker"]/*[[".cells.staticTexts[\"Luke Skywalker\"]",".staticTexts[\"Luke Skywalker\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["About"].buttons["MayTheForceBeWith Jeff"].tap()
    }
    
    func testFavoritePeople() {
        app.launch()
        sleep(4)//wait load list data
        let collectionViewsQuery = XCUIApplication().collectionViews
        collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Luke Skywalker"]/*[[".cells.staticTexts[\"Luke Skywalker\"]",".staticTexts[\"Luke Skywalker\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Click to favorite"]/*[[".cells.staticTexts[\"Click to favorite\"]",".staticTexts[\"Click to favorite\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    }
}
