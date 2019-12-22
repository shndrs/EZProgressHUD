//
//  EZAnimations.swift
//  EZProgressHUD
//
//  Created by shndrs on 7/8/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit

public enum RotationMode {
    case xRotation, yRotation
}

public class EZAnimations {
    
    private init() {}
    
    @discardableResult
    public static func transform(with object: TransformArguments) -> CABasicAnimation {
        
        let transformScaleAnimation = CABasicAnimation(keyPath: EZStrings.transformScale.rawValue)
        transformScaleAnimation.toValue = object.toValue
        transformScaleAnimation.duration = object.duration
        transformScaleAnimation.timingFunction = CAMediaTimingFunction(name: object.option)
        setCommonAnimationProperties(animation: transformScaleAnimation)
        return transformScaleAnimation
    }
    
    @discardableResult
    public static func transformX() -> CABasicAnimation {
        
        let transformXScaleAnimation = CABasicAnimation(keyPath: EZStrings.transformScaleX.rawValue)
        transformXScaleAnimation.fromValue = 1
        transformXScaleAnimation.toValue = 1.02
        transformXScaleAnimation.duration = 1.0
        transformXScaleAnimation.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
        setCommonAnimationProperties(animation: transformXScaleAnimation)
        return transformXScaleAnimation
    }
    
    @discardableResult
    public static func rotation(duration: CFTimeInterval,
                                rotationMode:RotationMode) -> CABasicAnimation {
        var rotationAnimation = CABasicAnimation()
        
        switch rotationMode {
        
        case .xRotation:
            rotationAnimation = CABasicAnimation(keyPath: EZStrings.transformRotationX.rawValue)
        case .yRotation:
            rotationAnimation = CABasicAnimation(keyPath: EZStrings.transformRotationY.rawValue)
        }
        rotationsCommons(animation: rotationAnimation, duration: duration)
        return rotationAnimation
    }
    
    @discardableResult
    public static func opacity() -> CABasicAnimation {
        
        let opacityAnimation = CABasicAnimation(keyPath: EZStrings.opacity.rawValue)
        opacityAnimation.fromValue = 1
        opacityAnimation.toValue = 0.5
        opacityAnimation.duration = 0.4
        opacityAnimation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        setCommonAnimationProperties(animation: opacityAnimation)
        return opacityAnimation
    }
    
    @discardableResult
    public static func lineWidth(toValue: Any, duration: CFTimeInterval) -> CABasicAnimation {
        
        let lineWidthAnimation = CABasicAnimation(keyPath: EZStrings.lineWidth.rawValue)
        lineWidthAnimation.toValue = toValue
        lineWidthAnimation.duration = duration
        lineWidthAnimation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        setCommonAnimationProperties(animation: lineWidthAnimation)
        return lineWidthAnimation
    }
    
    @discardableResult
    public static func lineDashPhase(with object: LineDashPhaseArguments) -> CABasicAnimation {
        
        let lineDashPhaseAnimation = CABasicAnimation(keyPath: EZStrings.lineDashPhase.rawValue)
        lineDashPhaseAnimation.byValue = object.byValue
        lineDashPhaseAnimation.duration = object.duration
        lineDashPhaseAnimation.timingFunction = CAMediaTimingFunction(name: object.option)
        lineDashPhaseAnimation.autoreverses = object.autoreverse
        lineDashPhaseAnimation.repeatCount = .infinity
        return lineDashPhaseAnimation
    }
    
    @discardableResult
    public static func strokeEndAnimation(toValue:Any = 1.0,
                                          duration:CFTimeInterval = 0.75,
                                          option:CAMediaTimingFunctionName = .easeInEaseOut) -> CABasicAnimation {
        
        let strokeEndAnimation = CABasicAnimation(keyPath: EZStrings.strokeEnd.rawValue)
        strokeEndAnimation.toValue = 1.0
        strokeEndAnimation.duration = 0.75
        strokeEndAnimation.timingFunction = CAMediaTimingFunction(name: option)
        setCommonAnimationProperties(animation: strokeEndAnimation)
        return strokeEndAnimation
    }
}

// MARK: - Set common animation properties

extension EZAnimations {
    fileprivate class func setCommonAnimationProperties(animation: CABasicAnimation) {
        animation.autoreverses = true
        animation.repeatCount = .infinity
    }
    fileprivate class func rotationsCommons(animation: CABasicAnimation, duration: CFTimeInterval) {
        animation.fromValue = 0
        animation.toValue = CGFloat.pi * 2
        animation.duration = duration
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        setCommonAnimationProperties(animation: animation)
    }
}
