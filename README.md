![EZProgressHUD-logo](https://user-images.githubusercontent.com/34839080/60944448-19d08680-a2fe-11e9-8381-9d73a56f69ae.png)

# EZProgressHUD

![build-status](https://travis-ci.org/shndrs/EZProgressHUD.svg?branch=master)
![swift-version](https://img.shields.io/badge/Swift-4.2-blueviolet.svg)
![version](https://img.shields.io/cocoapods/v/EZProgressHUD.svg)
![cocoapod](https://img.shields.io/badge/Cocoapods-compatible-4BC51D.svg)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
![license](https://img.shields.io/github/license/shndrs/EZProgressHUD.svg)

As we said in short description, this is a very cool customizable and easy to use activity indicator for iOS and guess what!!?? Android Application(coming soon...) hope you guys enjoy it 😊😊

![LineLayer-C](https://user-images.githubusercontent.com/34839080/60941651-1dabdb00-a2f5-11e9-8522-dee10b79b367.gif)
![LordOfTheRings-C](https://user-images.githubusercontent.com/34839080/60941652-1e447180-a2f5-11e9-9010-20ef3d993f78.gif)
![XRotation-C](https://user-images.githubusercontent.com/34839080/60941654-1e447180-a2f5-11e9-8c9d-194d068d0742.gif)
![YRotation-C](https://user-images.githubusercontent.com/34839080/60941655-1e447180-a2f5-11e9-9945-b68bc371c82a.gif)
![XYRotation-C](https://user-images.githubusercontent.com/34839080/60941656-1edd0800-a2f5-11e9-81b9-e14b5a7ba80d.gif)
![AntColony-C](https://user-images.githubusercontent.com/34839080/60941657-1edd0800-a2f5-11e9-922e-b151fa927c45.gif)
![HNK-C](https://user-images.githubusercontent.com/34839080/60941658-1edd0800-a2f5-11e9-8b22-6c0c8379db26.gif)
![HeartBeat-C](https://user-images.githubusercontent.com/34839080/60941659-1edd0800-a2f5-11e9-8bfa-bc24cff40a6c.gif)

How to use?
=======
If you wanna use the default `EZProgressHUD` just follow this👇🏻:
```Swift
import EZProgressHUD
```
```Swift
let options = EZProgressOptions()
let hud = EZProgressHUD.setProgress(with: options)        
``` 
And now you can show or dismiss the hud by :

```Swift
hud.show() // for show it
hud.dismiss(completion: nil) // for dismiss it
```

## Customization

There is two way to do the customization

### First Way: Creating an empty instance of EZProgressOptions

```Swift

let options = EZProgressOptions()

options.radius = 120                                            // by default is 115
options.firstLayerStrokeColor = .lightGray                      // by default is UIColor(red: 220/255, green: 20/255, blue: 60/255, alpha: 1)
options.secondLayerStrokeColor = .white                         // by default is UIColor(red: 220/255, green: 20/255, blue: 60/255, alpha: 1), FYI it's always transparent ;)
options.thirdLayerStrokeColor = .darkGray                       // by default is .gray
options.strokeWidth = 12                                        // by default is 12.0
options.font =  UIFont(name: "AvenirNext-Regular", size: 18)!   // by default is Papyrus size 18
options.title = "EZProgressHUD"                                 // by default is "Please Wait..."
options.titleTextColor = .white                                 // by default is white
options.transViewBackgroundColor = .black                       // by default is black
options.animationOption = EZAnimationOptions.lordOfTheRings     // by default is EZAnimationOptions.heartBeat

```

### Second Way: Using Closure

```Swift

let options = EZProgressOptions { (option) in

    option.radius = 115                                                                               // by default is 115
    option.firstLayerStrokeColor = UIColor(red: 10/255, green: 101/255, blue: 171/255, alpha: 1.0)    // by default is UIColor(red: 220/255, green: 20/255, blue: 60/255, alpha: 1)
    option.secondLayerStrokeColor = UIColor(red: 10/255, green: 101/255, blue: 171/255, alpha: 1.0)   // by default is UIColor(red: 220/255, green: 20/255, blue: 60/255, alpha: 1), FYI it's always transparent ;)
    option.thirdLayerStrokeColor = .gray                                                              // by default is .gray
    option.strokeWidth = 2                                                                            // by default is 12.0
    option.font = UIFont(name: "Papyrus", size: 18)!                                                  // by default is Papyrus size 18
    option.title = "EZProgressHUD"                                                                    // by default is "Please Wait..."
    option.titleTextColor = .white                                                                    // by default is white
    option.transViewBackgroundColor = .black                                                          // by default is black
    option.animationOption = EZAnimationOptions.hnk                                                   // by default is EZAnimationOptions.heartBeat
}

```

In `EZProgressHUD` we brought to you 8 diffrent kind of indicators which you can choose them like this

| animationOption  | 
| ------------- |     
| EZAnimationOptions.heartBeat   |
| EZAnimationOptions.xRotation  |
| EZAnimationOptions.yRotation  |
| EZAnimationOptions.lineLayer  |
| EZAnimationOptions.lordOfTheRings  |
| EZAnimationOptions.xyRotation  |
| EZAnimationOptions.antColony  |
| EZAnimationOptions.hnk  |

Requirements
=======

<p>iOS 9.3+</p>
<p>Xcode 10.1</p>  
<p>Swift 4.2</p>

Installation
=======

 <img src="https://raw.githubusercontent.com/CocoaPods/shared_resources/master/img/CocoaPods-Logo-Highlight.png" width="128px" height="32px" />

SwiftyTabBarTransition is available through [CocoaPods](https://cocoapods.org/pods/EZProgressHUD). To install
it in latest version, simply add the following line to your Podfile:

### Swift 4.2

```ruby
pod 'EZProgressHUD', '~> 1.4.1'
```
And then on your terminal run 👇🏻:
```bash
pod install
```
<img src="https://raw.githubusercontent.com/Carthage/Carthage/master/Logo/PNG/colored.png" width="32px" height="32px" />


To get the latest version of library using [Carthage](https://github.com/Carthage/Carthage), you can add following line to your Cartfile.

### Swift 4.2

```bash
github "shndrs/EZProgressHUD" "1.4.1"
```
And then on your terminal run 👇🏻:
```bash
carthage update
```
Author
=======
sahandraeisi1994@gmail.com, sahandraeisi@yahoo.com, [shndrs](https://linkedin.com/in/shndrs)

License
=======
EZProgressHUD is available under the MIT license. See the LICENSE file for more info.

Credit
=======
EZProgressHUD is brought to you in iOS Swift by [Sahand Raeisi - shndrs](https://github.com/shndrs) and in Android Java by [Hanieh Nikjoo - hnk](https://github.com/HaniehNikjoo)
