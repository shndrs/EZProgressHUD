//
//  EZInterfaces.swift
//  EZProgressHUD
//
//  Created by shndrs on 7/8/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import Foundation

public protocol EZProgressAnimation {
    func setAnimation() -> Void
    func setLayers() -> Void
}

public protocol EZProgress {
    func show() -> Void
    func dismiss(completion: (()->Void)?) -> Void
}
