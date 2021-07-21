//
//  MockURLSessionDataTask.swift
//  WeeklyNewTrends
//
//  Created by Raphael Velasqua on 20/07/2021.
//


import Foundation
@testable import WeeklyNewTrends

class MockURLSessionDataTask: URLSessionDataTaskProtocol {
    private (set) var resumeWasCalled = false
    
    func resume() {
        resumeWasCalled = true
    }
    
    func cancel() {
        
    }
}
