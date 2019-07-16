//
//  XYRotation.swift
//  EZProgressHUD
//
//  Created by shndrs on 7/8/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit

final public class XYRotation: EZBaseView {}

// MARK: EZProgressProtocol Impelementation

extension XYRotation: EZProgress {
    
    public func show() {
        setLayers()
        showBlock()
    }
    
    public func dismiss(completion: (() -> Void)?) {
        dismissBlock(completion: completion)
    }
}

// MARK: Set Animation And Layers

extension XYRotation: EZProgressAnimation {
    
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
        let rotationXAnimation = EZAnimations.rotationX(duration: 6)
        let rotationYAnimation = EZAnimations.rotationY(duration: 3)
        let args = TransformArguments(toValue: 1.06, duration: 1.0, option: .easeInEaseOut)
        let transformScaleAnimation = EZAnimations.transform(with: args)
        let opacityAnimation = EZAnimations.opacity()
        firstShapeLayer.add(transformScaleAnimation, forKey: EZStrings.hsKey0.rawValue)
        secondShapeLayer.add(rotationXAnimation, forKey: EZStrings.hsKey1.rawValue)
        thirdShapeLayer.add(rotationYAnimation, forKey: EZStrings.hsKey2.rawValue)
        titleLabel.layer.add(opacityAnimation, forKey: EZStrings.hsKey3.rawValue)
    }
}
