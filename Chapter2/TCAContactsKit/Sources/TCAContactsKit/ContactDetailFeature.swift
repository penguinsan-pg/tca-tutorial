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
        enum Alert {
            case confirmDeletion
        }
        enum Delegate {
            case confirmDeletion
        }
        case alert(PresentationAction<Alert>)
        case delegate(Delegate)
        case deleteButtonTapped
    }

    @Dependency(\.dismiss) var dismiss

    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .alert(.presented(.confirmDeletion)):
                return .run { send in
                    await send(.delegate(.confirmDeletion))
                    await self.dismiss()
                }

            case .alert:
                return .none

            case .delegate:
                return .none

            case .deleteButtonTapped:
                state.alert = .confirmDeletion
                return .none
            }
        }
        .ifLet(\.$alert, action: \.alert)
    }
}

extension AlertState where Action == ContactDetailFeature.Action.Alert {

    static let confirmDeletion = Self {
        TextState("Are you sure?")
    } actions: {
        ButtonState(role: .destructive, action: .confirmDeletion) {
            TextState("Delete")
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
