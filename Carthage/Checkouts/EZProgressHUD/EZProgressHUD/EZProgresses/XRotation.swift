//
//  XRotation.swift
//  EZProgressHUD
//
//  Created by shndrs on 7/8/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit

final public class XRotation: EZBaseProgresses {
    public override func setAnimation() {
        transformScale()
        xRotation()
        opacity()
    }
}

// MARK: - Methods

extension XRotation {
    
    private func transformScale() {
        let baseArgs = BaseAnimationArgument(duration: 0.8, option: .easeOut)
        let innerPulsateArgs = TransformArguments(toValue: 1.1, base: baseArgs)
        let transformAnimationInnerPulsate = EZAnimations.transform(with: innerPulsateArgs)
        let secondBaseArgs = BaseAnimationArgument(duration: 1.0, option: .easeInEaseOut)
        let transformScaleArgs = TransformArguments(toValue: 1.05, base: secondBaseArgs)
        let transformScaleAnimation = EZAnimations.transform(with: transformScaleArgs)
        firstShapeLayer.add(transformScaleAnimation, forKey: EZStrings.hsKey0.rawValue)
        titleLabel.layer.add(transformScaleAnimation, forKey: EZStrings.hsKey4.rawValue)
        thirdShapeLayer.add(transformAnimationInnerPulsate, forKey: EZStrings.hsKey2.rawValue)
    }
    
    private func xRotation() {
        let rotationXAnimation = EZAnimations.rotation(duration: 4,
                                                       rotationMode: .xRotation)
        secondShapeLayer.add(rotationXAnimation, forKey: EZStrings.hsKey1.rawValue)
    }
    
    private func opacity() {
        let opacityAnimation = EZAnimations.opacity()
        titleLabel.layer.add(opacityAnimation, forKey: EZStrings.hsKey3.rawValue)
    }
}
