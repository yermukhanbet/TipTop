# TipTop

## Table of Contents

- [Description](#description)
- [Usage](#usage)
- [Installation](#installation)
- [License](#license)

## Description

TipTop is a library for customized animatable navigation transition between ViewControllers. 
Default UINavigationController provides only two push and pop transitions, which are quite boring.

TipTop provides developer to push new VC from the frame of any subview inside of presenting ViewController.


https://user-images.githubusercontent.com/46320390/159279793-2e1ad71e-5756-44bf-9f5b-b0b8b5258181.mp4


## Usage

```swift
import TipTop

// initialize the transitioner, and provide the view from frame's of which you want to push new VC

private lazy var tipTopTransition = TipTop(from: self.button) 

// then set the nav delegate to TipTop instance

private func setTransition() {
  self.navigationController?.delegate = tipTopTransition
}

// finally you can call your push logic as you usually do:

@objc func push() {
  let vc = NewViewController()
  self.navigationController?.pushViewController(vc, animated: true)
}
```

## Installation

You can install TipTop library through SPM.

```swift
let package = Package(
  name: "MyPackage",
  dependencies: [
    .package(url: "https://github.com/yermukhanbet/TipTop.git", .upToNextMajor(from: "1.0.0"))
  ],
  targets: [
    .target(name: "MyTarget", dependencies: ["TipTop"])
  ]
)
```

## License

TipTop is under MIT license. See the [LICENSE](https://github.com/yermukhanbet/TipTop/blob/main/LICENSE.md) for more info.
