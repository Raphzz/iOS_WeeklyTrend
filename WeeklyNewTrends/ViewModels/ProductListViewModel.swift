//
//  ProductListViewModel.swift
//  WeeklyNewTrends
//
//  Created by Raphael Velasqua on 20/07/2021.
//

import UIKit

class ProductListViewModel: ProductListViewModelProtocol {
	
	var title: String {
		if let products = data {
			return products.title
		}
		return "Weekly Trend"
	}
	var numberOfItems: Int {
		if let items = data {
			return items.productCount
		}
		return 0
	}
	
	internal var data: WeeklyTrends? {
		didSet {
			viewDelegate?.productsDidLoad()
		}
	}
	
	var viewDelegate: ProductListViewModelDelegate?
	var coordinatorDelegate: ProductListViewModelCoordinatorDelegate?
	private let weeklyTrendService: WeeklyTrendService
	let itemsPerRow: Int = 2
	let cellPadding: CGFloat = 15.0
	
	init(withWeeklyTrendService weeklyTrendService: WeeklyTrendService) {
		self.weeklyTrendService = weeklyTrendService
	}
	
	func getWeeklyTrendProducts() {
		weeklyTrendService.fetch { [weak self] (result) in
			switch result{
			case .success(let response):
				self?.data = response
			case .failure(let error):
				DLog(error.localizedDescription)
			}
		}
	}
	
}

// MARK: - TableView Data Fetch

extension ProductListViewModel {
	
	func productCellViewModel(at indexPath: IndexPath) -> ProductCellViewModel? {
		if let items = data?.products {
			return ProductCellViewModel(withProduct: items[indexPath.row])
		}
		return nil
	}
	
	func didSelectItemAtIndex(_ index: Int)
	{
		if let items = data?.products,
		   let coordinatorDelegate = coordinatorDelegate,
		   index < items.count {
			coordinatorDelegate.productDidSelect(self, data: items[index])
		}
	}
}
