//
//  EZProgressHUDTests.swift
//  EZProgressHUDTests
//
//  Created by shndrs on 7/8/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import XCTest
@testable import EZProgressHUD

class EZProgressHUDTests: XCTestCase {

    override func setUp() {}

    override func tearDown() {}

    func hnkTest() {
        let progress = EZProgressOptions { (options) in
            options.radius = 115
            options.secondLayerStrokeColor = .green
            options.strokeWidth = 2
            options.thirdLayerStrokeColor = .gray
            options.firstLayerStrokeColor = .yellow
            options.title = "shndrs presents"
            options.animationOption = EZAnimationOptions.hnk
        }
        
        XCTAssertNotNil(progress)
        
        let hud = EZProgressHUD.set(progress: progress)
        
        XCTAssertNotNil(hud)
    }
    
    func defaultHudTest() {
        
        let progress = EZProgressOptions()
        
        XCTAssertNotNil(progress, "Not Nil")
        
        let hud = EZProgressHUD.set(progress: progress)
        
        XCTAssertNotNil(hud)
    }

    func testPerformanceExample() {
        
        self.measure {
            hnkTest()
            defaultHudTest()
        }
    }

}
