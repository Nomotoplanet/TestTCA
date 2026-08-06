//
//  CounterView.swift
//  TestTCA
//
//  Created by nomoto on 2026/08/06.
//

import SwiftUI
import ComposableArchitecture

// ビュー
struct CounterView: View {
    // StoreでユーザーアクションとReduceを接続
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
            Button(action: {
                store.send(.increment(by: 2))
            }) {
                Text("+2追加")
            }
        }
        .padding()
    }
}



