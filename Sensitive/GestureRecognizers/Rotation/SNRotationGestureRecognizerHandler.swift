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
    
    internal init(handlerBlock: @escaping SNRotationGestureRecognizerHandlerBlock) {
        super.init()
        
        
        // Initialize handler block
        
        _handlerBlock = handlerBlock
    }
    
    
    // MARK: Deinitializer
    
    deinit {
        // Remove references
        
        _handlerBlock = nil
        _rotationGestureRecognizer = nil
    }
    
    
    // MARK: Variables & properties
    
    fileprivate var _handlerBlock: SNRotationGestureRecognizerHandlerBlock!
    
    fileprivate var handlerBlock: SNRotationGestureRecognizerHandlerBlock {
        get {
            return _handlerBlock
        }
    }
    
    fileprivate var _rotationGestureRecognizer: SNRotationGestureRecognizer?
    
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
        handlerBlock(rotationGestureRecognizer!)
    }
    
    
    // MARK: Protocol methods
    
}
