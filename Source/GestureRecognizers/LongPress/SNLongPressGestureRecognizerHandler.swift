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
    
    internal init(handlerBlock: SNLongPressGestureRecognizerHandlerBlock) {
        super.init()
        
        
        // Initialize handler block
        
        _handlerBlock = handlerBlock
    }
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Variables & properties
    
    private var _handlerBlock: SNLongPressGestureRecognizerHandlerBlock!
    
    private var handlerBlock: SNLongPressGestureRecognizerHandlerBlock {
        get {
            return _handlerBlock
        }
    }
    
    private var _longPressGestureRecognizer: SNLongPressGestureRecognizer?
    
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
        
        handlerBlock(longPressGestureRecognizer: longPressGestureRecognizer!)
    }
    
    
    // MARK: Protocol methods
    
}
