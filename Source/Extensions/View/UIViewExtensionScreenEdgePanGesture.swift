//
//  UIViewExtensionScreenEdgePanGesture.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 07.03.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    
    /**
     Adds `UIScreenEdgePanGestureRecognizer` instance to view.
     
     - parameters:
        - handler: Called when `UIScreenEdgePanGestureRecognizer` instance changes its state.
     
     - returns:
        Reference to gesture recognizer that is added to receiver.
     */
    @discardableResult
    public func onScreenEdgePan(_ handler: @escaping GestureRecognizerHandler<UIScreenEdgePanGestureRecognizer>) -> UIScreenEdgePanGestureRecognizer {
        let gestureRecognizer = ScreenEdgePanGestureRecognizer(handler: handler)
        self.addGestureRecognizer(gestureRecognizer)
        return gestureRecognizer
    }
    
    /**
     Adds `UIScreenEdgePanGestureRecognizer` instance to view.
     
     - parameters:
        - handler: Called when `UIScreenEdgePanGestureRecognizer` instance changes its state.
     
     - returns:
        Reference to gesture recognizer that is added to receiver.
     */
    @discardableResult
    public func onScreenEdgePan(_ handler: @escaping GestureRecognizerSimplifiedHandler) -> UIScreenEdgePanGestureRecognizer {
        let gestureRecognizer = ScreenEdgePanGestureRecognizer { (_) in
            handler()
        }
        self.addGestureRecognizer(gestureRecognizer)
        return gestureRecognizer
    }
    
}
