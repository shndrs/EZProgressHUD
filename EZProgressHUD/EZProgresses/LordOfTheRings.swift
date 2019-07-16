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
        let innerPulsateArgs = TransformArguments(toValue: 1.1, duration: 0.8, option: .easeOut)
        let transformAnimationInnerPulsate = EZAnimations.transform(with: innerPulsateArgs)
        let mainPulsateArgs = TransformArguments(fromValue: 1.14, toValue: 0.9, duration: 2,
                                                 option: .easeInEaseOut)
        let mainPulsateAnimation = EZAnimations.transform(with: mainPulsateArgs)
        let opacityAnimation = EZAnimations.opacity()
        let transformScaleArgs = TransformArguments(toValue: 1.05, duration: 1.0,
                                                    option: .easeInEaseOut)
        let transformScaleAnimation = EZAnimations.transform(with: transformScaleArgs)
        
        firstShapeLayer.add(transformScaleAnimation, forKey: EZStrings.hsKey0.rawValue)
        secondShapeLayer.add(mainPulsateAnimation, forKey: EZStrings.hsKey1.rawValue)
        thirdShapeLayer.add(transformAnimationInnerPulsate, forKey: EZStrings.hsKey2.rawValue)
        titleLabel.layer.add(opacityAnimation, forKey: EZStrings.hsKey3.rawValue)
        titleLabel.layer.add(transformScaleAnimation, forKey: EZStrings.hsKey4.rawValue)
    }
}
