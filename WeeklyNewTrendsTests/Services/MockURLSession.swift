//
//  MockURLSession.swift
//  WeeklyNewTrends
//
//  Created by Raphael Velasqua on 20/07/2021.
//


import XCTest
import Foundation
@testable import WeeklyNewTrends

class MockURLSession: URLSessionProtocol {
    private (set) var lastURL: URL?
    var nextDataTask = MockURLSessionDataTask()
    var nextResponse: HTTPURLResponse?
    var nextData: Data?
    var nextError: ServiceFetchError?
    
    func data(with url: URL, completionHandler: @escaping DataTaskResult) -> URLSessionDataTaskProtocol {
        lastURL = url
        completionHandler(nextData, nextResponse, nextError)
        return nextDataTask
    }
}
