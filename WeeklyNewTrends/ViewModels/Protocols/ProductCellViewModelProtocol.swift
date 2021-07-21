//
//  ProductCellViewModel.swift
//  WeeklyNewTrends
//
//  Created by Raphael Velasqua on 20/07/2021.
//

import Foundation

protocol ProductCellViewModelProtocol {
	var product: Product { get }
}

extension ProductCellViewModelProtocol {
	
	func productName() -> String {
		return product.name
	}
	
	func productImage() -> URL? {
		return product.url
	}
	
	func productPrice() -> String {
		return product.price
	}
	
	func productColor() -> String {
		// Not in API, we are using just for UI ;)
		return "White & Lemon"
	}
}
