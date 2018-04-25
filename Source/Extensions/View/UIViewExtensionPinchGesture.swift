//
//  UIViewExtensionPinchGesture.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 07.03.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    
    /**
     Adds `UIPinchGestureRecognizer` instance to view.
     
     - parameters:
        - handler: Called when `UIPinchGestureRecognizer` instance changes its state.
     
     - returns:
        Reference to gesture recognizer that is added to receiver.
     */
    @discardableResult
    public func onPinch(_ handler: @escaping GestureRecognizerHandler<UIPinchGestureRecognizer>) -> UIPinchGestureRecognizer {
        let gestureRecognizer = PinchGestureRecognizer(handler: handler)
        self.addGestureRecognizer(gestureRecognizer)
        return gestureRecognizer
    }
    
    /**
     Adds `UIPinchGestureRecognizer` instance to view.
     
     - parameters:
        - handler: Called when `UIPinchGestureRecognizer` instance changes its state.
     
     - returns:
        Reference to gesture recognizer that is added to receiver.
     */
    @discardableResult
    public func onPinch(_ handler: @escaping GestureRecognizerSimplifiedHandler) -> UIPinchGestureRecognizer {
        let gestureRecognizer = PinchGestureRecognizer { (_) in
            handler()
        }
        self.addGestureRecognizer(gestureRecognizer)
        return gestureRecognizer
    }
    
}
