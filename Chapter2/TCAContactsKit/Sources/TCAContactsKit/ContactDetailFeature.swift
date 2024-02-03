//
//  ContactDetailFeature.swift
//
//  
//  Created by penguinsan on 2024/02/03
//  
//

import ComposableArchitecture
import Foundation

@Reducer
struct ContactDetailFeature {

    @ObservableState
    struct State: Equatable {
        let contact: Contact
    }

    enum Action {
    }
}
