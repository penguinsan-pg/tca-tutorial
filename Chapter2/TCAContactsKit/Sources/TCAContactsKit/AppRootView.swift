//
//  AppRootView.swift
//
//  
//  Created by penguinsan on 2024/01/08
//  
//

import ComposableArchitecture
import SwiftUI

public struct AppRootView: View {

    private static let store = Store(initialState: ContactsFeature.State()) {
        ContactsFeature()
            ._printChanges()
    }

    public init() {}

    public var body: some View {
        ContactsView(store: AppRootView.store)
    }
}
