//
//  EZFactory.swift
//  EZProgressHUD
//
//  Created by shndrs on 7/8/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import Foundation

public struct EZProgressHUD {
    
    private init() {}
    
    ///A Factory method That returns a EZProgressProtocol to access show() and dismiss() functions
    
    @discardableResult
    public static func setProgress(with options:EZProgressOptions) -> EZProgress {
        
        switch options.animationOption {
            
        case .heartBeat:
            
            return HeartBeat(options: options)
            
        case .lineLayer:
            
            return LineLayer(options: options)
            
        case .lordOfTheRings:
            
            return LordOfTheRings(options: options)
            
        case .antColony:
            
            return AntColony(options: options)
        
        default:
            return rotationBasedProgress(with: options)
        }
    }
    
    @discardableResult
    private static func rotationBasedProgress(with options:EZProgressOptions)
        -> EZProgress {
        
        switch options.animationOption {
        case .xRotation:
            
            return XRotation(options: options)
            
        case .xyRotation:
            
            return XYRotation(options: options)
            
        case .yRotation:
            
            return YRotation(options: options)
            
        case .hnk:
            
            return HNK(options: options)
            
        default:
            return HeartBeat(options: options)
        }
    }
}

