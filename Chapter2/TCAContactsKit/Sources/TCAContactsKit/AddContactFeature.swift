//
//  AddContactFeature.swift
//
//  
//  Created by penguinsan on 2024/01/18
//  
//

import ComposableArchitecture
import Foundation

@Reducer
struct AddContactFeature {

    struct State: Equatable {
        var contact: Contact
    }

    enum Action {
        case cancelButtonTapped
        case saveButtonTapped
        case setName(String)
    }

    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .cancelButtonTapped:
                return .none

            case .saveButtonTapped:
                return .none

            case .setName(let name):
                state.contact.name = name
                return .none
            }
        }
    }
}
