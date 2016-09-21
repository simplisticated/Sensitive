//
//  SNScreenEdgePanGestureRecognizerHandler.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 04.01.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

internal class SNScreenEdgePanGestureRecognizerHandler: NSObject {
    
    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    internal init(handlerBlock: @escaping SNScreenEdgePanGestureRecognizerHandlerBlock) {
        super.init()
        
        
        // Initialize handler block
        
        _handlerBlock = handlerBlock
    }
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Variables & properties
    
    fileprivate var _handlerBlock: SNScreenEdgePanGestureRecognizerHandlerBlock!
    
    fileprivate var handlerBlock: SNScreenEdgePanGestureRecognizerHandlerBlock {
        get {
            return _handlerBlock
        }
    }
    
    fileprivate var _screenEdgePanGestureRecognizer: SNScreenEdgePanGestureRecognizer?
    
    internal var screenEdgePanGestureRecognizer: SNScreenEdgePanGestureRecognizer? {
        get {
            return _screenEdgePanGestureRecognizer
        }
        set {
            // Update private variable
            
            _screenEdgePanGestureRecognizer = newValue
        }
    }
    
    
    // MARK: Public methods
    
    
    // MARK: Private methods
    
    internal func runHandlerBlock() {
        handlerBlock(screenEdgePanGestureRecognizer!)
    }
    
    
    // MARK: Protocol methods
    
}
