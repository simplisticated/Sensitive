//
//  UIViewExtensionLongPressGesture.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 07.03.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    
    /**
     Adds `UILongPressGestureRecognizer` instance to view.
     
     - parameters:
        - handler: Called when `UILongPressGestureRecognizer` instance changes its state.
     
     - returns:
        Reference to gesture recognizer that is added to receiver.
     */
    @discardableResult
    public func onLongPress(_ handler: @escaping GestureRecognizerHandler<UILongPressGestureRecognizer>) -> UILongPressGestureRecognizer {
        let gestureRecognizer = LongPressGestureRecognizer(handler: handler)
        self.addGestureRecognizer(gestureRecognizer)
        return gestureRecognizer
    }
    
    /**
     Adds `UILongPressGestureRecognizer` instance to view.
     
     - parameters:
        - handler: Called when `UILongPressGestureRecognizer` instance changes its state.
     
     - returns:
        Reference to gesture recognizer that is added to receiver.
     */
    @discardableResult
    public func onLongPress(_ handler: @escaping GestureRecognizerSimplifiedHandler) -> UILongPressGestureRecognizer {
        let gestureRecognizer = LongPressGestureRecognizer { (_) in
            handler()
        }
        self.addGestureRecognizer(gestureRecognizer)
        return gestureRecognizer
    }
    
}
