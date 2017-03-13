//
//  SNLongPressGestureRecognizerHandler.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 17.12.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import UIKit

internal class SNLongPressGestureRecognizerHandler: NSObject {
    
    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    internal init(handlerBlock: @escaping SNLongPressGestureRecognizerHandlerBlock) {
        super.init()
        
        
        // Initialize handler block
        
        _handlerBlock = handlerBlock
    }
    
    
    // MARK: Deinitializer
    
    deinit {
        // Remove references
        
        _handlerBlock = nil
        _longPressGestureRecognizer = nil
    }
    
    
    // MARK: Variables & properties
    
    fileprivate var _handlerBlock: SNLongPressGestureRecognizerHandlerBlock!
    
    fileprivate var handlerBlock: SNLongPressGestureRecognizerHandlerBlock {
        get {
            return _handlerBlock
        }
    }
    
    fileprivate var _longPressGestureRecognizer: SNLongPressGestureRecognizer?
    
    internal var longPressGestureRecognizer: SNLongPressGestureRecognizer? {
        get {
            return _longPressGestureRecognizer
        }
        set {
            // Update private variable
            
            _longPressGestureRecognizer = newValue
        }
    }
    
    
    // MARK: Public methods
    
    
    // MARK: Private methods
    
    internal func runHandlerBlock() {
        guard longPressGestureRecognizer != nil else {
            return
        }
        
        handlerBlock(longPressGestureRecognizer!)
    }
    
    
    // MARK: Protocol methods
    
}
