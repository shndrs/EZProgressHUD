//
//  LordOfTheRings.swift
//  EZProgressHUD
//
//  Created by shndrs on 7/8/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit

final public class LordOfTheRings: EZBaseView {}

// MARK: EZProgressProtocol Impelementation

extension LordOfTheRings: EZProgress {
    
    public func show() {
        
        setLayers()
        UIApplication.shared.keyWindow?.isUserInteractionEnabled = false
        UIApplication.shared.keyWindow?.addSubview(transView)
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseInOut, animations: {
            self.transView.alpha = 1
            self.transView.layoutIfNeeded()
        })
    }
    
    public func dismiss(completion: (() -> Void)? = nil) {
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseInOut, animations: {
            
            self.transView.alpha = 0
            self.transView.layoutIfNeeded()
        }) { _ in
            
            self.transView.removeFromSuperview()
            UIApplication.shared.keyWindow?.isUserInteractionEnabled = true
            completion?()
        }
    }
}

// MARK: Set Animation And Layers

extension LordOfTheRings: EZProgressAnimation {
    
    public func setLayers() {
        transView.alpha = 0
        titleLabel.frame = CGRect(x: 0, y: 0, width: 140, height: 110)
        titleLabel.center = transView.center
        transView.addSubview(titleLabel)
        layerGenerator(shapeLayer: secondShapeLayer, type: .secondShapeLayer)
        layerGenerator(shapeLayer: thirdShapeLayer, type: .thirdShapeLayer)
        layerGenerator(shapeLayer: firstShapeLayer, type: .firstShapeLayer)
        setAnimation()
    }
    
    public func setAnimation() {
        
        let transformAnimationInnerPulsate = EZAnimations.transform(toValue: 1.1, duration: 0.8, option: .easeOut)
        let mainPulsateAnimation = EZAnimations.transform(fromValue: 1.14, toValue: 0.9, duration: 2, option: .easeInEaseOut)
        let opacityAnimation = EZAnimations.opacity()
        let transformScaleAnimation = EZAnimations.transform(toValue: 1.05, duration: 1.0, option: .easeInEaseOut)
        
        firstShapeLayer.add(transformScaleAnimation, forKey: EZStrings.hsKey0.rawValue)
        secondShapeLayer.add(mainPulsateAnimation, forKey: EZStrings.hsKey1.rawValue)
        thirdShapeLayer.add(transformAnimationInnerPulsate, forKey: EZStrings.hsKey2.rawValue)
        titleLabel.layer.add(opacityAnimation, forKey: EZStrings.hsKey3.rawValue)
        titleLabel.layer.add(transformScaleAnimation, forKey: EZStrings.hsKey4.rawValue)
    }
}

