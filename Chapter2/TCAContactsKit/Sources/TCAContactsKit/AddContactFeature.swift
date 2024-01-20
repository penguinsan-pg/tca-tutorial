//
//  AddContactFeature.swift
//
//  
//  Created by penguinsan on 2024/01/18
//  
//

import ComposableArchitecture
import SwiftUI

@Reducer
struct AddContactFeature {

    struct State: Equatable {
        var contact: Contact
    }

    enum Action {
        enum Delegate: Equatable {
            case cancel
            case saveContact(Contact)
        }
        case cancelButtonTapped
        case delegate(Delegate)
        case saveButtonTapped
        case setName(String)
    }

    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .cancelButtonTapped:
                return .send(.delegate(.cancel))

            case .delegate:
                return .none

            case .saveButtonTapped:
                return .send(.delegate(.saveContact(state.contact)))

            case .setName(let name):
                state.contact.name = name
                return .none
            }
        }
    }
}

struct AddContactView: View {

    let store: StoreOf<AddContactFeature>

    var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            Form {
                TextField("Name", text: viewStore.binding(get: \.contact.name, send: { .setName($0) }))
                Button("Save") {
                    viewStore.send(.saveButtonTapped)
                }
            }
            .toolbar {
                ToolbarItem {
                    Button("Cancel") {
                        viewStore.send(.cancelButtonTapped)
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        AddContactView(
            store: Store(
                initialState: AddContactFeature.State(
                    contact: Contact(
                        id: UUID(),
                        name: "Blob"
                    )
                )
            ) {
                AddContactFeature()
            }
        )
    }
}
