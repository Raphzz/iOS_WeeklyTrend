//
//  WeeklyTrendService.swift
//  WeeklyNewTrends
//
//  Created by Raphael Velasqua on 20/07/2021.
//

import Foundation

class WeeklyTrendService: BaseService {
	
	func fetch (completionHandler: @escaping (Result<WeeklyTrends, ServiceFetchError>) -> Void) {
		
		fetch(listOf: WeeklyTrends.self, withURL: url(withPath: APIConstants.urls.weeklyTrendProducts)) { (result) in
			switch result {
			case .success(let events):
				completionHandler(Result.success(events))
			case .failure(let error):
				completionHandler(Result.failure(error))
			}
		}
	}
}
