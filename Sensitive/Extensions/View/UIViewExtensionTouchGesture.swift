//
//  UIViewExtensionTouchGesture.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 07.03.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    
    /**
     Adds `TouchGestureRecognizer` instance to view.
     
     - parameters:
        - when: Represents how many times gesture should be handled.
        - handle: Called when `TouchGestureRecognizer` instance changes its state.
        - configure: Allows to configure `TouchRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
     
     - returns:
        Reference to receiver for support of chain calls.
     */
    @discardableResult
    public func onTouch(when handlerReuseCount: GestureHandlerReuseCount, handle: @escaping GestureRecognizerHandlerBlock<TouchGestureRecognizer>, configure: GestureRecognizerConfigurationBlock<TouchGestureRecognizer>?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForTouchRecognizer = self.stv_applyReuseCount(handlerReuseCount, toHandlerBlock: handle)
        
        /*
         * Create gesture recognizer instance.
         */
        
        let screenEdgePanGestureRecognizer = TouchGestureRecognizer(handlerBlock: handlerBlockForTouchRecognizer)
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        self.addGestureRecognizer(screenEdgePanGestureRecognizer)
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configure?(screenEdgePanGestureRecognizer)
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
     Adds `TouchGestureRecognizer` instance to view.
     
     - parameters:
        - handle: Called when `TouchGestureRecognizer` instance changes its state.
     
     - returns:
        Reference to receiver for support of chain calls.
     */
    @discardableResult
    public func onTouch(handle: @escaping GestureRecognizerHandlerBlock<TouchGestureRecognizer>) -> Self {
        return onTouch(when: .always, handle: handle, configure: nil)
    }
    
}
