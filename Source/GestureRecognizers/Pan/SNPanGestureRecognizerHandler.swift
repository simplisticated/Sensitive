//
//  SNPanGestureRecognizerHandler.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 04.01.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

internal class SNPanGestureRecognizerHandler: NSObject {
    
    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    internal init(handlerBlock: SNPanGestureRecognizerHandlerBlock) {
        super.init()
        
        
        // Initialize handler block
        
        _handlerBlock = handlerBlock
    }
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Variables & properties
    
    private var _handlerBlock: SNPanGestureRecognizerHandlerBlock!
    
    private var handlerBlock: SNPanGestureRecognizerHandlerBlock {
        get {
            return _handlerBlock
        }
    }
    
    private var _panGestureRecognizer: SNPanGestureRecognizer?
    
    internal var panGestureRecognizer: SNPanGestureRecognizer? {
        get {
            return _panGestureRecognizer
        }
        set {
            // Update private variable
            
            _panGestureRecognizer = newValue
        }
    }
    
    
    // MARK: Public methods
    
    
    // MARK: Private methods
    
    internal func runHandlerBlock() {
        guard panGestureRecognizer != nil else {
            return
        }
        
        handlerBlock(panGestureRecognizer: panGestureRecognizer!)
    }
    
    
    // MARK: Protocol methods
    
}
