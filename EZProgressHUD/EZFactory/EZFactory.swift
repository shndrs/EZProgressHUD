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
    public static func set(progress:EZProgressOptions) -> EZProgress {
        
        switch progress.animationOption {
            
        case .heartBeat:
            
            return HeartBeat(progress: progress)
            
        case .xRotation:
            
            return XRotation(progress: progress)
            
        case .lineLayer:
            
            return LineLayer(progress: progress)
            
        case .lordOfTheRings:
            
            return LordOfTheRings(progress: progress)
            
        case .xyRotation:
            
            return XYRotation(progress:progress)
            
        case .yRotation:
            
            return YRotation(progress:progress)
            
        case .antColony:
            
            return AntColony(progress:progress)
            
        case .hnk:
            
            return HNK(progress:progress)
            
        }
    }
}

