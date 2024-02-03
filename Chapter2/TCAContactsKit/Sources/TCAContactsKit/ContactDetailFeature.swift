//
//  ContactDetailFeature.swift
//
//  
//  Created by penguinsan on 2024/02/03
//  
//

import ComposableArchitecture
import SwiftUI

@Reducer
struct ContactDetailFeature {

    @ObservableState
    struct State: Equatable {
        let contact: Contact
    }

    enum Action {
    }

    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            }
        }
    }
}

struct ContactDetailView: View {

    var body: some View {
    }
}
