//
//  ProductTests.swift
//  WeeklyNewTrends
//
//  Created by Raphael Velasqua on 20/07/2021.
//


import XCTest
@testable import WeeklyNewTrends

class ProductTests: XCTestCase {
	
	var product: Product? {
		return DecodableHelper.decode(Product.self, dictionary: productDataPresentation())
	}
	func testInitializationWithRepresentation() {
		XCTAssertNotNil(product)
	}
	
	func testInitializationWithNoImagePathRepresentation() {
		let productDataNilImagePresentation = [
			"id": "5d4aab8b4ada8fca84541eee",
			"title": "Morton Orr",
			"price": "Â£199"
		] as [String: Any]
		
		XCTAssertNil(DecodableHelper.decode(Product.self, dictionary: productDataNilImagePresentation))
	}
	
	func testNameDescriptionAndThumbnail() throws {
		let product = try XCTUnwrap(self.product)

		XCTAssertTrue(product.id == "1")
		XCTAssertTrue(product.name == "Test T-shirt")
		XCTAssertTrue(product.price == "Â£199")
		XCTAssertTrue(product.image == "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg")
	}
	
}

extension ProductTests {
	
	private func productDataPresentation() -> [String: Any] {
		let representation = [
			"id": "1",
			"name": "Test T-shirt",
			"image":"https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg",
			
			"price": "Â£199"
			] as [String: Any]
		return representation
	}
}
