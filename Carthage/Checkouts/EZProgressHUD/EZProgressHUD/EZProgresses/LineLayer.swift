//
//  LineLayer.swift
//  EZProgressHUD
//
//  Created by shndrs on 7/8/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit

final public class LineLayer: EZBaseProgresses {
    fileprivate func setProperties() {
        firstShapeLayer.lineWidth = (options.strokeWidth / 4) + 1
        firstShapeLayer.lineDashPattern = [5]
        firstShapeLayer.strokeStart = 0.0
        firstShapeLayer.strokeEnd = 0.0
    }
    
    public override func setAnimation() {
        setProperties()
        scaleTransformAnimation()
        lineWidthAnimations()
        lineDashAnimations()
        opacityAndStrokeAnimations()
    }
}

// MARK: - Methods

extension LineLayer {
    
    private func scaleTransformAnimation() {
        let baseArgs = BaseAnimationArgument(duration: 1.1, option: .easeIn)
        let scaleTransformArgs = TransformArguments(toValue: 1.06, base: baseArgs)
        let scaleTransformAnimation = EZAnimations.transform(with: scaleTransformArgs)
        secondShapeLayer.add(scaleTransformAnimation, forKey: EZStrings.hsKey0.rawValue)
    }
    
    private func lineWidthAnimations() {
        let thirdLineWidthAnimation = EZAnimations
            .lineWidth(toValue: (options.strokeWidth - 1.0), duration: 0.3)
        let lineWidthAnimation = EZAnimations
            .lineWidth(toValue: (options.strokeWidth / 4) + 2.5,
                       duration: 0.3)
        thirdShapeLayer.add(thirdLineWidthAnimation, forKey: EZStrings.hsKey1.rawValue)
        firstShapeLayer.add(lineWidthAnimation, forKey: EZStrings.hsKey3.rawValue)
    }
    
    private func lineDashAnimations() {
        let baseArgs = BaseAnimationArgument(duration: 3.75, option: .easeInEaseOut)
        let lineDashArgs = LineDashPhaseArguments(byValue: 158.0,
                                                  autoreverse: true, base: baseArgs)
        let lineDashPhaseAnimation = EZAnimations.lineDashPhase(with: lineDashArgs)
        firstShapeLayer.add(lineDashPhaseAnimation, forKey: EZStrings.hsKey4.rawValue)
    }
    
    private func opacityAndStrokeAnimations() {
        let opacityAnimation = EZAnimations.opacity()
        let strokeEndAnimation = EZAnimations.strokeEndAnimation(duration: 2)
        titleLabel.layer.add(opacityAnimation, forKey: EZStrings.hsKey2.rawValue)
        firstShapeLayer.add(strokeEndAnimation, forKey: EZStrings.hsKey5.rawValue)
    }
}
