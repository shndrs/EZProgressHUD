//
//  LordOfTheRings.swift
//  EZProgressHUD
//
//  Created by shndrs on 7/8/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit

final public class LordOfTheRings: EZBaseProgresses {
    public override func setAnimation() {
        firstLayerNTitleAnimations()
        secondLayerAnimations()
        thirdLayerAnimation()
        titleOpacityAnimation()
    }
}

// MARK: - Methods

extension LordOfTheRings {
    
    private func firstLayerNTitleAnimations() {
        let baseArgs = BaseAnimationArgument(duration: 1.0, option: .easeInEaseOut)
        let transformScaleArgs = TransformArguments(toValue: 1.05, base: baseArgs)
        let transformScaleAnimation = EZAnimations.transform(with: transformScaleArgs)
        firstShapeLayer.add(transformScaleAnimation, forKey: EZStrings.hsKey0.rawValue)
        titleLabel.layer.add(transformScaleAnimation, forKey: EZStrings.hsKey4.rawValue)
    }
    
    private func secondLayerAnimations() {
        let baseArgs = BaseAnimationArgument(duration: 2.0, option: .easeInEaseOut)
        let mainPulsateArgs = TransformArguments(fromValue: 1.14, toValue: 0.9, base: baseArgs)
        let mainPulsateAnimation = EZAnimations.transform(with: mainPulsateArgs)
        secondShapeLayer.add(mainPulsateAnimation, forKey: EZStrings.hsKey1.rawValue)
    }
    
    private func thirdLayerAnimation() {
        let baseArgs = BaseAnimationArgument(duration: 0.8, option: .easeOut)
        let innerPulsateArgs = TransformArguments(toValue: 1.1, base: baseArgs)
        let transformAnimationInnerPulsate = EZAnimations.transform(with: innerPulsateArgs)
        thirdShapeLayer.add(transformAnimationInnerPulsate, forKey: EZStrings.hsKey2.rawValue)
    }
    
    private func titleOpacityAnimation() {
        let opacityAnimation = EZAnimations.opacity()
        titleLabel.layer.add(opacityAnimation, forKey: EZStrings.hsKey3.rawValue)
    }
}
