//
//  AppFeatureTests.swift
//  
//  
//  Created by penguinsan on 2024/01/07
//  
//

import ComposableArchitecture
import XCTest
@testable import TCATutorialKit

final class AppFeatureTests: XCTestCase {

    func testIncrementInFirstTab() async {
        let store = TestStore(initialState: AppFeature.State()) {
            AppFeature()
        }

        await store.send(.tab1(.incrementButtonTapped))
    }
}
