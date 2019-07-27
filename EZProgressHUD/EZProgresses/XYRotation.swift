//
//  XYRotation.swift
//  EZProgressHUD
//
//  Created by shndrs on 7/8/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit

final public class XYRotation: EZBaseProgresses {
    public override func setAnimation() {
        rotationAnimations()
        transformScaleAnimation()
        opacityAnimation()
    }
}

// MARK: - Methods

extension XYRotation {
    
    private func rotationAnimations() {
        let rotationXAnimation = EZAnimations.rotation(duration: 6,
                                                       rotationMode: .xRotation)
        let rotationYAnimation = EZAnimations.rotation(duration: 3,
                                                       rotationMode: .yRotation)
        secondShapeLayer.add(rotationXAnimation, forKey: EZStrings.hsKey1.rawValue)
        thirdShapeLayer.add(rotationYAnimation, forKey: EZStrings.hsKey2.rawValue)
    }
    
    private func transformScaleAnimation() {
        let baseArgs = BaseAnimationArgument(duration: 1.0, option: .easeInEaseOut)
        let args = TransformArguments(toValue: 1.06, base: baseArgs)
        let transformScaleAnimation = EZAnimations.transform(with: args)
        firstShapeLayer.add(transformScaleAnimation, forKey: EZStrings.hsKey0.rawValue)
    }
    
    private func opacityAnimation() {
        let opacityAnimation = EZAnimations.opacity()
        titleLabel.layer.add(opacityAnimation, forKey: EZStrings.hsKey3.rawValue)
    }
}
