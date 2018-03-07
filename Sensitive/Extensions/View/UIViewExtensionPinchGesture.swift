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
        - when: Represents how many times gesture should be handled.
        - handle: Called when `UIPinchGestureRecognizer` instance changes its state.
        - configure: Allows to configure `UIPinchGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
     
     - returns:
        Reference to receiver for support of chain calls.
     */
    @discardableResult
    public func onPinch(when handlerReuseCount: GestureHandlerReuseCount, handle: @escaping GestureRecognizerHandlerBlock<UIPinchGestureRecognizer>, configure: GestureRecognizerConfigurationBlock<UIPinchGestureRecognizer>?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForPinchGestureRecognizer = self.stv_applyReuseCount(handlerReuseCount, toHandlerBlock: handle)
        
        /*
         * Create gesture recognizer instance.
         */
        
        let pinchGestureRecognizer = PinchGestureRecognizer(handlerBlock: handlerBlockForPinchGestureRecognizer)
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        self.addGestureRecognizer(pinchGestureRecognizer)
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configure?(pinchGestureRecognizer)
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
     Adds `UIPinchGestureRecognizer` instance to view.
     
     - parameters:
        - handle: Called when `UIPinchGestureRecognizer` instance changes its state.
     
     - returns:
        Reference to receiver for support of chain calls.
     */
    @discardableResult
    public func onPinch(handle: @escaping GestureRecognizerHandlerBlock<UIPinchGestureRecognizer>) -> Self {
        return onPinch(when: .always, handle: handle, configure: nil)
    }
    
}
