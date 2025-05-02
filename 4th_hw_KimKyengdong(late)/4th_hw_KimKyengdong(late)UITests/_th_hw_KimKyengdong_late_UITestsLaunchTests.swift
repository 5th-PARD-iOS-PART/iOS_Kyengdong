//
//  _th_hw_KimKyengdong_late_UITestsLaunchTests.swift
//  4th_hw_KimKyengdong(late)UITests
//
//  Created by Kim Kyengdong on 4/17/25.
//

import XCTest

final class _th_hw_KimKyengdong_late_UITestsLaunchTests: XCTestCase {

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

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
