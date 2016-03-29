//
//  SNRotationGestureRecognizer.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 04.01.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

public class SNRotationGestureRecognizer: UIRotationGestureRecognizer {
    
    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    public init(handlerBlock: SNRotationGestureRecognizerHandlerBlock) {
        // Create handler
        
        let handler = SNRotationGestureRecognizerHandler(handlerBlock: handlerBlock)
        
        
        // Call super init
        
        super.init(target: handler, action: #selector(SNRotationGestureRecognizerHandler.runHandlerBlock))
        
        
        // Update handler
        
        handler.rotationGestureRecognizer = self
        
        
        // Initialize private handler variable
        
        _handler = handler
    }
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Variables & properties
    
    private var _handler: SNRotationGestureRecognizerHandler!
    
    private var handler: SNRotationGestureRecognizerHandler {
        get {
            return _handler
        }
    }
    
    
    // MARK: Public methods
    
    
    // MARK: Private methods
    
    
    // MARK: Protocol methods
    
}

