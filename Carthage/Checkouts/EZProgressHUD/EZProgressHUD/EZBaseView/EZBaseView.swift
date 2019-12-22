//
//  EZBaseView.swift
//  EZProgressHUD
//
//  Created by shndrs on 7/8/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit

public enum ShapeLayerType {
    case firstShapeLayer, secondShapeLayer, thirdShapeLayer
}

open class EZBaseView: UIView {
    
    public var options: EZProgressOptions
    
    /// our first shape layer
    public private(set) lazy var firstShapeLayer: CAShapeLayer = {
        let temp = CAShapeLayer()
        return temp
    }()
    /// our second shape layer which is transparent
    public private(set) lazy var secondShapeLayer: CAShapeLayer = {
        let temp = CAShapeLayer()
        return temp
    }()
    /// our third shape layer
    public private(set) lazy var thirdShapeLayer: CAShapeLayer = {
        let temp = CAShapeLayer()
        return temp
    }()
    
    /// the title label
    public private(set) lazy var titleLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = options.title
        lbl.textAlignment = .center
        lbl.textColor = options.titleTextColor
        lbl.numberOfLines = 3
        lbl.font = options.font
        return lbl
    }()
    
    /// the transparent view in the background with alpha component 0.90
    public private(set) lazy var transView: UIView = {
        let view = UIView()
        view.frame = UIScreen.main.bounds
        view.backgroundColor = options.transViewBackgroundColor.withAlphaComponent(0.95)
        view.isUserInteractionEnabled = false
        return view
    }()
    
    /// EZBaseView initializer that take a EZProgressOptions as it input
    public init(options: EZProgressOptions) {
        self.options = options
        super.init(frame: .zero)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /// this method set the circles position, path, fillColor and.........
    public func layerGenerator(shapeLayer: CAShapeLayer, type: ShapeLayerType) {
        
        switch type {
            
        case .firstShapeLayer:
            shapeLayer.strokeColor = options.firstLayerStrokeColor.cgColor
        case .secondShapeLayer:
            shapeLayer.strokeColor = options.secondLayerStrokeColor.withAlphaComponent(0.42).cgColor
        case .thirdShapeLayer:
            shapeLayer.strokeColor = options.thirdLayerStrokeColor.cgColor
        }
        
        let circularTrackPath = UIBezierPath(arcCenter: .zero,
                                             radius: options.radius,
                                             startAngle: -(.pi) , endAngle:2 * .pi,
                                             clockwise: true)
        
        shapeLayer.position = transView.center
        shapeLayer.path = circularTrackPath.cgPath
        shapeLayer.lineWidth = options.strokeWidth
        shapeLayer.fillColor = UIColor.clear.cgColor
        transView.layer.addSublayer(shapeLayer)
    }
    
    public func showBlock() {
        
        UIApplication.shared.keyWindow?.isUserInteractionEnabled = false
        UIApplication.shared.keyWindow?.addSubview(transView)
        transViewAnimation(completion: nil)
    }
    
    public func dismissBlock(completion: (() -> Void)?) {
        
        let completionHandler = { (success:Bool) in
            self.transView.removeFromSuperview()
            UIApplication.shared.keyWindow?.isUserInteractionEnabled = true
            completion?()
        }
        transViewAnimation(completion: completionHandler)
    }
    
    private func transViewAnimation(completion: ((Bool) -> Void)?) {
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseInOut, animations: {
            if self.transView.alpha == 1 {
                self.transView.alpha = 0
            } else {
                self.transView.alpha = 1
            }
        }, completion: completion)
    }
}
