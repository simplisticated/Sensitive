//
//  SNRotationGestureRecognizerHandler.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 04.01.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

internal class SNRotationGestureRecognizerHandler: NSObject {
    
    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    internal init(handlerBlock: SNRotationGestureRecognizerHandlerBlock) {
        super.init()
        
        
        // Initialize handler block
        
        _handlerBlock = handlerBlock
    }
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Variables & properties
    
    private var _handlerBlock: SNRotationGestureRecognizerHandlerBlock!
    
    private var handlerBlock: SNRotationGestureRecognizerHandlerBlock {
        get {
            return _handlerBlock
        }
    }
    
    private var _rotationGestureRecognizer: SNRotationGestureRecognizer?
    
    internal var rotationGestureRecognizer: SNRotationGestureRecognizer? {
        get {
            return _rotationGestureRecognizer
        }
        set {
            // Update private variable
            
            _rotationGestureRecognizer = newValue
        }
    }
    
    
    // MARK: Public methods
    
    
    // MARK: Private methods
    
    internal func runHandlerBlock() {
        handlerBlock(rotationGestureRecognizer: rotationGestureRecognizer!)
    }
    
    
    // MARK: Protocol methods
    
}
