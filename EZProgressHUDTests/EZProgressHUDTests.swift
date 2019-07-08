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
        let options = EZProgressOptions { (options) in
            options.radius = 115
            options.secondLayerStrokeColor = .green
            options.strokeWidth = 2
            options.thirdLayerStrokeColor = .gray
            options.firstLayerStrokeColor = .yellow
            options.title = "shndrs presents"
            options.animationOption = EZAnimationOptions.hnk
        }
        
        XCTAssertNotNil(options)
        
        let hud = EZProgressHUD.setProgress(with: options)
        
        XCTAssertNotNil(hud)
    }
    
    func defaultHudTest() {
        
        let options = EZProgressOptions()
        
        XCTAssertNotNil(options, "Not Nil")
        
        let hud = EZProgressHUD.setProgress(with: options)
        
        XCTAssertNotNil(hud)
    }

    func testPerformanceExample() {
        
        self.measure {
            hnkTest()
            defaultHudTest()
        }
    }

}
