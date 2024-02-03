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
        @Presents var alert: AlertState<Action.Alert>?
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

    let store: StoreOf<ContactDetailFeature>

    var body: some View {
        Form {
        }
        .navigationBarTitle(Text(store.contact.name))
    }
}

#Preview {
    NavigationStack {
        ContactDetailView(
            store: Store(
                initialState: ContactDetailFeature.State(
                    contact: Contact(id: UUID(), name: "Blob")
                )
            ) {
                ContactDetailFeature()
            }
        )
    }
}
