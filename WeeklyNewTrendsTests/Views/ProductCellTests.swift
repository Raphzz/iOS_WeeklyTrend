//
//  ProductCellTests.swift
//  WeeklyNewTrendsTests
//
//  Created by Raphael Velasqua on 20/07/2021.
//

import XCTest
@testable import WeeklyNewTrends

class ProductCellTests: XCTestCase {
	
	func testInitWithCoderShouldBeNil() {
		XCTAssertNil(ProductCell(coder: NSCoder()))
	}
}
