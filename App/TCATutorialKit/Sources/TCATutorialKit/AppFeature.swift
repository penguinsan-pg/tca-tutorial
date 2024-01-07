//
//  AppFeature.swift
//
//  
//  Created by penguinsan on 2023/12/29
//  
//

import ComposableArchitecture
import SwiftUI

@Reducer
struct AppFeature {

    struct State {
        var tab1 = CounterFeature.State()
        var tab2 = CounterFeature.State()
    }

    enum Action {
        case tab1(CounterFeature.Action)
        case tab2(CounterFeature.Action)
    }
}

struct AppView: View {

    let store1: StoreOf<CounterFeature>
    let store2: StoreOf<CounterFeature>

    var body: some View {
        TabView {
            CounterView(store: store1)
                .tabItem {
                    Text("Counter 1")
                }

            CounterView(store: store2)
                .tabItem {
                    Text("Counter 2")
                }
        }
    }
}
