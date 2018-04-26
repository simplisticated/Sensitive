<p align="center" >
<img src="https://github.com/igormatyushkin014/Sensitive/blob/master/Logo/logo-1024-300.png" alt="Sensitive" title="Sensitive">
</p>

<p align="center">
<a href="https://swift.org"><img src="https://img.shields.io/badge/Swift-4-orange.svg?style=flat"></a>
<a href="https://cocoapods.org"><img src="https://img.shields.io/cocoapods/v/Sensitive.svg?maxAge=2592000"></a>
<a href="https://cocoapods.org"><img src="https://img.shields.io/cocoapods/dt/Sensitive.svg?maxAge=2592000"></a>
<a href="https://tldrlegal.com/license/mit-license"><img src="https://img.shields.io/badge/License-MIT-blue.svg?style=flat"></a>
</p>

## At a Glance

`Sensitive` is a library that simplifies work with gestures in iOS. Forget about targets and actions of primitive `UIGestureRecognizer`. With `Sensitive` you can call `onTap`, `onPinch`, `onSwipe` on any `UIView` instance and implement handler for the gesture. That's all that you should know to start. For details, see [Usage](#usage) section.

## How To Get Started

- Copy content of `Source` folder to your project.

or

- Use `Sensitive` cocoapod.

## Requirements

* iOS 9.0 and later
* Xcode 9.0 and later
* Swift 4

## Usage

### Adding Gesture Recognizers to View

Tap gesture:

```swift
let view = UIView()

view.onTap { (tapGestureRecognizer) in
    // Handle tap on view
    tapGestureRecognizer.view!.backgroundColor = .green
}

/*
 * Also, if you don't need a reference to gesture recognizer,
 * you can use the simplified version:
 */

view.onTap {
    // Handle tap on view
    tapGestureRecognizer.view!.backgroundColor = .green
}
```

Long press gesture:

```swift
view.onLongPress { (longPressGestureRecognizer) in
    // Handle long press on view
    tapGestureRecognizer.view!.backgroundColor = .green
}

// or

view.onLongPress {
    // Handle long press on view
    tapGestureRecognizer.view!.backgroundColor = .green
}
```

Pan gesture:

```swift
view.onPan { (panGestureRecognizer) in
    // Handle pan gesture on view here...
}

// or

view.onPan {
    // Handle pan gesture on view here...
}
```

Pinch gesture:

```swift
view.onPinch { (pinchGestureRecognizer) in
    // Handle pinch gesture on view here...
}

// or

view.onPinch {
    // Handle pinch gesture on view here...
}
```

Rotation gesture:

```swift
view.onRotation { (rotationGestureRecognizer) in
    // Handle rotation gesture on view here...
}

// or

view.onRotation {
    // Handle rotation gesture on view here...
}
```

Swipe gesture:

```swift
view.onSwipe { (swipeGestureRecognizer) in
    // Handle swipe gesture on view here...
}

// or

view.onSwipe {
    // Handle swipe gesture on view here...
}
```

Screen edge pan gesture:

```swift
view.onScreenEdgePan { (screenEdgePanGestureRecognizer) in
    // Handle screen edge pan gesture on view here...
}

// or

view.onScreenEdgePan {
    // Handle screen edge pan gesture on view here...
}
```

### Using Gesture Recognizers Directly

`Sensitive` provides set of `UIGestureRecognizer` subclasses that makes your code cleaner and simpler:
* `TapGestureRecognizer`
* `LongPressGestureRecognizer`
* `PanGestureRecognizer`
* `PinchGestureRecognizer`
* `RotationGestureRecognizer`
* `SwipeGestureRecognizer`
* `ScreenEdgePanGestureRecognizer`
* `TouchGestureRecognizer`

Each of gesture recognizers listed above is a subclass of gesture recognizer from native iOS SDK. For example, `TapGestureRecognizer` is subclassed from `UITapGestureRecognizer`, `SwipeGestureRecognizer` is a subclass of `UISwipeGestureRecognizer`, etc. The purpose of subclasses is to use closure within constructor instead of target-action approach. For example, this is how you initialize `UITapGestureRecognizer`:

```swift
let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(SomeViewController.didTapWithGestureRecognizer(_:)))
view.addGestureRecognizer(tapGestureRecognizer)
```

And this is how you can use `TapGestureRecognizer`:

```swift
let tapGestureRecognizer = TapGestureRecognizer { (tapGestureRecognizer) in
    // Do something...
}
view.addGestureRecognizer(tapGestureRecognizer)
```

Quite simple, isn't it?

All other gesture recognizers can be initialized similar way.

## License

`Sensitive` is available under the MIT license. See the [LICENSE](./LICENSE) file for more info.
