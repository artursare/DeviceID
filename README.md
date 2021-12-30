# DeviceID iOS

Lightweight library for device identification.

Fully written in Swift.

Creates a device identifier from [IDFV](https://developer.apple.com/documentation/uikit/uidevice/1620059-identifierforvendor).

## FAQ
##### Does it remain the same after application reinstalling?
The identifier is fully stateless and will remain the same after reinstalling or clearing application data. Unless only the user have not uninstalled all apps of the same vendor. In case of system reset only if the user restores a device backup which includes also keychain's data.

##### If my library is used in two different applications, will the ID be the same inside of these two apps?
The value of this property is the same for apps that come from the same vendor running on the same device unless the user have not uninstalled all apps of the same vendor at some point, in such case the ID will persist from first install.

A different value is returned for apps on the same device that come from different vendors, and for apps on different devices regardless of vendor. 

## Quick Start (TL;DR)

### 1. Add via SPM

Select `Xcode`>`File`> `Swift Packages`>`Add Package Dependency...`  
and add `https://github.com/artursare/DeviceID`.

### 2. Import

Import the package in the file you would like to use it: `import DeviceID`

### 3. Use

```
let id = ID()
let uuid = id.getDeviceId()
```

## Installation

Prject requires iOS 14 and Xcode 13 at minimum

### Swift Package Manager

The recommended way of adding `DeviceID` is via the official [Swift Package Manager](https://swift.org/package-manager/) and it supports adding dependecy to App and Framework targets. Easy, simple and integrated into Xcode.

#### Xcode

Select `Xcode`>`File`> `Swift Packages`>`Add Package Dependency...`  
and add `https://github.com/artursare/DeviceID`.

#### For downstream framework package

For downstream framework author, you should create `Package.swift` that its package declaration includes:

```swift
// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "YourLibrary",
    products: [
        .library(name: "YourLibrary", targets: ["YourLibrary"]),
    ],
    dependencies: [
        .package(url: "https://github.com/artursare/DeviceID.git", from: "0.1.0"),
    ],
    targets: [
        .target(name: "YourLibrary", dependencies: ["DeviceID"]),
    ]
)
```

### To manually add to your project

1. Download or clone the project
2. Drag and drop `DeviceID.xcodeproj` to your project
3. Link `DeviceID.framework` with your target
4. Make sure it's included under `Your target -> Build Phases -> Embed Frameworks`

### Adding as XCFramework binary

Coming soon - handy for use in closed source frameworks

### CocoaPods

[CocoaPods](http://cocoapods.org) support is comming soon.

Cocoapods is a centralized dependency manager for Swift and Objective-C Cocoa projects that has been around over a decade. Many legacy libraries may not have been updated to support SPM. We understand that, however, when starting a new project consider that:

- They are hard to remove once integrated
- CocoaPods takes controls of entire Xcode project and if something fails entire project stops building. The fixing the errors thrown by CocoaPods are the hard and time-consuming task and requires an understanding of what CocoaPods changed inside the iOS project.

### Carthage

[Carthage](https://github.com/Carthage/Carthage) support is comming soon

Carthage has been written purely in Swift to manage iOS dependencies without changing anything inside your Xcode projects. Carthage just downloads and build the dependencies using xcodebuild tool but will not change Project file Or Xcode project build setting like CocoaPods. However:

- more manual work
- not as straightforward to use

### What if I'm want to use it in my own framework
Above Installation instructions support App and Framework targets

## Try it
This project includes SwiftUI sample app and an example how to call use it from Objective-C code. Download and build the `Sample` target.

## To Do

- Currently project uses dependecy [Valet](https://github.com/square/Valet) dependency to for ID persistance, this dependency will be removed in next release to allow simple distribution of this SDK as a binary XCFramework.
- Introduce ID persistance across same vendor apps in cases when all of them get deleted from device
- Introduce ID persistance via iCloud to secure against device resets

## License
[The Unlicence](http://unlicense.org/)

