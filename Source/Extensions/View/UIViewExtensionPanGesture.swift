//
//  UIViewExtensionPanGesture.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 07.03.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    
    /**
     Adds `UIPanGestureRecognizer` instance to view.
     
     - parameters:
        - handler: Called when `UIPanGestureRecognizer` instance changes its state.
     
     - returns:
        Reference to gesture recognizer that is added to receiver.
     */
    @discardableResult
    public func onPan(_ handler: @escaping GestureRecognizerHandler<UIPanGestureRecognizer>) -> UIPanGestureRecognizer {
        let gestureRecognizer = PanGestureRecognizer(handler: handler)
        self.addGestureRecognizer(gestureRecognizer)
        return gestureRecognizer
    }
    
    /**
     Adds `UIPanGestureRecognizer` instance to view.
     
     - parameters:
        - handler: Called when `UIPanGestureRecognizer` instance changes its state.
     
     - returns:
        Reference to gesture recognizer that is added to receiver.
     */
    @discardableResult
    public func onPan(_ handler: @escaping GestureRecognizerSimplifiedHandler) -> UIPanGestureRecognizer {
        let gestureRecognizer = PanGestureRecognizer { (_) in
            handler()
        }
        self.addGestureRecognizer(gestureRecognizer)
        return gestureRecognizer
    }
    
}
