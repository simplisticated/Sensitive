<p align="center" >
<img src="https://github.com/igormatyushkin014/Sensitive/blob/master/Logo/logo-1024-300.png" alt="Sensitive" title="Sensitive">
</p>

<p align="center">
<a href="https://swift.org"><img src="https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat"></a>
<a href="https://cocoapods.org"><img src="https://img.shields.io/cocoapods/dt/Sensitive.svg?maxAge=2592000"></a>
<a href="https://tldrlegal.com/license/mit-license"><img src="https://img.shields.io/badge/License-MIT-blue.svg?style=flat"></a>
</p>

# At a Glance

`Sensitive` library is a new way to work with gestures in iOS. Approach is very similar to Android's `onClick` handler for `View` subclasses. Forget about targets and actions of primitive `UIGestureRecognizer`s. Instead of that, you can simply use blocks with methods like `onTap`, `onPinch`, `onSwipe`, etc. Each `UIView` object includes those methods via special extension. That's all that you should know to start. For details, see [Usage](#usage) section.

##How To Get Started

- Copy content of `Source` folder to your project.

or

- Use `Sensitive` cocoapod.

**Note**: For Swift 2.x use `Sensitive v1.4`. For Swift 3.0 use `Sensitive v3.0`.

## Requirements

* iOS 8 and later
* Xcode 7 and later

## Usage

```swift
let view = UIView()


/*
 * Add tap gesture recognizer with configuration block to view.
 */

view.onTap({ (tapGestureRecognizer) -> Void in
    // Handle tap on view
    view.backgroundColor = .greenColor()
}) { (tapGestureRecognizer) -> Void in
    // Configure gesture recognizer
    tapGestureRecognizer.numberOfTouchesRequired = 1
    tapGestureRecognizer.numberOfTapsRequired = 2
}


/*
 * Add one-time tap gesture recognizer with configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

view.onTapOnce({ (tapGestureRecognizer) -> Void in
    // Handle tap on view
    view.backgroundColor = .greenColor()
}) { (tapGestureRecognizer) -> Void in
    // Configure gesture recognizer
    tapGestureRecognizer.numberOfTouchesRequired = 1
    tapGestureRecognizer.numberOfTapsRequired = 2
}


/*
 * Add tap gesture recognizer without configuration block to view.
 */

view.onTap { (tapGestureRecognizer) -> Void in
    // Handle tap on view
    view.backgroundColor = .greenColor()
}


/*
 * Add one-time tap gesture recognizer without configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

view.onTapOnce { (tapGestureRecognizer) -> Void in
    // Handle tap on view
    view.backgroundColor = .greenColor()
}


/*
 * Add long press gesture recognizer with configuration block to view.
 */

view.onLongPress({ (longPressGestureRecognizer) -> Void in
    // Handle long press on view
    view.backgroundColor = .greenColor()
}) { (longPressGestureRecognizer) -> Void in
    // Configure gesture recognizer
    longPressGestureRecognizer.numberOfTouchesRequired = 1
}


/*
 * Add one-time long press gesture recognizer with configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

view.onLongPressOnce({ (longPressGestureRecognizer) -> Void in
    // Handle long press on view
    view.backgroundColor = .greenColor()
}) { (longPressGestureRecognizer) -> Void in
    // Configure gesture recognizer
    longPressGestureRecognizer.numberOfTouchesRequired = 1
}


/*
 * Add long press gesture recognizer without configuration block to view.
 */

view.onLongPress { (longPressGestureRecognizer) -> Void in
    // Handle long press on view
    view.backgroundColor = .greenColor()
}


/*
 * Add one-time long press gesture recognizer without configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

view.onLongPressOnce { (longPressGestureRecognizer) -> Void in
    // Handle long press on view
    view.backgroundColor = .greenColor()
}


/*
 * Add pan gesture recognizer with configuration block to view.
 */

view.onPan({ (panGestureRecognizer) -> Void in
    // Handle pan gesture on view here...
}) { (panGestureRecognizer) -> Void in
    // Configure pan gesture recognizer here...
}


/*
 * Add one-time pan gesture recognizer with configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

view.onPanOnce({ (panGestureRecognizer) -> Void in
    // Handle pan gesture on view here...
}) { (panGestureRecognizer) -> Void in
    // Configure pan gesture recognizer here...
}


/*
 * Add pan gesture recognizer without configuration block to view.
 */

view.onPan { (panGestureRecognizer) -> Void in
    // Handle pan gesture on view here...
}


/*
 * Add one-time pan gesture recognizer without configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

view.onPanOnce { (panGestureRecognizer) -> Void in
    // Handle pan gesture on view here...
}


/*
 * Add pinch gesture recognizer with configuration block to view.
 */

view.onPinch({ (pinchGestureRecognizer) -> Void in
    // Handle pinch gesture on view here...
}) { (pinchGestureRecognizer) -> Void in
    // Configure pinch gesture recognizer here...
}


/*
 * Add one-time pinch gesture recognizer with configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

view.onPinchOnce({ (pinchGestureRecognizer) -> Void in
    // Handle pinch gesture on view here...
}) { (pinchGestureRecognizer) -> Void in
    // Configure pinch gesture recognizer here...
}


/*
 * Add pinch gesture recognizer without configuration block to view.
 */

view.onPinch { (pinchGestureRecognizer) -> Void in
    // Handle pinch gesture on view here...
}


/*
 * Add one-time pinch gesture recognizer without configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

view.onPinchOnce { (pinchGestureRecognizer) -> Void in
    // Handle pinch gesture on view here...
}


/*
 * Add rotation gesture recognizer with configuration block to view.
 */

view.onRotation({ (rotationGestureRecognizer) -> Void in
    // Handle rotation gesture on view here...
}) { (rotationGestureRecognizer) -> Void in
    // Configure rotation gesture recognizer here...
}


/*
 * Add one-time rotation gesture recognizer with configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

view.onRotationOnce({ (rotationGestureRecognizer) -> Void in
    // Handle rotation gesture on view here...
}) { (rotationGestureRecognizer) -> Void in
    // Configure rotation gesture recognizer here...
}


/*
 * Add rotation gesture recognizer without configuration block to view.
 */

view.onRotation { (rotationGestureRecognizer) -> Void in
    // Handle rotation gesture on view here...
}


/*
 * Add one-time rotation gesture recognizer without configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

view.onRotationOnce { (rotationGestureRecognizer) -> Void in
    // Handle rotation gesture on view here...
}


/*
 * Add swipe gesture recognizer with configuration block to view.
 */

view.onSwipe({ (swipeGestureRecognizer) -> Void in
    // Handle swipe gesture on view here...
}) { (swipeGestureRecognizer) -> Void in
    // Configure swipe gesture recognizer here...
    swipeGestureRecognizer.direction = .Right
}


/*
 * Add one-time swipe gesture recognizer with configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

view.onSwipeOnce({ (swipeGestureRecognizer) -> Void in
    // Handle swipe gesture on view here...
}) { (swipeGestureRecognizer) -> Void in
    // Configure swipe gesture recognizer here...
    swipeGestureRecognizer.direction = .Right
}


/*
 * Add swipe gesture recognizer without configuration block to view.
 */

view.onSwipe { (swipeGestureRecognizer) -> Void in
    // Handle swipe gesture on view here...
}


/*
 * Add one-time swipe gesture recognizer without configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

view.onSwipeOnce { (swipeGestureRecognizer) -> Void in
    // Handle swipe gesture on view here...
}


/*
 * Add swipe up gesture recognizer without configuration block to view.
 */

view.onSwipeUp { (swipeGestureRecognizer) -> Void in
    // Handle swipe gesture with up direction on view...
}


/*
 * Add swipe right gesture recognizer without configuration block to view.
 */

view.onSwipeRight { (swipeGestureRecognizer) -> Void in
    // Handle swipe gesture with right direction on view...
}


/*
 * Add swipe down gesture recognizer without configuration block to view.
 */

view.onSwipeDown { (swipeGestureRecognizer) -> Void in
    // Handle swipe gesture with down direction on view...
}


/*
 * Add swipe left gesture recognizer without configuration block to view.
 */

view.onSwipeLeft { (swipeGestureRecognizer) -> Void in
    // Handle swipe gesture with left direction on view...
}


/*
 * Add screen edge pan gesture recognizer with configuration block to view.
 */

view.onScreenEdgePan({ (screenEdgePanGestureRecognizer) in
    // Handle screen edge pan gesture on view here...
}) { (screenEdgePanGestureRecognizer) in
    // Configure screen edge pan gesture recognizer here...
}


/*
 * Add one-time screen edge pan gesture recognizer with configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

view.onScreenEdgePanOnce({ (screenEdgePanGestureRecognizer) in
    // Handle screen edge pan gesture on view here...
}) { (screenEdgePanGestureRecognizer) in
    // Configure screen edge pan gesture recognizer here...
}


/*
 * Add screen edge pan gesture recognizer without configuration block to view.
 */

view.onScreenEdgePan { (screenEdgePanGestureRecognizer) in
    // Handle screen edge pan gesture on view here...
}


/*
 * Add one-time screen edge pan gesture recognizer without configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

view.onScreenEdgePanOnce { (screenEdgePanGestureRecognizer) in
    // Handle screen edge pan gesture on view here...
}
```

Also, you can use directly gesture recognizers of these types:
* `SNTapGestureRecognizer`
* `SNLongPressGestureRecognizer`
* `SNPanGestureRecognizer`
* `SNPinchGestureRecognizer`
* `SNRotationGestureRecognizer`
* `SNSwipeGestureRecognizer`
* `SNScreenEdgePanGestureRecognizer`

Each of them is a subclass for native gesture recognizer. For example, `SNTapGestureRecognizer` is subclassed from `UITapGestureRecognizer`. The purpose of `SN...` subclasses is to take a closure as parameter instead of target-action. For example, this is how you initialize `UITapGestureRecognizer`:

```swift
let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(SomeViewController.didTapWithGestureRecognizer(_:)))
```

And this is how you should use `SNTapGestureRecognizer`:

```swift
let tapGestureRecognizer = SNTapGestureRecognizer { (tapGestureRecognizer) in
    // Do something...
}
```

Quite simple, isn't it?

All other `SN...` gesture recognizers can be initialized similar way.

## License

`Sensitive` is available under the MIT license. See the [LICENSE](./LICENSE) file for more info.
