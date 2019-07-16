//
//  EZAnimations.swift
//  EZProgressHUD
//
//  Created by shndrs on 7/8/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit

public class EZAnimations {
    
    private init() {}
    
    @discardableResult
    public static func transform(fromValue:Any = 1,
                                 toValue: Any, duration: CFTimeInterval,
                                 option:CAMediaTimingFunctionName) -> CABasicAnimation {
        
        let transformScaleAnimation = CABasicAnimation(keyPath: EZStrings.transformScale.rawValue)
        transformScaleAnimation.toValue = toValue
        transformScaleAnimation.duration = duration
        transformScaleAnimation.timingFunction = CAMediaTimingFunction(name: option)
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
    public static func rotationX(duration: CFTimeInterval) -> CABasicAnimation {
        
        let rotationXAnimation = CABasicAnimation(keyPath: EZStrings.transformRotationX.rawValue)
        rotationXAnimation.fromValue = 0
        rotationXAnimation.toValue = CGFloat.pi * 2
        rotationXAnimation.duration = duration
        rotationXAnimation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        setCommonAnimationProperties(animation: rotationXAnimation)
        return rotationXAnimation
    }
    
    @discardableResult
    public static func rotationY(duration: CFTimeInterval) -> CABasicAnimation {
        
        let rotationXAnimation = CABasicAnimation(keyPath: EZStrings.transformRotationY.rawValue)
        
        rotationXAnimation.fromValue = 0
        rotationXAnimation.toValue = CGFloat.pi * 2
        rotationXAnimation.duration = duration
        rotationXAnimation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        setCommonAnimationProperties(animation: rotationXAnimation)
        
        return rotationXAnimation
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
    public static func lineDashPhase(byValue:Any ,
                                     duration: CFTimeInterval,
                                     option:CAMediaTimingFunctionName = .linear,
                                     autoreverse: Bool = false) -> CABasicAnimation {
        
        let lineDashPhaseAnimation = CABasicAnimation(keyPath: EZStrings.lineDashPhase.rawValue)
        lineDashPhaseAnimation.byValue = byValue
        lineDashPhaseAnimation.duration = duration
        lineDashPhaseAnimation.timingFunction = CAMediaTimingFunction(name: option)
        lineDashPhaseAnimation.autoreverses = autoreverse
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
}
