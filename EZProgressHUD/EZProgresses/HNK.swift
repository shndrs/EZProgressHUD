//
//  HNK.swift
//  EZProgressHUD
//
//  Created by shndrs on 7/8/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit

final public class HNK: EZBaseProgresses {
    
    public override func setAnimation() {
        setProperties()
        yRotationAnimation()
        scaleAnimations()
        dashAnimations()
        strokeEndAndTitleAnimations()
    }
}

// MARK: - Methods

extension HNK {
    
    fileprivate func setProperties() {
        firstShapeLayer.lineWidth = options.strokeWidth
        firstShapeLayer.lineDashPattern = [5]
        secondShapeLayer.lineWidth = options.strokeWidth
        secondShapeLayer.lineDashPattern = [5]
        thirdShapeLayer.lineWidth = options.strokeWidth
        thirdShapeLayer.lineDashPattern = [5]
        firstShapeLayer.strokeStart = 0.0
        firstShapeLayer.strokeEnd = 0.0
    }
    
    private func yRotationAnimation() {
        let rotationY = EZAnimations.rotation(duration: 6,
                                              rotationMode: .yRotation)
        secondShapeLayer.add(rotationY, forKey: EZStrings.hsKey8.rawValue)
    }
    
    private func scaleAnimations() {
        let baseArgs = BaseAnimationArgument(duration: 2.0, option: .easeInEaseOut)
        let transformScaleArgs = TransformArguments(toValue: 0.96, base: baseArgs)
        let transformScaleAnimation = EZAnimations.transform(with: transformScaleArgs)
        let secondBaseArgs = BaseAnimationArgument(duration: 4.0, option: .easeInEaseOut)
        let transformScaleArgs3 = TransformArguments(fromValue: 1.04, toValue: 1.09,
                                                     base: secondBaseArgs)
        let transformScaleAnimation3 = EZAnimations.transform(with: transformScaleArgs3)
        firstShapeLayer.add(transformScaleAnimation, forKey: EZStrings.hsKey0.rawValue)
        thirdShapeLayer.add(transformScaleAnimation3, forKey: EZStrings.hsKey2.rawValue)
    }
    
    private func dashAnimations() {
        let baseArgs = BaseAnimationArgument(duration: 0.75, option: .linear)
        let lineDashArgs = LineDashPhaseArguments(byValue: 18.0, base: baseArgs)
        let lineDashPhaseAnimation = EZAnimations.lineDashPhase(with: lineDashArgs)
        firstShapeLayer.add(lineDashPhaseAnimation, forKey: EZStrings.hsKey4.rawValue)
        secondShapeLayer.add(lineDashPhaseAnimation, forKey: EZStrings.hsKey5.rawValue)
        thirdShapeLayer.add(lineDashPhaseAnimation, forKey: EZStrings.hsKey6.rawValue)
    }
    
    private func strokeEndAndTitleAnimations() {
        let opacityAnimation = EZAnimations.opacity()
        
        let strokeEndAnimation = EZAnimations.strokeEndAnimation(toValue: 1,
                                                                 duration: 0.4,
                                                                 option: .easeIn)
        titleLabel.layer.add(opacityAnimation, forKey: EZStrings.hsKey3.rawValue)
        firstShapeLayer.add(strokeEndAnimation, forKey: EZStrings.hsKey7.rawValue)
    }
}
