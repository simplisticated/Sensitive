//
//  UIViewExtensionSwipeGesture.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 07.03.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    
    /**
     Adds `UISwipeGestureRecognizer` instance to view.
     
     - parameters:
        - handler: Called when `UISwipeGestureRecognizer` instance changes its state.
     
     - returns:
        Reference to gesture recognizer that is added to receiver.
     */
    @discardableResult
    public func onSwipe(_ handler: @escaping GestureRecognizerHandler<UISwipeGestureRecognizer>) -> UISwipeGestureRecognizer {
        let gestureRecognizer = SwipeGestureRecognizer(handler: handler)
        self.addGestureRecognizer(gestureRecognizer)
        return gestureRecognizer
    }
    
    /**
     Adds `UISwipeGestureRecognizer` instance to view.
     
     - parameters:
        - handler: Called when `UISwipeGestureRecognizer` instance changes its state.
     
     - returns:
        Reference to gesture recognizer that is added to receiver.
     */
    @discardableResult
    public func onSwipe(_ handler: @escaping GestureRecognizerSimplifiedHandler) -> UISwipeGestureRecognizer {
        let gestureRecognizer = SwipeGestureRecognizer { (_) in
            handler()
        }
        self.addGestureRecognizer(gestureRecognizer)
        return gestureRecognizer
    }
    
}
