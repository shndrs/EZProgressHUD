//
//  EZBaseProgresses.swift
//  EZProgressHUD
//
//  Created by shndrs on 7/16/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit

public class EZBaseProgresses: EZBaseView {}

// MARK: EZProgressProtocol Impelementation

extension EZBaseProgresses: EZProgress {
    public func show() {
        setLayers()
        showBlock()
    }
    
    public func dismiss(completion: (() -> Void)?) {
        dismissBlock(completion: completion)
    }
}

// MARK: Set Animation And Layers

extension EZBaseProgresses: EZProgressAnimation {
    
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
    
    public func setAnimation() {}
}
