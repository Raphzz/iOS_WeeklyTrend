//
//  ProductDetailViewModel.swift
//  WeeklyNewTrends
//
//  Created by Raphael Velasqua on 20/07/2021.
//

import Foundation

class ProductDetailViewModel: ProductDetailViewModelProtocol {
	
	weak var viewDelegate: ProductDetailViewModelDelegate?
	
	var product: Product? {
		didSet {
			viewDelegate?.detailDidLoad(viewModel: self)
		}
	}
}
