//
//  TestTCATests.swift
//  TestTCATests
//
//  Created by nomoto on 2026/08/06.
//

import Testing
@testable import TestTCA

import ComposableArchitecture

struct TestTCATests {
    
    // SwiftLintのルールでマクロは、必ず改行して書く
    @Test
    func example() async throws {
        // Write your test here and use APIs like `#expect(...)` to check expected conditions.
        // Swift Testing Documentation
        // https://developer.apple.com/documentation/testing
    }
    
    @Test("+2ができる")
    func increaseBy2() async {
        let store = await Store(initialState: CounterFeature.State(), reducer: { CounterFeature() })
        await store.send(.increase(by: 2))
        #expect(store.count % 2 == 0)
    }
    
    @Test("-2ができる")
    func decreaseBy2() async {
        let store = await Store(initialState: CounterFeature.State(), reducer: { CounterFeature() })
        await store.send(.decrease(by: 2))
        #expect(store.count % 2 == 0)
    }

}
