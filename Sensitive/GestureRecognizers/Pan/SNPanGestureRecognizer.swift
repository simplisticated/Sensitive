//
//  SNPanGestureRecognizer.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 04.01.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

open class SNPanGestureRecognizer: UIPanGestureRecognizer {
    
    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    public init(handlerBlock: @escaping SNPanGestureRecognizerHandlerBlock) {
        // Create handler
        
        let handler = SNPanGestureRecognizerHandler(handlerBlock: handlerBlock)
        
        
        // Call super init
        
        super.init(target: handler, action: #selector(SNPanGestureRecognizerHandler.runHandlerBlock))
        
        
        // Update handler
        
        handler.panGestureRecognizer = self
        
        
        // Update private handler variable
        
        _handler = handler
    }
    
    
    // MARK: Deinitializer
    
    deinit {
        // Remove references
        
        _handler = nil
    }
    
    
    // MARK: Variables & properties
    
    fileprivate var _handler: SNPanGestureRecognizerHandler!
    
    fileprivate var handler: SNPanGestureRecognizerHandler {
        get {
            return _handler
        }
    }
    
    
    // MARK: Public methods
    
    
    // MARK: Private methods
    
    
    // MARK: Protocol methods
    
}
