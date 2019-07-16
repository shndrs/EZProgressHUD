//
//  AntColony.swift
//  EZProgressHUD
//
//  Created by shndrs on 7/8/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit

final public class AntColony: EZBaseView {}

// MARK: EZProgressProtocol Impelementation

extension AntColony: EZProgress {
    
    public func show() {
        setLayers()
        showBlock()
    }
    
    public func dismiss(completion: (() -> Void)?) {
        dismissBlock(completion: completion)
    }
}

// MARK: Set Animation And Layers

extension AntColony: EZProgressAnimation {
    
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
    
    public func setAnimation() {
        
        firstShapeLayer.lineWidth = 5.0
        firstShapeLayer.lineDashPattern = [5]
        
        let lineDashPhaseAnimation = EZAnimations.lineDashPhase(byValue: 10.0,
                                                                duration: 0.75,
                                                                option: .linear,
                                                                autoreverse: false)
        let scaleTransformAnimation = EZAnimations.transform(fromValue: 1.14,
                                                             toValue: 0.93,
                                                             duration: 2,
                                                             option: .linear)
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

