//
//  CounterView.swift
//  TestTCA
//
//  Created by nomoto on 2026/08/06.
//

import SwiftUI
import ComposableArchitecture

struct CounterView: View {
    let store: Store = Store(initialState: CounterFeature.State(), reducer: { CounterFeature() })
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    store.send(.decrementButtonTapped)
                }) {
                    Image(systemName: "minus")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                }
                .padding()
                Button(action: {
                    store.send(.incrementButtonTapped)
                }) {
                    Image(systemName: "plus")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                }
                .padding()
            }
            Button(action: {
                store.send(.resetButtonTapped)
            }) {
                Text("リセット")
            }
        }
        .padding()
    }
}



