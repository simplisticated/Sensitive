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
        - when: Represents how many times gesture should be handled.
        - handle: Called when `UILongPressGestureRecognizer` instance changes its state.
        - configure: Allows to configure `UILongPressGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
     
     - returns:
        Reference to receiver for support of chain calls.
     */
    @discardableResult
    public func onLongPress(when handlerReuseCount: GestureHandlerReuseCount, handle: @escaping GestureRecognizerHandlerBlock<UILongPressGestureRecognizer>, configure: GestureRecognizerConfigurationBlock<UILongPressGestureRecognizer>?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForLongPressGestureRecognizer = self.stv_applyReuseCount(handlerReuseCount, toHandlerBlock: handle)
        
        /*
         * Create gesture recognizer instance.
         */
        
        let longPressGestureRecognizer = LongPressGestureRecognizer(handlerBlock: handlerBlockForLongPressGestureRecognizer)
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        self.addGestureRecognizer(longPressGestureRecognizer)
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configure?(longPressGestureRecognizer)
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
     Adds `UILongPressGestureRecognizer` instance to view.
     
     - parameters:
        - handle: Called when `UILongPressGestureRecognizer` instance changes its state.
     
     - returns:
        Reference to receiver for support of chain calls.
     */
    @discardableResult
    public func onLongPress(handle: @escaping GestureRecognizerHandlerBlock<UILongPressGestureRecognizer>) -> Self {
        return onLongPress(when: .always, handle: handle, configure: nil)
    }
    
}
