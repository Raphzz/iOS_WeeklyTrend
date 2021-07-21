//
//  ProductDetailViewModelProtocol.swift
//  WeeklyNewTrends
//
//  Created by Raphael Velasqua on 20/07/2021.
//

import Foundation

protocol ProductDetailViewModelDelegate: class {
	func detailDidLoad(viewModel: ProductDetailViewModelProtocol)
}

protocol ProductDetailViewModelProtocol {
	var product: Product? { get set }
	var viewDelegate: ProductDetailViewModelDelegate? { get set }
}
