<p align="center" >
<img src="https://github.com/igormatyushkin014/Sensitive/blob/master/Logo/logo-1024-300.png" alt="Sensitive" title="Sensitive">
</p>

<p align="center">
<a href="https://swift.org"><img src="https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat"></a>
<a href="https://cocoapods.org"><img src="https://img.shields.io/cocoapods/v/Sensitive.svg?maxAge=2592000"></a>
<a href="https://cocoapods.org"><img src="https://img.shields.io/cocoapods/dt/Sensitive.svg?maxAge=2592000"></a>
<a href="https://tldrlegal.com/license/mit-license"><img src="https://img.shields.io/badge/License-MIT-blue.svg?style=flat"></a>
</p>

# At a Glance

`Sensitive` library is a new way to work with gestures in iOS. Approach is very similar to Android's `onClick` handler for `View` subclasses. Forget about targets and actions of primitive `UIGestureRecognizer`s. Instead of that, you can simply use blocks with methods like `onTap`, `onPinch`, `onSwipe`, etc. Each `UIView` object includes those methods via special extension. That's all that you should know to start. For details, see [Usage](#usage) section.

##How To Get Started

- Copy content of `Sensitive` folder to your project.

or

- Use `Sensitive` cocoapod.

## Requirements

* iOS 9.0 and later
* Xcode 8 and later

Swift 2 is not supported anymore. Use Swift 3 with this library.

## Usage

```swift
let view = UIView()

/*
 * Add tap gesture recognizer with configuration block to view.
 */

view.onTap(when: .always, handle: { (tapGestureRecognizer) in
    // Handle tap on view
    tapGestureRecognizer.view!.backgroundColor = .green
}) { (tapGestureRecognizer) in
    // Configure gesture recognizer
    tapGestureRecognizer.numberOfTouchesRequired = 1
    tapGestureRecognizer.numberOfTapsRequired = 2
}

/*
 * Also, you can use shorter expression
 * (`when` argument is equal to `.always` by default).
 */

view.onTap(handle: { (tapGestureRecognizer) in
    // Handle tap on view
    tapGestureRecognizer.view!.backgroundColor = .green
}) { (tapGestureRecognizer) in
    // Configure gesture recognizer
    tapGestureRecognizer.numberOfTouchesRequired = 1
    tapGestureRecognizer.numberOfTapsRequired = 2
}

/*
 * Add one-time tap gesture recognizer with configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

view.onTap(when: .once, handle: { (tapGestureRecognizer) in
    // Handle tap on view
    tapGestureRecognizer.view!.backgroundColor = .green
}) { (tapGestureRecognizer) in
    // Configure gesture recognizer
    tapGestureRecognizer.numberOfTouchesRequired = 1
    tapGestureRecognizer.numberOfTapsRequired = 2
}

/*
 * Add tap gesture recognizer without configuration block to view.
 */

circleView.onTap(when: .always, handle: { (tapGestureRecognizer) in
    // Handle tap on view
    tapGestureRecognizer.view!.backgroundColor = .green
}, configure: nil)

/*
 * Add one-time tap gesture recognizer without configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

circleView.onTap(when: .once, handle: { (tapGestureRecognizer) in
    // Handle tap on view
    tapGestureRecognizer.view!.backgroundColor = .green
}, configure: nil)

/*
 * Add long press gesture recognizer with configuration block to view.
 */

view.onLongPress(when: .always, handle: { (longPressGestureRecognizer) in
    // Handle long press on view
    tapGestureRecognizer.view!.backgroundColor = .green
}) { (longPressGestureRecognizer)
    // Configure gesture recognizer
    longPressGestureRecognizer.numberOfTouchesRequired = 1
}


/*
 * Add one-time long press gesture recognizer with configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

view.onLongPress(when: .once, handle: { (longPressGestureRecognizer) in
    // Handle long press on view
    tapGestureRecognizer.view!.backgroundColor = .green
}) { (longPressGestureRecognizer)
    // Configure gesture recognizer
    longPressGestureRecognizer.numberOfTouchesRequired = 1
}

/*
 * Add long press gesture recognizer without configuration block to view.
 */

view.onLongPress(when: .always, handle: { (longPressGestureRecognizer) in
    // Handle long press on view
    tapGestureRecognizer.view!.backgroundColor = .green
}, configure: nil)

/*
 * Add one-time long press gesture recognizer without configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

view.onLongPress(when: .once, handle: { (longPressGestureRecognizer) in
    // Handle long press on view
    tapGestureRecognizer.view!.backgroundColor = .green
}, configure: nil)


/*
 * Add pan gesture recognizer with configuration block to view.
 */

view.onPan(when: .always, handle: { (panGestureRecognizer) in
    // Handle pan gesture on view here...
}) { (longPressGestureRecognizer)
    // Configure pan gesture recognizer here...
}

/*
 * Add one-time pan gesture recognizer with configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

view.onPan(when: .once, handle: { (panGestureRecognizer) in
    // Handle pan gesture on view here...
}) { (longPressGestureRecognizer)
    // Configure pan gesture recognizer here...
}

/*
 * Add pan gesture recognizer without configuration block to view.
 */

view.onPan(when: .always, handle: { (panGestureRecognizer) in
    // Handle pan gesture on view here...
}, configure: nil)

/*
 * Add one-time pan gesture recognizer without configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

view.onPan(when: .once, handle: { (panGestureRecognizer) in
    // Handle pan gesture on view here...
}, configure: nil)

/*
 * Add pinch gesture recognizer with configuration block to view.
 */

view.onPinch(when: .always, handle: { (pinchGestureRecognizer) in
    // Handle pinch gesture on view here...
}) { (pinchGestureRecognizer) in
    // Configure pinch gesture recognizer here...
}

/*
 * Add one-time pinch gesture recognizer with configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

view.onPinch(when: .once, handle: { (pinchGestureRecognizer) in
    // Handle pinch gesture on view here...
}) { (pinchGestureRecognizer) in
    // Configure pinch gesture recognizer here...
}

/*
 * Add pinch gesture recognizer without configuration block to view.
 */

view.onPinch(when: .always, handle: { (pinchGestureRecognizer) in
    // Handle pinch gesture on view here...
}, configure: nil)

/*
 * Add one-time pinch gesture recognizer without configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

view.onPinch(when: .once, handle: { (pinchGestureRecognizer) in
    // Handle pinch gesture on view here...
}, configure: nil)

/*
 * Add rotation gesture recognizer with configuration block to view.
 */

view.onRotation(when: .always, handle: { (rotationGestureRecognizer) in
    // Handle rotation gesture on view here...
}) { (rotationGestureRecognizer) in
    // Configure rotation gesture recognizer here...
}

/*
 * Add one-time rotation gesture recognizer with configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

view.onRotation(when: .once, handle: { (rotationGestureRecognizer) in
    // Handle rotation gesture on view here...
}) { (rotationGestureRecognizer) in
    // Configure rotation gesture recognizer here...
}

/*
 * Add rotation gesture recognizer without configuration block to view.
 */

view.onRotation(when: .always, handle: { (rotationGestureRecognizer) in
    // Handle rotation gesture on view here...
}, .configure: nil)

/*
 * Add one-time rotation gesture recognizer without configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

view.onRotation(when: .once, handle: { (rotationGestureRecognizer) in
    // Handle rotation gesture on view here...
}, configure: nil)

/*
 * Add swipe gesture recognizer with configuration block to view.
 */

view.onSwipe(when: .always, handle: { (swipeGestureRecognizer) in
    // Handle swipe gesture on view here...
}) { (swipeGestureRecognizer) in
    // Configure swipe gesture recognizer here...
    swipeGestureRecognizer.direction = .Right
}

/*
 * Add one-time swipe gesture recognizer with configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

view.onSwipe(when: .once, { (swipeGestureRecognizer) in
    // Handle swipe gesture on view here...
}) { (swipeGestureRecognizer) in
    // Configure swipe gesture recognizer here...
    swipeGestureRecognizer.direction = .Right
}

/*
 * Add swipe gesture recognizer without configuration block to view.
 */

view.onSwipe(when: .always, handle: { (swipeGestureRecognizer) in
    // Handle swipe gesture on view here...
}, configure: nil)

/*
 * Add one-time swipe gesture recognizer without configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

view.onSwipe(when: .once, handle: { (swipeGestureRecognizer) in
    // Handle swipe gesture on view here...
}, configure: nil)

/*
 * Add swipe up gesture recognizer without configuration block to view.
 */

view.onSwipe(to: .up, when: .always, handle: { (swipeGestureRecognizer) in
    // Handle swipe gesture on view here...
}, configure: nil)

/*
 * Add swipe right gesture recognizer without configuration block to view.
 */

view.onSwipe(to: .right, when: .always, handle: { (swipeGestureRecognizer) in
    // Handle swipe gesture on view here...
}, configure: nil)


/*
 * Add swipe down gesture recognizer without configuration block to view.
 */

view.onSwipe(to: .down, when: .always, handle: { (swipeGestureRecognizer) in
    // Handle swipe gesture on view here...
}, configure: nil)


/*
 * Add swipe left gesture recognizer without configuration block to view.
 */

view.onSwipe(to: .left, when: .always, handle: { (swipeGestureRecognizer)
in
    // Handle swipe gesture on view here...
}, configure: nil)

/*
 * Add screen edge pan gesture recognizer with configuration block to view.
 */

view.onScreenEdgePan(when: .always, handle: { (screenEdgePanGestureRecognizer) in
    // Handle screen edge pan gesture on view here...
}) { (screenEdgePanGestureRecognizer) in
    // Configure screen edge pan gesture recognizer here...
}

/*
 * Add one-time screen edge pan gesture recognizer with configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

view.onScreenEdgePan(when: .once, handle: { (screenEdgePanGestureRecognizer) in
    // Handle screen edge pan gesture on view here...
}) { (screenEdgePanGestureRecognizer) in
    // Configure screen edge pan gesture recognizer here...
}

/*
 * Add screen edge pan gesture recognizer without configuration block to view.
 */

view.onScreenEdgePan(when: .always, handle: { (screenEdgePanGestureRecognizer) in
    // Handle screen edge pan gesture on view here...
}, configure: nil)

/*
 * Add one-time screen edge pan gesture recognizer without configuration block to view.
 * Gesture recognizer will be removed from view after first recognition.
 */

view.onScreenEdgePan(when: .once, handle: { (screenEdgePanGestureRecognizer) in
    // Handle screen edge pan gesture on view here...
}, configure: nil)
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

All other gesture recognizers with `SN` prefix can be initialized similar way.

## License

`Sensitive` is available under the MIT license. See the [LICENSE](./LICENSE) file for more info.
