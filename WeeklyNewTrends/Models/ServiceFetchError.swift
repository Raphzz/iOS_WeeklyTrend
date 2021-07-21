//
//  FetchError.swift
//  WeeklyNewTrends
//
//  Created by Raphael Velasqua on 20/07/2021.
//

import Foundation

enum ServiceFetchError: Error {
	case invalidJSON
	case decodingError
	case invalidURL
	case networkFailed
	case limit
}
