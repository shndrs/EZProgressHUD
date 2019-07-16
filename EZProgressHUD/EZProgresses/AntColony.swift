//
//  AntColony.swift
//  EZProgressHUD
//
//  Created by shndrs on 7/8/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit

final public class AntColony: EZBaseProgresses {
    fileprivate func setProperties() {
        firstShapeLayer.lineWidth = 5.0
        firstShapeLayer.lineDashPattern = [5]
    }
    
    public override func setAnimation() {
        setProperties()
        let lineDashArgs = LineDashPhaseArguments(byValue: 10.0, duration: 0.75,
                                                  option: .linear)
        let lineDashPhaseAnimation = EZAnimations.lineDashPhase(with: lineDashArgs)
        let scaleTransformArgs = TransformArguments(fromValue: 1.14, toValue: 0.93,
                                                    duration: 2, option: .linear)
        let scaleTransformAnimation = EZAnimations.transform(with: scaleTransformArgs)
        let thirdLineWidthAnimation = EZAnimations.lineWidth(toValue: (options.strokeWidth - 3.5),
                                                             duration: 2)
        let opacityAnimation = EZAnimations.opacity()
        let transformXAnimation = EZAnimations.transformX()
        secondShapeLayer.add(scaleTransformAnimation, forKey: EZStrings.hsKey1.rawValue)
        thirdShapeLayer.add(thirdLineWidthAnimation, forKey: EZStrings.hsKey2.rawValue)
        titleLabel.layer.add(opacityAnimation, forKey: EZStrings.hsKey3.rawValue)
        titleLabel.layer.add(transformXAnimation, forKey: EZStrings.hsKey0.rawValue)
        firstShapeLayer.add(lineDashPhaseAnimation, forKey: EZStrings.hsKey4.rawValue)
    }
}
