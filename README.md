<p align="center" >
<img src="https://github.com/igormatyushkin014/Sensitive/blob/master/Logo/logo-1024-300.png" alt="Sensitive" title="Sensitive">
</p>

# Sensitive

Fresh look at work with gestures in Swift.

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

view1.SN_addTapGestureRecognizerWithConfigurationBlock { (tapGestureRecognizer) -> Void in
    tapGestureRecognizer.numberOfTapsRequired = 2
    tapGestureRecognizer.numberOfTouchesRequired = 2
}


/*
 * You can pass nil instead of implementing configuration block.
 */

view1.SN_addTapGestureRecognizerWithConfigurationBlock(nil)


/*
 * Add long press gesture recognizer with configuration block.
 */

view1.SN_addLongPressGestureRecognizerWithConfigurationBlock { (longPressGestureRecognizer) -> Void in
    longPressGestureRecognizer.numberOfTouchesRequired = 2
}


/*
 * Add pan gesture recognizer with with automatic handler.
 */

view1.SN_addPanGestureRecognizer(handleAutomatically: true, withConfigurationBlock: nil)


/*
 * Add pinch gesture recognizer with automatic handler.
 */

view1.SN_addPinchGestureRecognizer(handleAutomatically: true, withConfigurationBlock: nil)


/*
 * Add rotation gesture recognizer with configuration block.
 */

view1.SN_addRotationGestureRecognizerWithConfigurationBlock { (rotationGestureRecognizer) -> Void in
}


/*
 * Add swipe gesture recognizer.
 */

view1.SN_addSwipeGestureRecognizerWithConfigurationBlock { (swipeGestureRecognizer) -> Void in
    swipeGestureRecognizer.direction = .Left
}


/*
 * To handle added gesture recognizers,
 * you should override SN_didRetrieveGestureRecognizer: method
 * in your UIView subclass.
 * Example:
 */

class CustomView: UIView {
    
    override func SN_didRetrieveGestureRecognizer(gestureRecognizer: UIGestureRecognizer) {
        if gestureRecognizer is UITapGestureRecognizer {
            if gestureRecognizer.state == .Ended {
                // Handle tap...
            }
        }
    }
    
}

```

It's possible to add `UIPanGestureRecognizer` and `UIPinchGestureRecognizer` to view with automatic handlers. It means that you don't need to implement pan and pinch functionality:

```swift
/*
 * Pan and pinch gestures will be handled automatically without needs to program it.
 */

view1.SN_addPanGestureRecognizer(handleAutomatically: true, withConfigurationBlock: nil)
view1.SN_addPinchGestureRecognizer(handleAutomatically: true, withConfigurationBlock: nil)


/*
 * But you always can implement your own solution.
 * In this case you need to override SN_didRetrieveGestureRecognizer:
 * inside of your custom UIView subclass as it was shown above.
 */

view1.SN_addPanGestureRecognizer(handleAutomatically: false, withConfigurationBlock: nil)
view1.SN_addPinchGestureRecognizer(handleAutomatically: false, withConfigurationBlock: nil)

```

Any type of gesture recognizer can be added with or without configuration block.

```swift
/*
 * Use configuration block.
 */

view1.SN_addTapGestureRecognizerWithConfigurationBlock { (tapGestureRecognizer) -> Void in
    tapGestureRecognizer.numberOfTapsRequired = 2
    tapGestureRecognizer.numberOfTouchesRequired = 2
}


/*
 * Simply add gesture recognizer to view without configuration block.
 */

view1.SN_addTapGestureRecognizerWithConfigurationBlock(nil)

```

## License

`Sensitive` is available under the MIT license. See the `LICENSE` file for more info.
