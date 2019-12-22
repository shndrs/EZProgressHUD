//
//  EZAnimationArgument.swift
//  EZProgressHUD
//
//  Created by NP2 on 7/16/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import Foundation

public class BaseAnimationArgument {
    
    public var duration: CFTimeInterval!
    public var option:CAMediaTimingFunctionName!
    
    public init(duration:CFTimeInterval, option:CAMediaTimingFunctionName) {
        self.duration = duration
        self.option = option
    }
}

public final class TransformArguments: BaseAnimationArgument {
    
    public var fromValue:Any!
    public var toValue:Any!
    
    public init(fromValue: Any = 1,
                toValue:Any,
                base: BaseAnimationArgument) {
        
        self.fromValue = fromValue
        self.toValue = toValue
        super.init(duration: base.duration, option: base.option)
    }
}

public final class LineDashPhaseArguments: BaseAnimationArgument {
    
    public var byValue:Any!
    public var autoreverse:Bool!
    
    public init(byValue:Any,
                autoreverse:Bool = false,
                base:BaseAnimationArgument) {
        self.byValue = byValue
        self.autoreverse = autoreverse
        super.init(duration: base.duration, option: base.option)
    }
}
