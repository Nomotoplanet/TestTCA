//
//  CounterFeature.swift
//  TestTCA
//
//  Created by nomoto on 2026/08/06.
//

import ComposableArchitecture

// Reducer追加
@Reducer
struct CounterFeature {
    
    // 検知可能な変数をStateで定義
    @ObservableState
    struct State {
        var count: Int = 0
    }
    
    // ビューで行うActionをenumで定義
    enum Action {
        case incrementButtonTapped
        case decrementButtonTapped
        case resetButtonTapped
    }
    
    // ビューへ公開し、ReducerでActionを処理させる
    var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
            case .incrementButtonTapped:
                state.count += 1
                return .none
            case .decrementButtonTapped:
                state.count -= 1
                return .none
            case .resetButtonTapped:
                state.count = 0
                return .none
            }
        }
    }
}



