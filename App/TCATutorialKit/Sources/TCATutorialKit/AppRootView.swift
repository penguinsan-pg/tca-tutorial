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

    static let store = Store(initialState: AppFeature.State()) {
        AppFeature()
            ._printChanges()
    }

    public init() {}

    public var body: some View {
        AppView(store: AppRootView.store)
    }
}
