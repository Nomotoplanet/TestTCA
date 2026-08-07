//
//  TestTCAUITestsLaunchTests.swift
//  TestTCAUITests
//
//  Created by nomoto on 2026/08/06.
//

import XCTest

final class TestTCAUITestsLaunchTests: XCTestCase {

    /*
     SwiftLintでfinal classの場合、オーバーライドはできないのでstaticにしてくれというルールをつけたが、以下のコードはデフォルトで生成される
     コードのため、swiftlint:disable:next static_over_final_classでルールを無視した
    */
    
    // swiftlint:disable:next static_over_final_class
    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app
        // XCUIAutomation Documentation
        // https://developer.apple.com/documentation/xcuiautomation

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
