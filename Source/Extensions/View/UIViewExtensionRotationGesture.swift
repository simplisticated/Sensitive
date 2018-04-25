//
//  UIViewExtensionRotationGesture.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 07.03.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    
    /**
     Adds `UIRotationGestureRecognizer` instance to view.
     
     - parameters:
        - handler: Called when `UIRotationGestureRecognizer` instance changes its state.
     
     - returns:
        Reference to gesture recognizer that is added to receiver.
     */
    @discardableResult
    public func onRotation(_ handler: @escaping GestureRecognizerHandler<UIRotationGestureRecognizer>) -> UIRotationGestureRecognizer {
        let gestureRecognizer = RotationGestureRecognizer(handler: handler)
        self.addGestureRecognizer(gestureRecognizer)
        return gestureRecognizer
    }
    
    /**
     Adds `UIRotationGestureRecognizer` instance to view.
     
     - parameters:
        - handler: Called when `UIRotationGestureRecognizer` instance changes its state.
     
     - returns:
        Reference to gesture recognizer that is added to receiver.
     */
    @discardableResult
    public func onRotation(_ handler: @escaping GestureRecognizerSimplifiedHandler) -> UIRotationGestureRecognizer {
        let gestureRecognizer = RotationGestureRecognizer { (_) in
            handler()
        }
        self.addGestureRecognizer(gestureRecognizer)
        return gestureRecognizer
    }
    
}
