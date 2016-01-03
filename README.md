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

view1.onTap({ () -> Void in
    view1.backgroundColor = .greenColor()
}) { (tapGestureRecognizer) -> Void in
    tapGestureRecognizer.numberOfTapsRequired = 2
}


/*
 * Add tap gesture recognizer without configuration block.
 */

view1.onTap {
    view1.backgroundColor = .greenColor()
}

```

## License

`Sensitive` is available under the MIT license. See the `LICENSE` file for more info.
