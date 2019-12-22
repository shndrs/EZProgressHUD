![EZProgressHUD-logo](https://user-images.githubusercontent.com/34839080/60944448-19d08680-a2fe-11e9-8381-9d73a56f69ae.png)

# EZProgressHUD

[![codebeat badge](https://codebeat.co/badges/39e75029-1f7f-4278-bc75-49be1c91c4c2)](https://codebeat.co/projects/github-com-shndrs-ezprogresshud-master)
![build-status](https://travis-ci.org/shndrs/EZProgressHUD.svg?branch=master)
![swift-version](https://img.shields.io/badge/Swift-5-blueviolet.svg)
![version](https://img.shields.io/cocoapods/v/EZProgressHUD.svg)
![platform](https://img.shields.io/cocoapods/p/EZProgressHUD.svg)
![license](https://img.shields.io/cocoapods/l/EZProgressHUD.svg)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-000000.svg?style=flat)](https://github.com/Carthage/Carthage)
![cocoapods](https://img.shields.io/badge/CocoaPods-compatible-000000.svg)

As we said in short description, this is a very cool customizable and easy to use activity indicator for iOS and guess what!!?? Android Application(coming soon...) hope you guys enjoy it 😊😊

![AntColony-C](https://user-images.githubusercontent.com/34839080/60947619-34a6f900-a306-11e9-84d3-88327e42ac80.gif)
![HNK-C](https://user-images.githubusercontent.com/34839080/60947609-32dd3580-a306-11e9-939d-0489651cbbed.gif)
![XYRotation-C](https://user-images.githubusercontent.com/34839080/60947617-340e6280-a306-11e9-98fe-931e7a6884e1.gif)
![LineLayer-C](https://user-images.githubusercontent.com/34839080/60947616-340e6280-a306-11e9-9400-bf032e2c7931.gif)

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
hud.show()                   // for show it
hud.dismiss(completion: nil) // for dismiss it
```

Customization
=======

There is two way to do the customization👇🏻:

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

Indicator Animation Options
=======

In `EZProgressHUD` we brought to you 8 diffrent kind of indicators:

| animationOption  | Example |
| ------------- | ------------- |
| EZAnimationOptions.hnk  | ![HNK-C](https://user-images.githubusercontent.com/34839080/60947609-32dd3580-a306-11e9-939d-0489651cbbed.gif) |
| EZAnimationOptions.heartBeat   | ![HeartBeat-C](https://user-images.githubusercontent.com/34839080/60947612-3375cc00-a306-11e9-9bb7-b36e6987c68d.gif) |
| EZAnimationOptions.antColony  | ![AntColony-C](https://user-images.githubusercontent.com/34839080/60947619-34a6f900-a306-11e9-84d3-88327e42ac80.gif) |
| EZAnimationOptions.lineLayer  | ![LineLayer-C](https://user-images.githubusercontent.com/34839080/60947616-340e6280-a306-11e9-9400-bf032e2c7931.gif) |
| EZAnimationOptions.xyRotation  | ![XYRotation-C](https://user-images.githubusercontent.com/34839080/60947617-340e6280-a306-11e9-98fe-931e7a6884e1.gif) |
| EZAnimationOptions.lordOfTheRings  | ![LordOfTheRings-C](https://user-images.githubusercontent.com/34839080/60947613-3375cc00-a306-11e9-9409-445e9972fdb2.gif) |
| EZAnimationOptions.yRotation  | ![YRotation-C](https://user-images.githubusercontent.com/34839080/60947614-340e6280-a306-11e9-908d-3a5cfdbc2b7f.gif) |
| EZAnimationOptions.xRotation  | ![XRotation-C](https://user-images.githubusercontent.com/34839080/60947618-34a6f900-a306-11e9-993b-5b7112f16a9f.gif) |

Requirements
=======

<p>iOS 9.3+</p>
<p>Xcode 10.2 or later</p>
<p>Swift 4.2 or later</p>

Installation
=======

 <img src="https://raw.githubusercontent.com/CocoaPods/shared_resources/master/img/CocoaPods-Logo-Highlight.png" width="128px" height="32px" />

SwiftyTabBarTransition is available through [CocoaPods](https://cocoapods.org/pods/EZProgressHUD). To install
it in latest version, simply add the following line to your Podfile:

### Swift 4.2

```ruby
pod 'EZProgressHUD', '~> 1.4.3'
```
### Swift 5

```ruby
pod `EZProgressHUD`, `~> 1.5.2`
```
And then on your terminal run 👇🏻:
```bash
pod install
```
<img src="https://raw.githubusercontent.com/Carthage/Carthage/master/Logo/PNG/colored.png" width="32px" height="32px" />


To get the latest version of library using [Carthage](https://github.com/Carthage/Carthage), you can add following line to your Cartfile.

### Swift 4.2

```bash
github "shndrs/EZProgressHUD" "1.4.3"
```
### Swift 5
```bash
github "shndrs/EZProgressHUD" "1.5.2"
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
