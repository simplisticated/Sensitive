//
//  UIViewExtensionTapGesture.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 07.03.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    
    /**
     Adds `UITapGestureRecognizer` instance to view.
     
     - parameters:
        - when: Represents how many times gesture should be handled.
        - handle: Called when `UITapGestureRecognizer` instance changes its state.
        - configure: Allows to configure `UITapGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
     
     - returns:
        Reference to receiver for support of chain calls.
     */
    @discardableResult
    public func onTap(when handlerReuseCount: GestureHandlerReuseCount, handle: @escaping GestureRecognizerHandlerBlock<UITapGestureRecognizer>, configure: GestureRecognizerConfigurationBlock<UITapGestureRecognizer>?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForTapGestureRecognizer = self.stv_applyReuseCount(handlerReuseCount, toHandlerBlock: handle)
        
        /*
         * Create gesture recognizer instance.
         */
        
        let tapGestureRecognizer = TapGestureRecognizer(handlerBlock: handlerBlockForTapGestureRecognizer)
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        self.addGestureRecognizer(tapGestureRecognizer)
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configure?(tapGestureRecognizer)
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
     Adds `UITapGestureRecognizer` instance to view.
     
     - parameters:
        - handle: Called when `UITapGestureRecognizer` instance changes its state.
     
     - returns:
        Reference to receiver for support of chain calls.
     */
    @discardableResult
    public func onTap(handle: @escaping GestureRecognizerHandlerBlock<UITapGestureRecognizer>) -> Self {
        return onTap(when: .always, handle: handle, configure: nil)
    }
    
}
