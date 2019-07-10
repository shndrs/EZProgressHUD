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
    
    // MARK: - HeartBeat HUD
    
    @IBAction private func heartBeatButtonPressed(_ sender: UIButton) {
        
        let options = EZProgressOptions { (option) in
            option.radius = 120
            option.secondLayerStrokeColor = UIColor(red: 220/255, green: 20/255, blue: 60/255, alpha: 1)
            option.strokeWidth = 12
            option.thirdLayerStrokeColor = .gray
            option.firstLayerStrokeColor = UIColor(red: 220/255, green: 20/255, blue: 60/255, alpha: 1)
            option.title = "shndrs presents"
            option.animationOption = EZAnimationOptions.heartBeat
        }
        
        let hud = EZProgressHUD.setProgress(with: options)
        
        hud.show()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            hud.dismiss(completion: nil)
        }
    }
    
    // MARK: - LineLayer HUD
    
    @IBAction private func lineLayerButtonPressed(_ sender: UIButton) {
        
        let options = EZProgressOptions { (option) in
            option.radius = 120
            option.secondLayerStrokeColor = UIColor(red: 255/255, green: 190/255, blue: 0/255, alpha: 1)
            option.strokeWidth = 13
            option.thirdLayerStrokeColor = UIColor(red: 255/255, green: 190/255, blue: 0/255, alpha: 1)
            option.firstLayerStrokeColor = .black
            option.title = "shndrs presents"
            option.animationOption = EZAnimationOptions.lineLayer
        }
        
        let hud = EZProgressHUD.setProgress(with: options)
        hud.show()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            hud.dismiss(completion: nil)
        }
    }
    
    // MARK: - LordOfTheRings HUD
    
    @IBAction private func lordOfTheRingsButtonPressed(_ sender: UIButton) {
        
        let options = EZProgressOptions { (option) in
            option.radius = 120
            option.secondLayerStrokeColor = .white
            option.strokeWidth = 12
            option.thirdLayerStrokeColor = UIColor(red: 85.0/255.0, green: 85.0/255.0, blue: 85.0/255.0, alpha: 1.0)
            option.firstLayerStrokeColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 1.0)
            option.title = "shndrs presents"
            option.animationOption = EZAnimationOptions.lordOfTheRings
        }
        
        let hud = EZProgressHUD.setProgress(with: options)
        hud.show()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            hud.dismiss(completion: nil)
        }
    }
    
    // MARK: - XRotation HUD
    
    @IBAction private func xRotationButtonPressed(_ sender: UIButton) {
        
        let options = EZProgressOptions { (option) in
            option.radius = 115
            option.secondLayerStrokeColor = .brown
            option.strokeWidth = 12
            option.thirdLayerStrokeColor = .gray
            option.firstLayerStrokeColor = .darkGray
            option.title = "shndrs presents"
            option.animationOption = EZAnimationOptions.xRotation
        }
        
        let hud = EZProgressHUD.setProgress(with: options)
        hud.show()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            hud.dismiss(completion: nil)
        }
    }
    
    // MARK: - YRotation HUD
    
    @IBAction private func yRotationButtonPressed(_ sender: UIButton) {
        
        let options = EZProgressOptions { (option) in
            option.radius = 115
            option.secondLayerStrokeColor = .brown
            option.strokeWidth = 12
            option.thirdLayerStrokeColor = .gray
            option.firstLayerStrokeColor = .darkGray
            option.title = "shndrs presents"
            option.animationOption = EZAnimationOptions.yRotation
        }
        
        let hud = EZProgressHUD.setProgress(with: options)
        hud.show()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            hud.dismiss(completion: nil)
        }
    }
    
    // MARK: - XYRotation HUD
    
    @IBAction private func xyRotationButtonPressed(_ sender: UIButton) {
        
        let options = EZProgressOptions { (option) in
            option.radius = 115
            option.secondLayerStrokeColor = UIColor(red: 0.0/255.0, green: 205.0/255.0, blue: 60.0/255.0, alpha: 1.0)
            option.strokeWidth = 12
            option.thirdLayerStrokeColor = UIColor(red: 0.0/255.0, green: 145.0/255.0, blue: 60.0/255.0, alpha: 1.0)
            option.firstLayerStrokeColor = UIColor(red: 0.0/255.0, green: 145.0/255.0, blue: 60.0/255.0, alpha: 1.0)
            option.title = "shndrs presents"
            option.animationOption = EZAnimationOptions.xyRotation
        }
        
        let hud = EZProgressHUD.setProgress(with: options)
        hud.show()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            hud.dismiss(completion: nil)
        }
    }
    
    // MARK: - AntColony HUD
    
    @IBAction private func antColonyButtonPressed(_ sender: UIButton) {
        
        let options = EZProgressOptions { (option) in
            option.radius = 120
            option.secondLayerStrokeColor = UIColor(red: 85.0/255.0, green: 85.0/255.0, blue: 85.0/255.0, alpha: 1.0)
            option.strokeWidth = 12
            option.thirdLayerStrokeColor = .darkGray
            option.firstLayerStrokeColor = .white
            option.title = "shndrs presents"
            option.animationOption = EZAnimationOptions.antColony
        }
        
        let hud = EZProgressHUD.setProgress(with: options)
        hud.show()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            hud.dismiss(completion: nil)
        }
    }
    
    //MARK: - HNK HUD
    
    @IBAction private func hnkButtonPressed(_ sender: UIButton) {
        
        let options = EZProgressOptions { (option) in
            option.radius = 115
            option.secondLayerStrokeColor = UIColor(red: 10/255, green: 101/255, blue: 171/255, alpha: 1.0)
            option.strokeWidth = 3
            option.thirdLayerStrokeColor = .gray
            option.firstLayerStrokeColor = UIColor(red: 10/255, green: 101/255, blue: 171/255, alpha: 1.0)
            option.title = "shndrs presents"
            option.animationOption = EZAnimationOptions.hnk
        }
        
        let hud = EZProgressHUD.setProgress(with: options)
        hud.show()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            hud.dismiss(completion: nil)
        }
    }
}