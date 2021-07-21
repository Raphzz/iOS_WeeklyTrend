//
//  ProductCollectionCellViewModel.swift
//  WeeklyNewTrends
//
//  Created by Raphael Velasqua on 20/07/2021.
//

import Foundation

class ProductCellViewModel: ProductCellViewModelProtocol {
	
	var product: Product
	
	init(withProduct product: Product) {
		self.product = product
	}
}
