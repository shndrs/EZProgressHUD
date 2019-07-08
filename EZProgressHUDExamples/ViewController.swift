//
//  ViewController.swift
//  EZProgressHUDExamples
//
//  Created by shndrs on 7/8/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit
import EZProgressHUD

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let options = EZProgressOptions()
        let hud = EZProgressHUD.setProgress(with: options)
        
        hud.show()
        hud.dismiss(completion: nil)
        
        
        
    }


}

