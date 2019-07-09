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

@requires_stored_property_inits public class EZProgressOptions {
    
    /// the width of stroke (by default is 17.0)
    public var strokeWidth: CGFloat = 17.0
    
    /// the color of main circle (by default is UIColor(red: 220/255, green: 20/255, blue: 60/255, alpha: 1)) it's red don't panic :D
    public var firstLayerStrokeColor: UIColor = UIColor(red: 220/255, green: 20/255, blue: 60/255, alpha: 1)
    
    /// the color of second circle layer that is transparent all the time (by default is UIColor(red: 220/255, green: 20/255, blue: 60/255, alpha: 1)) it's red don't panic :D
    public var secondLayerStrokeColor: UIColor = UIColor(red: 220/255, green: 20/255, blue: 60/255, alpha: 1)
    
    /// the color of third circle layer (by default is .gray)
    public var thirdLayerStrokeColor: UIColor = UIColor.gray
    
    /// title text (by default is Please Wait...)
    public var title: String = EZStrings.pleaseWait.rawValue
    
    /// font of title text (by default is Papyrus size 18) AKA Papyrus is not lame ;) :D
    public var font: UIFont = UIFont(name: EZStrings.fontName.rawValue, size: 18)!
    
    /// color of title text (by default is white)
    public var titleTextColor: UIColor = .white
    
    /// the background transparent view color (by default is black)
    public var transViewBackgroundColor: UIColor = UIColor.black
    
    /// the radius of the circles (by default is 105.0)
    public var radius: CGFloat = 105.0
    
    /// choose diffrent kind of animations by changing this property (by default is EZAnimationOptions.heartBeat)
    public var animationOption: EZAnimationOptions = .heartBeat
    
    
    public typealias BuilderClosure = (EZProgressOptions) -> ()
    
    /// use this initializer for default setup
    public required init() {}
    
    /// Customize EZProgressHUD by using this closure
    public init(options:BuilderClosure) {
        options(self)
    }
}

