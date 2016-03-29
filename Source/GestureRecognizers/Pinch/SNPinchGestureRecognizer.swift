//
//  SNPinchGestureRecognizer.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 04.01.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

public class SNPinchGestureRecognizer: UIPinchGestureRecognizer {
    
    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    public init(handlerBlock: SNPinchGestureRecognizerHandlerBlock) {
        // Create handler
        
        let handler = SNPinchGestureRecognizerHandler(handlerBlock: handlerBlock)
        
        
        // Call super init
        
        super.init(target: handler, action: #selector(SNPinchGestureRecognizerHandler.runHandlerBlock))
        
        
        // Update handler
        
        handler.pinchGestureRecognizer = self
        
        
        // Initialize private handler variable
        
        _handler = handler
    }
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Variables & properties
    
    private var _handler: SNPinchGestureRecognizerHandler!
    
    private var handler: SNPinchGestureRecognizerHandler {
        get {
            return _handler
        }
    }
    
    
    // MARK: Public methods
    
    
    // MARK: Private methods
    
    
    // MARK: Protocol methods
    
}
