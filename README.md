# TipTop

## Table of Contents

- [Description](#description)
- [Usage](#usage)
- [Installation](#installation)
- [License](#license)

## Description

TipTop is a library for customized animatable navigation transition between ViewControllers. 
Default UINavigationController provides only two push and pop transitions, which are quite boring.

TipTop provides option for developer to push new VC from the frame of any subview inside of presenting ViewController.


![ezgif com-gif-maker](https://user-images.githubusercontent.com/46320390/159494356-89c85872-7d0e-4e43-9aa9-bd53c37122a8.gif)


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
    .package(url: "https://github.com/yermukhanbet/TipTop.git", .upToNextMajor(from: "1.2.0"))
  ],
  targets: [
    .target(name: "MyTarget", dependencies: ["TipTop"])
  ]
)
```

## License

TipTop is under MIT license. See the [LICENSE](https://github.com/yermukhanbet/TipTop/blob/main/LICENSE.md) for more info.
