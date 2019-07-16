//
//  LineLayer.swift
//  EZProgressHUD
//
//  Created by shndrs on 7/8/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit

final public class LineLayer: EZBaseView {}

// MARK: EZProgressProtocol Impelementation

extension LineLayer: EZProgress {
    
    public func show() {
        setLayers()
        showBlock()
    }
    
    public func dismiss(completion: (() -> Void)?) {
        dismissBlock(completion: completion)
    }
}

// MARK: Set Animation And Layers

extension LineLayer: EZProgressAnimation {
    
    public func setLayers() {
        transView.alpha = 0
        titleLabel.frame = CGRect(x: 0, y: 0, width: 140, height: 70)
        titleLabel.center = transView.center
        transView.addSubview(titleLabel)
        layerGenerator(shapeLayer: secondShapeLayer, type: .secondShapeLayer)
        layerGenerator(shapeLayer: thirdShapeLayer, type: .thirdShapeLayer)
        layerGenerator(shapeLayer: firstShapeLayer, type: .firstShapeLayer)
        setAnimation()
    }
    
    fileprivate func setProperties() {
        firstShapeLayer.lineWidth = (options.strokeWidth / 4) + 1
        firstShapeLayer.lineDashPattern = [5]
        firstShapeLayer.strokeStart = 0.0
        firstShapeLayer.strokeEnd = 0.0
    }
    
    public func setAnimation() {
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

