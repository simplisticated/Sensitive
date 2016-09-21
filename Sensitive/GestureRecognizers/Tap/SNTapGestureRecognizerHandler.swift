//
//  SNTapGestureRecognizerHandler.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 17.12.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import UIKit

internal class SNTapGestureRecognizerHandler: NSObject {
    
    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    internal init(handlerBlock: @escaping SNTapGestureRecognizerHandlerBlock) {
        super.init()
        
        
        // Initialize handler block
        
        _handlerBlock = handlerBlock
    }
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Variables & properties
    
    fileprivate var _handlerBlock: SNTapGestureRecognizerHandlerBlock!
    
    fileprivate var handlerBlock: SNTapGestureRecognizerHandlerBlock {
        get {
            return _handlerBlock
        }
    }
    
    fileprivate var _tapGestureRecognizer: SNTapGestureRecognizer?
    
    internal var tapGestureRecognizer: SNTapGestureRecognizer? {
        get {
            return _tapGestureRecognizer
        }
        set {
            // Update private variable
            
            _tapGestureRecognizer = newValue
        }
    }
    
    
    // MARK: Public methods
    
    
    // MARK: Private methods
    
    internal func runHandlerBlock() {
        guard tapGestureRecognizer != nil else {
            return
        }
        
        handlerBlock(tapGestureRecognizer!)
    }
    
    
    // MARK: Protocol methods
    
}
