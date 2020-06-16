//
//  MostViewedTypeEnumTest.swift
//  NYTimes_MPATests
//
//  Created by Emad on 6/16/20.
//  Copyright © 2020 Emad. All rights reserved.
//

import XCTest

class MostViewedTypeEnumTest: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testMostViewedTypeEnum() {
        XCTAssertFalse(MostViewedType.article.rawValue != "Article")
        XCTAssertFalse(MostViewedType.interactive.rawValue != "Interactive")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
