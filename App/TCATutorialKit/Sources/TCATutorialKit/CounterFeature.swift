//
//  CounterFeature.swift
//
//  
//  Created by penguinsan on 2023/11/30
//  
//

import ComposableArchitecture
import SwiftUI

@Reducer
struct CounterFeature {

    struct State {
        var count = 0
    }

    enum Action {
        case decrementButtonTapped
        case incrementButtonTapped
    }

    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .decrementButtonTapped:
                state.count -= 1
                return .none

            case .incrementButtonTapped:
                state.count += 1
                return .none
            }
        }
    }
}

struct CounterView: View {

    let store: StoreOf<CounterFeature>

    var body: some View {
        EmptyView()
    }
}

#Preview {
    CounterView()
}