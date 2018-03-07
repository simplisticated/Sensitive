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
        - when: Represents how many times gesture should be handled.
        - handle: Called when `UIScreenEdgePanGestureRecognizer` instance changes its state.
        - configure: Allows to configure `UIScreenEdgePanGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
     
     - returns:
        Reference to receiver for support of chain calls.
     */
    @discardableResult
    public func onScreenEdgePan(when handlerReuseCount: GestureHandlerReuseCount, handle: @escaping GestureRecognizerHandlerBlock<UIScreenEdgePanGestureRecognizer>, configure: GestureRecognizerConfigurationBlock<UIScreenEdgePanGestureRecognizer>?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForScreenEdgePanGestureRecognizer = self.stv_applyReuseCount(handlerReuseCount, toHandlerBlock: handle)
        
        /*
         * Create gesture recognizer instance.
         */
        
        let screenEdgePanGestureRecognizer = ScreenEdgePanGestureRecognizer(handlerBlock: handlerBlockForScreenEdgePanGestureRecognizer)
        
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
     Adds `UIScreenEdgePanGestureRecognizer` instance to view.
     
     - parameters:
        - handle: Called when `UIScreenEdgePanGestureRecognizer` instance changes its state.
     
     - returns:
        Reference to receiver for support of chain calls.
     */
    @discardableResult
    public func onScreenEdgePan(handle: @escaping GestureRecognizerHandlerBlock<UIScreenEdgePanGestureRecognizer>) -> Self {
        return onScreenEdgePan(when: .always, handle: handle, configure: nil)
    }
    
}
