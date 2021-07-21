//
//  Result.swift
//  WeeklyNewTrends
//
//  Created by Raphael Velasqua on 20/07/2021.
//

import Foundation

enum Result<T, E: Error> {
	case success(T)
	case failure(E)
}
