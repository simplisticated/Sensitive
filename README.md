<p align="center" >
<img src="https://github.com/igormatyushkin014/Sensitive/blob/master/Logo/logo-1024-300.png" alt="Sensitive" title="Sensitive">
</p>

# Sensitive

`Sensitive` library is a new way to work with gestures in iOS. Approach is very similar to Android's `onClick` handler for `View` subclasses. Forget about targets and actions of primitive `UIGestureRecognizer`s. Instead of that, you can simply use blocks with methods like `onTap`, `onPinch`, `onSwipe`, etc. Each `UIView` object includes those methods via special extension. That's all that you should know to start. For details, see [Usage](#usage) section.

##How To Get Started

- Copy content of `Source` folder to your project.

or

- Use `Sensitive` cocoapod

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

## License

`Sensitive` is available under the MIT license. See the [LICENSE](./LICENSE) file for more info.
