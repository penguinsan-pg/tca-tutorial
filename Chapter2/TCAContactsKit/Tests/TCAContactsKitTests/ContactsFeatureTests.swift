//
//  ContactsFeatureTests.swift
//  
//  
//  Created by penguinsan on 2024/01/28
//  
//

import ComposableArchitecture
import XCTest
@testable import TCAContactsKit

@MainActor
final class ContactsFeatureTests: XCTestCase {

    func testAddFlow() async {
        let store = TestStore(initialState: ContactsFeature.State()) {
            ContactsFeature()
        }

        await store.send(.addButtonTapped) {
        }
    }
}
