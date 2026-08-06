//
//  CounterFeature.swift
//  TestTCA
//
//  Created by nomoto on 2026/08/06.
//

import ComposableArchitecture

@Reducer
struct CounterFeature {
    
    @ObservableState
    struct State {
        var count: Int = 0
    }
    
    enum Action {
        case incrementButtonTapped
        case decrementButtonTapped
        case resetButtonTapped
    }
    
    var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
            case .incrementButtonTapped:
                return .none
            case .decrementButtonTapped:
                return .none
            case .resetButtonTapped:
                return .none
            }
        }
    }
}



