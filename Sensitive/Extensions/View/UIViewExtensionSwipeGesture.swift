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
        - when: Represents how many times gesture should be handled.
        - handle: Called when `UISwipeGestureRecognizer` instance changes its state.
        - configure: Allows to configure `UISwipeGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
     
     - returns:
        Reference to receiver for support of chain calls.
     */
    @discardableResult
    public func onSwipe(when handlerReuseCount: GestureHandlerReuseCount, handle: @escaping GestureRecognizerHandlerBlock<UISwipeGestureRecognizer>, configure: GestureRecognizerHandlerBlock<UISwipeGestureRecognizer>?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForSwipeGestureRecognizer = self.stv_applyReuseCount(handlerReuseCount, toHandlerBlock: handle)
        
        /*
         * Create gesture recognizer instance.
         */
        
        let swipeGestureRecognizer = SwipeGestureRecognizer(handlerBlock: handlerBlockForSwipeGestureRecognizer)
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        self.addGestureRecognizer(swipeGestureRecognizer)
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configure?(swipeGestureRecognizer)
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
     Adds `UISwipeGestureRecognizer` instance to view.
     
     - parameters:
        - handle: Called when `UISwipeGestureRecognizer` instance changes its state.
     
     - returns:
        Reference to receiver for support of chain calls.
     */
    @discardableResult
    public func onSwipe(handle: @escaping GestureRecognizerHandlerBlock<UISwipeGestureRecognizer>) -> Self {
        return onSwipe(when: .always, handle: handle, configure: nil)
    }
    
    /**
     Adds `UISwipeGestureRecognizer` instance to view.
     
     - parameters:
        - to: Swipe direction.
        - when: Represents how many times gesture should be handled.
        - handle: Called when `UISwipeGestureRecognizer` instance changes its state.
        - configure: Allows to configure `UISwipeGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
     
     - returns:
        Reference to receiver for support of chain calls.
     */
    @discardableResult
    public func onSwipe(to direction: SwipeDirection, when handlerReuseCount: GestureHandlerReuseCount, handle: @escaping GestureRecognizerHandlerBlock<UISwipeGestureRecognizer>, configure: GestureRecognizerHandlerBlock<UISwipeGestureRecognizer>?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForSwipeGestureRecognizer = self.stv_applyReuseCount(handlerReuseCount, toHandlerBlock: handle)
        
        /*
         * Create gesture recognizer instance.
         */
        
        let swipeGestureRecognizer = SwipeGestureRecognizer(handlerBlock: handlerBlockForSwipeGestureRecognizer)
        
        
        /*
         * Update swipe gesture recognizer's direction.
         */
        
        swipeGestureRecognizer.direction = direction.swipeGestureRecognizerDirection
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        self.addGestureRecognizer(swipeGestureRecognizer)
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configure?(swipeGestureRecognizer)
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
     Adds `UISwipeGestureRecognizer` instance to view.
     
     - parameters:
        - to: Swipe direction.
        - handle: Called when `UISwipeGestureRecognizer` instance changes its state.
     
     - returns:
        Reference to receiver for support of chain calls.
     */
    @discardableResult
    public func onSwipe(to direction: SwipeDirection, handle: @escaping GestureRecognizerHandlerBlock<UISwipeGestureRecognizer>) -> Self {
        return onSwipe(to: direction, when: .always, handle: handle, configure: nil)
    }
    
}
