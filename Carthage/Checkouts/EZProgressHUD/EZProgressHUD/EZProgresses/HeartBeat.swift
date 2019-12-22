//
//  HeartBeat.swift
//  EZProgressHUD
//
//  Created by shndrs on 7/8/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit

final public class HeartBeat: EZBaseProgresses {
    public override func setAnimation() {
        transformAnimations()
        titleAnimations()
    }
}

// MARK: -  Methods

extension HeartBeat {
    
    private func transformAnimations() {
        let baseArgs = BaseAnimationArgument(duration: 0.8, option: .easeOut)
        let transformAnimationObj = TransformArguments(toValue: 1.07, base: baseArgs)
        let transformAnimation = EZAnimations.transform(with: transformAnimationObj)
        let secondBaseArgs = BaseAnimationArgument(duration: 1.6, option: .easeOut)
        let innerPulsateObj = TransformArguments(toValue: 0.95, base: secondBaseArgs)
        let transformAnimationInnerPulsate = EZAnimations.transform(with: innerPulsateObj)
        secondShapeLayer.add(transformAnimation,
                             forKey: EZStrings.hsKey0.rawValue)
        thirdShapeLayer.add(transformAnimationInnerPulsate,
                            forKey: EZStrings.hsKey1.rawValue)
    }
    
    private func titleAnimations() {
        let opacityAnimation = EZAnimations.opacity()
        let transformXScaleAnimation = EZAnimations.transformX()
        
        titleLabel.layer.add(opacityAnimation,
                             forKey: EZStrings.hsKey2.rawValue)
        titleLabel.layer.add(transformXScaleAnimation,
                             forKey: EZStrings.hsKey3.rawValue)
    }
}
