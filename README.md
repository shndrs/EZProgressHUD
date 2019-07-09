![build-status](https://travis-ci.org/shndrs/EZProgressHUD.svg?branch=master)
![swift-version](https://img.shields.io/badge/Swift-4.2-blueviolet.svg)
![version](https://img.shields.io/cocoapods/v/EZProgressHUD.svg)
![cocoapod](https://img.shields.io/badge/Cocoapods-compatible-4BC51D.svg)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
![license](https://img.shields.io/github/license/shndrs/EZProgressHUD.svg)

# EZProgressHUD
As we said, this is a very cool customizable and easy to use activity indicator for iOS and guess what!!?? Android Application(coming soon...) hope you guys enjoy it -[shndrs](https://github.com/shndrs) -[hnk](https://github.com/HaniehNikjoo) 😊😊

How to use?
=======
if you wanna use the default EZProgressHUD just follow this👇🏻:
```Swift
let options = EZProgressOptions()
let hud = EZProgressHUD.setProgress(with: options)        
``` 
and now you can show or dismiss it by :

```Swift
hud.show() // for show it
hud.dismiss(completion: nil) // for dismiss it
```

## Customize

there is two way to do the customization

### First Way: Creating an empty instance of EZProgressOptions

```Swift

let options = EZProgressOptions()

options.radius = 120
options.firstLayerStrokeColor = .lightGray
options.secondLayerStrokeColor = .white
options.thirdLayerStrokeColor = .darkGray
options.strokeWidth = 12
options.font =  UIFont(name: "AvenirNext-Regular", size: 18)
options.title = "EZProgressHUD"
options.titleTextColor = .purple
options.transViewBackgroundColor = .black
options.animationOption = EZAnimationOptions.lordOfTheRings

```

### Second Way: Using Closure

```Swift

let options = EZProgressOptions { (option) in

    option.radius = 115
    option.firstLayerStrokeColor = UIColor(red: 10/255, green: 101/255, blue: 171/255, alpha: 1.0)
    option.secondLayerStrokeColor = UIColor(red: 10/255, green: 101/255, blue: 171/255, alpha: 1.0)
    option.thirdLayerStrokeColor = .gray
    option.strokeWidth = 2
    option.font = UIFont(name: "Papyrus", size: 18)
    option.title = "EZProgressHUD"
    option.titleTextColor = .white
    option.transViewBackgroundColor = .black
    option.animationOption = EZAnimationOptions.hnk
}

```

in `EZProgressHUD` we brought to you 8 diffrent kind of indicators which you can choose them like this

| animationOption  | 
| ------------- |     
| .heartBeat   |
| .xRotation  |
| .yRotation  |
| .lineLayer  |
| .lordOfTheRings  |
| .xyRotation  |
| .antColony  |
| .hnk  |

Requirements
=======

<p>iOS 9.3+</p>
<p>Xcode 10.1</p>  
<p>Swift 4.2</p>

Installation
=======

 <img src="https://raw.githubusercontent.com/CocoaPods/shared_resources/master/img/CocoaPods-Logo-Highlight.png" width="128px" height="32px" />

SwiftyTabBarTransition is available through [CocoaPods](https://cocoapods.org/pods/SwiftyTabBarTransition). To install
it in latest version, simply add the following line to your Podfile:

### Swift 4.2

```ruby
pod 'EZProgressHUD', '~> 1.4.1'
```
and then on your terminal run 👇🏻:
```bash
pod install
```
<img src="https://raw.githubusercontent.com/Carthage/Carthage/master/Logo/PNG/colored.png" width="32px" height="32px" />


To get the latest version of library using Carthage, you can add following line to your Cartfile.

### Swift 4.2

```bash
github "shndrs/EZProgressHUD" "1.4.1"
```
and then on your terminal run 👇🏻:
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
