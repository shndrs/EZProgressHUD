//
//  ViewController.swift
//  EZProgressHUDExamples
//
//  Created by shndrs on 7/8/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit
import EZProgressHUD

final class ViewController: UIViewController {
    
    @IBAction private func heartBeatButtonPressed(_ sender: UIButton) {
        
        let progress = EZProgressOptions { (options) in
            options.radius = 120
            options.secondLayerStrokeColor = UIColor(red: 220/255, green: 20/255, blue: 60/255, alpha: 1)
            options.strokeWidth = 12
            options.thirdLayerStrokeColor = .gray
            options.firstLayerStrokeColor = UIColor(red: 220/255, green: 20/255, blue: 60/255, alpha: 1)
            options.title = "shndrs presents"
            options.animationOption = EZAnimationOptions.heartBeat
        }
        
        let hud = EZProgressHUD.set(progress: progress)
        hud.show()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
            hud.dismiss(completion: nil)
        }
    }
    
    
    
}
