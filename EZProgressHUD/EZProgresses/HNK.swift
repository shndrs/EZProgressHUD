//
//  HNK.swift
//  EZProgressHUD
//
//  Created by shndrs on 7/8/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit

final public class HNK: EZBaseView {
    public override func layoutSubviews() {}
}

// MARK: EZProgressProtocol Impelementation

extension HNK: EZProgress {
    
    public func show() {
        setLayers()
        showBlock()
    }
    
    public func dismiss(completion: (() -> Void)?) {
        dismissBlock(completion: completion)
    }
}

// MARK: Set Animation And Layers

extension HNK: EZProgressAnimation {
    
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
        
        firstShapeLayer.lineWidth = options.strokeWidth
        firstShapeLayer.lineDashPattern = [5]
        
        secondShapeLayer.lineWidth = options.strokeWidth
        secondShapeLayer.lineDashPattern = [5]
        
        thirdShapeLayer.lineWidth = options.strokeWidth
        thirdShapeLayer.lineDashPattern = [5]
        
        firstShapeLayer.strokeStart = 0.0
        firstShapeLayer.strokeEnd = 0.0
        
        let rotationYAnimation = EZAnimations.rotationY(duration: 6)
        let transformScaleAnimation = EZAnimations.transform(toValue: 0.96,
                                                             duration: 2.0,
                                                             option: .easeInEaseOut)
        let transformScaleAnimation3 = EZAnimations.transform(fromValue: 1.04,
                                                              toValue: 1.09,
                                                              duration: 3,
                                                              option: .easeInEaseOut)
        let opacityAnimation = EZAnimations.opacity()
        let lineDashPhaseAnimation = EZAnimations.lineDashPhase(byValue: 18.0,
                                                                duration: 0.75)
        let strokeEndAnimation = EZAnimations.strokeEndAnimation(toValue: 1,
                                                                 duration: 0.4,
                                                                 option: .easeIn)
        
        firstShapeLayer.add(transformScaleAnimation, forKey: EZStrings.hsKey0.rawValue)
        secondShapeLayer.add(rotationYAnimation, forKey: EZStrings.hsKey1.rawValue)
        thirdShapeLayer.add(transformScaleAnimation3, forKey: EZStrings.hsKey2.rawValue)
        titleLabel.layer.add(opacityAnimation, forKey: EZStrings.hsKey3.rawValue)
        firstShapeLayer.add(lineDashPhaseAnimation, forKey: EZStrings.hsKey4.rawValue)
        secondShapeLayer.add(lineDashPhaseAnimation, forKey: EZStrings.hsKey5.rawValue)
        thirdShapeLayer.add(lineDashPhaseAnimation, forKey: EZStrings.hsKey6.rawValue)
        firstShapeLayer.add(strokeEndAnimation, forKey: EZStrings.hsKey7.rawValue)
    }
}
