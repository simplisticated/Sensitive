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
        - when: Represents how many times gesture should be handled.
        - handle: Called when `UIRotationGestureRecognizer` instance changes its state.
        - configure: Allows to configure `UIRotationGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
     
     - returns:
        Reference to receiver for support of chain calls.
     */
    @discardableResult
    public func onRotation(when handlerReuseCount: GestureHandlerReuseCount, handle: @escaping GestureRecognizerHandlerBlock<UIRotationGestureRecognizer>, configure: GestureRecognizerConfigurationBlock<UIRotationGestureRecognizer>?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForRotationGestureRecognizer = self.stv_applyReuseCount(handlerReuseCount, toHandlerBlock: handle)
        
        /*
         * Create gesture recognizer instance.
         */
        
        let rotationGestureRecognizer = RotationGestureRecognizer(handlerBlock: handlerBlockForRotationGestureRecognizer)
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        self.addGestureRecognizer(rotationGestureRecognizer)
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configure?(rotationGestureRecognizer)
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
     Adds `UIRotationGestureRecognizer` instance to view.
     
     - parameters:
        - handle: Called when `UIRotationGestureRecognizer` instance changes its state.
     
     - returns:
        Reference to receiver for support of chain calls.
     */
    @discardableResult
    public func onRotation(handle: @escaping GestureRecognizerHandlerBlock<UIRotationGestureRecognizer>) -> Self {
        return onRotation(when: .always, handle: handle, configure: nil)
    }
    
}
