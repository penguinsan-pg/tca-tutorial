//
//  CounterFeature.swift
//
//  
//  Created by penguinsan on 2023/11/30
//  
//

import ComposableArchitecture
import Foundation

@Reducer
struct CounterFeature {

    struct State {
        var count = 0
    }

    enum Action {
        case decrementButtonTapped
        case incrementButtonTapped
    }
}
