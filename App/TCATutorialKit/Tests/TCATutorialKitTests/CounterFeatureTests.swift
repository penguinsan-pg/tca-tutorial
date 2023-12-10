//
//  CounterFeatureTests.swift
//  
//  
//  Created by penguinsan on 2023/12/10
//  
//

import ComposableArchitecture
import XCTest
@testable import TCATutorialKit

@MainActor
final class CounterFeatureTests: XCTestCase {

    func testCounter() async {
        let store = TestStore(initialState: CounterFeature.State()) {
            CounterFeature()
        }
    }
}
