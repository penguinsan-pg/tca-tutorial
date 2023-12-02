//
//  AppRootView.swift
//
//  
//  Created by penguinsan on 2023/12/02
//  
//

import ComposableArchitecture
import SwiftUI

public struct AppRootView: View {

    static let store = Store(initialState: CounterFeature.State()) {
        CounterFeature()
            ._printChanges()
    }

    public init() {}

    public var body: some View {
        CounterView(store: AppRootView.store)
    }
}
