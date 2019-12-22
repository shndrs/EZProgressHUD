//
//  YRotation.swift
//  EZProgressHUD
//
//  Created by shndrs on 7/8/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit

final public class YRotation: EZBaseProgresses {
    public override func setAnimation() {
        transformScaleAnimations()
        rotationYAnimation()
        opacityAnimation()
    }
}

// MARK: - Methods

extension YRotation {
    
    private func transformScaleAnimations() {
        let baseArgs = BaseAnimationArgument(duration: 1.0, option: .easeInEaseOut)
        let transformScaleArgs = TransformArguments(toValue: 1.05, base: baseArgs)
        let transformScaleAnimation = EZAnimations.transform(with: transformScaleArgs)
        let secondBaseArgs = BaseAnimationArgument(duration: 0.8, option: .easeOut)
        let innerPulsateArgs = TransformArguments(toValue: 1.1, base: secondBaseArgs)
        let transformAnimationInnerPulsate = EZAnimations.transform(with: innerPulsateArgs)
        firstShapeLayer.add(transformScaleAnimation, forKey: EZStrings.hsKey0.rawValue)
        titleLabel.layer.add(transformScaleAnimation, forKey: EZStrings.hsKey4.rawValue)
        thirdShapeLayer.add(transformAnimationInnerPulsate, forKey: EZStrings.hsKey2.rawValue)
    }
    
    private func rotationYAnimation() {
        let rotationYAnimation = EZAnimations.rotation(duration: 4,
                                                       rotationMode: .yRotation)
        secondShapeLayer.add(rotationYAnimation, forKey: EZStrings.hsKey1.rawValue)
    }
    
    private func opacityAnimation() {
        let opacityAnimation = EZAnimations.opacity()
        titleLabel.layer.add(opacityAnimation, forKey: EZStrings.hsKey3.rawValue)
    }
}
