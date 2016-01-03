//
//  SNPanGestureRecognizer.swift
//  SensitiveDemo
//
//  Created by Igor Matyushkin on 04.01.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

public class SNPanGestureRecognizer: UIPanGestureRecognizer {
    
    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    public init(handlerBlock: SNPanGestureRecognizerHandlerBlock) {
        // Create handler
        
        let handler = SNPanGestureRecognizerHandler(handlerBlock: handlerBlock)
        
        
        // Call super init
        
        super.init(target: handler, action: "runHandlerBlock")
        
        
        // Initialize handler
        
        self.handler = handler
    }
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Variables & properties
    
    private var handler: SNPanGestureRecognizerHandler!
    
    
    // MARK: Public methods
    
    
    // MARK: Private methods
    
    
    // MARK: Protocol methods
    
}
