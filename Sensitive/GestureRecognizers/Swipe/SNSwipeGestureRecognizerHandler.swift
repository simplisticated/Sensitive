//
//  SNSwipeGestureRecognizerHandler.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 04.01.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

internal class SNSwipeGestureRecognizerHandler: NSObject {
    
    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    internal init(handlerBlock: @escaping SNSwipeGestureRecognizerHandlerBlock) {
        super.init()
        
        
        // Initialize handler block
        
        _handlerBlock = handlerBlock
    }
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Variables & properties
    
    fileprivate var _handlerBlock: SNSwipeGestureRecognizerHandlerBlock!
    
    fileprivate var handlerBlock: SNSwipeGestureRecognizerHandlerBlock {
        get {
            return _handlerBlock
        }
    }
    
    fileprivate var _swipeGestureRecognizer: SNSwipeGestureRecognizer?
    
    internal var swipeGestureRecognizer: SNSwipeGestureRecognizer? {
        get {
            return _swipeGestureRecognizer
        }
        set {
            // Update private variable
            
            _swipeGestureRecognizer = newValue
        }
    }
    
    
    // MARK: Public methods
    
    
    // MARK: Private methods
    
    internal func runHandlerBlock() {
        handlerBlock(swipeGestureRecognizer!)
    }
    
    
    // MARK: Protocol methods
    
}
