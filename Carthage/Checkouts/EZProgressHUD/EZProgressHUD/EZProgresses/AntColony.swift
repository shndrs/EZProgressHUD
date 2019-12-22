//
//  AntColony.swift
//  EZProgressHUD
//
//  Created by shndrs on 7/8/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit

final public class AntColony: EZBaseProgresses {
    
    public override func setAnimation() {
        setProperties()
        scaleTransformAnimation()
        lineWidthAnimation()
        titleAnimations()
        lineDashAnimation()
    }
}

// MARK: - Methods

extension AntColony {
    
    fileprivate func setProperties() {
        firstShapeLayer.lineWidth = 5.0
        firstShapeLayer.lineDashPattern = [5]
    }
    
    private func scaleTransformAnimation() {
        let baseArgs = BaseAnimationArgument(duration: 2.0, option: .linear)
        let scaleTransformArgs = TransformArguments(fromValue: 1.14, toValue: 0.93,
                                                    base: baseArgs)
        let scaleTransformAnimation = EZAnimations.transform(with: scaleTransformArgs)
        secondShapeLayer.add(scaleTransformAnimation, forKey: EZStrings.hsKey1.rawValue)
    }
    
    private func lineWidthAnimation() {
        let thirdLineWidthAnimation = EZAnimations.lineWidth(toValue: (options.strokeWidth - 3.5),
                                                             duration: 2)
        thirdShapeLayer.add(thirdLineWidthAnimation, forKey: EZStrings.hsKey2.rawValue)
    }
    
    private func titleAnimations() {
        let opacityAnimation = EZAnimations.opacity()
        let transformXAnimation = EZAnimations.transformX()
        titleLabel.layer.add(opacityAnimation, forKey: EZStrings.hsKey3.rawValue)
        titleLabel.layer.add(transformXAnimation, forKey: EZStrings.hsKey0.rawValue)
    }
    
    private func lineDashAnimation() {
        let baseArgs = BaseAnimationArgument(duration: 0.75, option: .linear)
        let lineDashArgs = LineDashPhaseArguments(byValue: 10.0, base: baseArgs)
        let lineDashPhaseAnimation = EZAnimations.lineDashPhase(with: lineDashArgs)
        firstShapeLayer.add(lineDashPhaseAnimation, forKey: EZStrings.hsKey4.rawValue)
    }
}
