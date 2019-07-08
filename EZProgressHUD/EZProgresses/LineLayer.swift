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
    
    public func setAnimation() {
        
        firstShapeLayer.lineWidth = (options.strokeWidth / 4) + 1
        firstShapeLayer.lineDashPattern = [5]
        firstShapeLayer.strokeStart = 0.0
        firstShapeLayer.strokeEnd = 0.0
        
        let lineDashPhaseAnimation = EZAnimations.lineDashPhase(byValue: 158.0, duration: 3.75, option: .easeInEaseOut, autoreverse: true)
        let lineWidthAnimation = EZAnimations.lineWidth(toValue: (options.strokeWidth / 4) + 2.5, duration: 0.3)
        let scaleTransformAnimation = EZAnimations.transform(fromValue: 1, toValue: 1.06, duration: 1.1, option: .easeIn)
        let thirdLineWidthAnimation = EZAnimations.lineWidth(toValue: (options.strokeWidth - 1.0), duration: 0.3)
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

