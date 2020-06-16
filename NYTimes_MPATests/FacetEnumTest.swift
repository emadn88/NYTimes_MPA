//
//  FacetEnumTest.swift
//  NYTimes_MPATests
//
//  Created by Emad on 6/16/20.
//  Copyright © 2020 Emad. All rights reserved.
//

import XCTest

class FacetEnumTest: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testFacetEnum() {
        XCTAssertNoThrow(Facet.string("StringToTest"), "Passed Facet String Type")
        XCTAssertNotNil(Facet.stringArray(["StringToTest1", "StringToTest2"]))
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
