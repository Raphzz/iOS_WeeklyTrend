//
//  DecodingHelper.swift
//  WeeklyNewTrends
//
//  Created by Raphael Velasqua on 20/07/2021.
//


import Foundation

struct DecodableHelper {
	
	static func decode<T: Decodable>(_ decodable: T.Type, dictionary: [String: Any]) -> T? {
		guard let jsonData = try? JSONSerialization.data(withJSONObject: dictionary, options: .prettyPrinted) else {
			return nil
		}
		return try? JSONDecoder().decode(T.self, from: jsonData)
	}
}
