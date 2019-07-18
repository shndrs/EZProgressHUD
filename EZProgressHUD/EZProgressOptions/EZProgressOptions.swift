//
//  EZProgressOptions.swift
//  EZProgressHUD
//
//  Created by shndrs on 7/8/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit

public enum EZAnimationOptions {
    /// diffrent types of animations
    case heartBeat,
    xRotation,
    yRotation,
    lineLayer,
    lordOfTheRings,
    xyRotation,
    antColony,
    hnk
}

@requires_stored_property_inits
public class EZTitleOptions {
    /// the stroke width of circles (by default is 12.0)
    public var strokeWidth: CGFloat = 12.0
    
    /// title text (by default is Please Wait...)
    public var title: String = EZStrings.pleaseWait.rawValue
    
    /// font of title text (by default is Papyrus size 18)
    public var font: UIFont = UIFont(name: EZStrings.fontName.rawValue, size: 18)!
    
    /// color of title text (by default is white)
    public var titleTextColor: UIColor = .white
}

@requires_stored_property_inits
public class EZProgressColorOptions: EZTitleOptions {
    
    private static let red = UIColor(red: 220/255, green: 20/255, blue: 60/255, alpha: 1)
    
    /// the color of main circle (default is red)
    public var firstLayerStrokeColor: UIColor = red
    
    /// the color of second circle layer which is transparent (default is red)
    public var secondLayerStrokeColor: UIColor = red
    
    /// the color of third circle layer (by default is .gray)
    public var thirdLayerStrokeColor: UIColor = UIColor.gray
    
    /// the background transparent view color (by default is black)
    public var transViewBackgroundColor: UIColor = UIColor.black
}

@requires_stored_property_inits
public class EZProgressOptions: EZProgressColorOptions {
    
    /// the radius of the circles (by default is 115.0)
    public var radius: CGFloat = 115.0
    
    /// choose diffrent kind of animations by changing this property
    /// (by default is EZAnimationOptions.heartBeat)
    public var animationOption: EZAnimationOptions = .heartBeat
    
    public typealias BuilderClosure = (EZProgressOptions) -> Void
    
    /// use this initializer for default setup
    public required override init() {}
    
    /// Customize EZProgressHUD by using this closure
    public init(options:BuilderClosure) {
        super.init()
        options(self)
    }
}

