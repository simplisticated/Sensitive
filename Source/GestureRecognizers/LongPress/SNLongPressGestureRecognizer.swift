//
//  SNLongPressGestureRecognizer.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 17.12.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import UIKit

public class SNLongPressGestureRecognizer: UILongPressGestureRecognizer {
    
    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    public init(handlerBlock: SNLongPressGestureRecognizerHandlerBlock) {
        // Create handler
        
        let handler = SNLongPressGestureRecognizerHandler(handlerBlock: handlerBlock)
        
        
        // Call super init
        
        super.init(target: handler, action: #selector(SNLongPressGestureRecognizerHandler.runHandlerBlock))
        
        
        // Update handler
        
        handler.longPressGestureRecognizer = self
        
        
        // Update private handler variable
        
        _handler = handler
    }
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Variables & properties
    
    private var _handler: SNLongPressGestureRecognizerHandler!
    
    private var handler: SNLongPressGestureRecognizerHandler {
        get {
            return _handler
        }
    }
    
    
    // MARK: Public methods
    
    
    // MARK: Private methods
    
    
    // MARK: Protocol methods
    
}
