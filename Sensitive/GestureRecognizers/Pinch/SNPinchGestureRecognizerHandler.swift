//
//  SNPinchGestureRecognizerHandler.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 04.01.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

internal class SNPinchGestureRecognizerHandler: NSObject {
    
    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    internal init(handlerBlock: @escaping SNPinchGestureRecognizerHandlerBlock) {
        super.init()
        
        
        // Initialize handler block
        
        _handlerBlock = handlerBlock
    }
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Variables & properties
    
    fileprivate var _handlerBlock: SNPinchGestureRecognizerHandlerBlock!
    
    fileprivate var handlerBlock: SNPinchGestureRecognizerHandlerBlock {
        get {
            return _handlerBlock
        }
    }
    
    fileprivate var _pinchGestureRecognizer: SNPinchGestureRecognizer?
    
    internal var pinchGestureRecognizer: SNPinchGestureRecognizer? {
        get {
            return _pinchGestureRecognizer
        }
        set {
            // Update private variable
            
            _pinchGestureRecognizer = newValue
        }
    }
    
    
    // MARK: Public methods
    
    
    // MARK: Private methods
    
    internal func runHandlerBlock() {
        handlerBlock(pinchGestureRecognizer!)
    }
    
    
    // MARK: Protocol methods
    
}
