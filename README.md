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
let view1 = UIView()


/*
 * Add tap gesture recognizer with configuration block to view1.
 */

view1.onTap({ (tapGestureRecognizer) -> Void in
    // Handle tap on view1
    view1.backgroundColor = .greenColor()
}) { (tapGestureRecognizer) -> Void in
    // Configure gesture recognizer
    tapGestureRecognizer.numberOfTouchesRequired = 1
    tapGestureRecognizer.numberOfTapsRequired = 2
}


/*
 * Add tap gesture recognizer without configuration block to view1.
 */

view1.onTap { (tapGestureRecognizer) -> Void in
    // Handle tap on view1
    view1.backgroundColor = .greenColor()
}


/*
 * Add pan gesture recognizer with configuration block to view1.
 */

view1.onPan({ (panGestureRecognizer) -> Void in
    // Handle pan gesture on view1 here...
}) { (panGestureRecognizer) -> Void in
    // Configure pan gesture recognizer here...
}


/*
* Add pan gesture recognizer without configuration block to view1.
*/

view1.onPan { (panGestureRecognizer) -> Void in
    // Handle pan gesture on view1 here...
}


/*
 * Add pinch gesture recognizer with configuration block to view1.
 */

view1.onPinch({ (pinchGestureRecognizer) -> Void in
    // Handle pinch gesture on view1 here...
}) { (pinchGestureRecognizer) -> Void in
    // Configure pinch gesture recognizer here...
}


/*
 * Add pinch gesture recognizer without configuration block to view1.
 */

view1.onPinch { (pinchGestureRecognizer) -> Void in
    // Handle pinch gesture on view1 here...
}


/*
 * Add rotation gesture recognizer with configuration block to view1.
 */

view1.onRotation({ (rotationGestureRecognizer) -> Void in
    // Handle rotation gesture on view1 here...
}) { (rotationGestureRecognizer) -> Void in
    // Configure rotation gesture recognizer here...
}


/*
* Add rotation gesture recognizer without configuration block to view1.
*/

view1.onRotation { (rotationGestureRecognizer) -> Void in
    // Handle rotation gesture on view1 here...
}


/*
* Add swipe gesture recognizer with configuration block to view1.
*/

view1.onSwipe({ (swipeGestureRecognizer) -> Void in
    // Handle swipe gesture on view1 here...
}) { (swipeGestureRecognizer) -> Void in
    // Configure swipe gesture recognizer here...
    swipeGestureRecognizer.direction = .Right
}


/*
 * Add swipe gesture recognizer without configuration block to view1.
 */

view1.onSwipe { (swipeGestureRecognizer) -> Void in
    // Handle swipe gesture on view1 here...
}
```

## License

`Sensitive` is available under the MIT license. See the [LICENSE](./LICENSE) file for more info.
