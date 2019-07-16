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
        let lineDashArgs = LineDashPhaseArguments(byValue: 158.0,
                                                  autoreverse: true, duration: 3.75,
                                                  option: .easeInEaseOut)
        let lineDashPhaseAnimation = EZAnimations.lineDashPhase(with: lineDashArgs)
        let lineWidthAnimation = EZAnimations.lineWidth(toValue: (options.strokeWidth / 4) + 2.5,
                                                        duration: 0.3)
        let scaleTransformArgs = TransformArguments(toValue: 1.06, duration: 1.1, option: .easeIn)
        let scaleTransformAnimation = EZAnimations.transform(with: scaleTransformArgs)
        let thirdLineWidthAnimation = EZAnimations
            .lineWidth(toValue: (options.strokeWidth - 1.0), duration: 0.3)
        let opacityAnimation = EZAnimations.opacity()
        let strokeEndAnimation = EZAnimations.strokeEndAnimation(duration: 2)
        secondShapeLayer.add(scaleTransformAnimation, forKey: EZStrings.hsKey0.rawValue)
        thirdShapeLayer.add(thirdLineWidthAnimation, forKey: EZStrings.hsKey1.rawValue)
        titleLabel.layer.add(opacityAnimation, forKey: EZStrings.hsKey2.rawValue)
        firstShapeLayer.add(lineWidthAnimation, forKey: EZStrings.hsKey3.rawValue)
        firstShapeLayer.add(lineDashPhaseAnimation, forKey: EZStrings.hsKey4.rawValue)
        firstShapeLayer.add(strokeEndAnimation, forKey: EZStrings.hsKey5.rawValue)
    }
}
