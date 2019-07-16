//
//  YRotation.swift
//  EZProgressHUD
//
//  Created by shndrs on 7/8/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit

final public class YRotation: EZBaseView {}

// MARK: EZProgressProtocol Impelementation

extension YRotation: EZProgress {
    
    public func show() {
        setLayers()
        showBlock()
    }
    
    public func dismiss(completion: (() -> Void)?) {
        dismissBlock(completion: completion)
    }
}

// MARK: Set Animation And Layers

extension YRotation: EZProgressAnimation {
    
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
        let rotationYAnimation = EZAnimations.rotationY(duration: 4)
        let innerPulsateArgs = TransformArguments(toValue: 1.1, duration: 0.8, option: .easeOut)
        let transformAnimationInnerPulsate = EZAnimations.transform(with: innerPulsateArgs)
        let opacityAnimation = EZAnimations.opacity()
        let transformScaleArgs = TransformArguments(toValue: 1.05, duration: 1.0, option: .easeInEaseOut)
        let transformScaleAnimation = EZAnimations.transform(with: transformScaleArgs)
        firstShapeLayer.add(transformScaleAnimation, forKey: EZStrings.hsKey0.rawValue)
        secondShapeLayer.add(rotationYAnimation, forKey: EZStrings.hsKey1.rawValue)
        thirdShapeLayer.add(transformAnimationInnerPulsate, forKey: EZStrings.hsKey2.rawValue)
        titleLabel.layer.add(opacityAnimation, forKey: EZStrings.hsKey3.rawValue)
        titleLabel.layer.add(transformScaleAnimation, forKey: EZStrings.hsKey4.rawValue)
    }
}

