//
//  Reusable.swift
//  WeeklyNewTrends
//
//  Created by Raphael Velasqua on 20/07/2021.
//

import UIKit

protocol Reusable: class {}

extension Reusable where Self: UIView {
	
	static var reuseIdentifier: String {
		return String(describing: self)
	}
}
