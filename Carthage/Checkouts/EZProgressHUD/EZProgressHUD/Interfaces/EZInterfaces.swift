//
//  EZInterfaces.swift
//  EZProgressHUD
//
//  Created by shndrs on 7/8/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import Foundation

@objc public protocol EZProgressAnimation {
    @objc func setAnimation() -> Void
    @objc func setLayers() -> Void
}

public protocol EZProgress {
    func show() -> Void
    func dismiss(completion: (()->Void)?) -> Void
}
