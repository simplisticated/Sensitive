//
//  SNScreenEdgePanGestureRecognizer.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 04.01.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

public class SNScreenEdgePanGestureRecognizer: UIScreenEdgePanGestureRecognizer {
    
    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    public init(handlerBlock: SNScreenEdgePanGestureRecognizerHandlerBlock) {
        // Create handler
        
        let handler = SNScreenEdgePanGestureRecognizerHandler(handlerBlock: handlerBlock)
        
        
        // Call super init
        
        super.init(target: handler, action: #selector(SNScreenEdgePanGestureRecognizerHandler.runHandlerBlock))
        
        
        // Update handler
        
        handler.screenEdgePanGestureRecognizer = self
        
        
        // Initialize private handler variable
        
        _handler = handler
    }
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Variables & properties
    
    private var _handler: SNScreenEdgePanGestureRecognizerHandler!
    
    private var handler: SNScreenEdgePanGestureRecognizerHandler {
        get {
            return _handler
        }
    }
    
    
    // MARK: Public methods
    
    
    // MARK: Private methods
    
    
    // MARK: Protocol methods
    
}
