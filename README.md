<p align="center" >
<img src="https://github.com/igormatyushkin014/Sensitive/blob/master/Logo/logo_1024_300.png" alt="Sensitive" title="Sensitive">
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
* Swift 4.1

## Usage

### Adding Gesture Recognizers to View

All gestures are available via special variables that you can call on any `UIView` instance. Examples:

```swift
view.onTap
    .configure(with: { (gestureRecognizer) in
        // Configure `UITapGestureRecognizer` instance
        gestureRecognizer.numberOfTapsRequired = 2
    })
    .handle { (gestureRecognizer) in
        // Handle tap on view
        gestureRecognizer.view!.backgroundColor = .green
    }

view.onSwipe
    .configure(with: { (gestureRecognizer) in
        // Configure `UISwipeGestureRecognizer` instance
        gestureRecognizer.direction = .left
    })
    .handle { (gestureRecognizer) in
        // Handle tap on view
        gestureRecognizer.view!.backgroundColor = .green
    }
```

Full list of available gestures:

- `onTap`
- `onLongPress`
- `onPan`
- `onPinch`
- `onRotation`
- `onSwipe`
- `onScreenEdgePan`

### Simultaneous Recognition

If you need few gestures to work together on the same view, you can also use `recognizeSimultaneously` method:

```swift
view.onTap
    .handle { (gestureRecognizer) in
        // Your implementation here...
    }
    .recognizeSimultaneously(true)

view.onPinch
    .handle { (gestureRecognizer) in
        // Your implementation here...
    }
    .recognizeSimultaneously(true)
```

## Contact Me

Impressed? I'm actually open to your projects.

If you want some particular app for iOS, drop me a line at igormatyushkin014@gmail.com

## License

`Sensitive` is available under the MIT license. See the [LICENSE](./LICENSE) file for more info.
