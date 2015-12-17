//
//  SNTapGestureRecognizer.swift
//  SensitiveDemo
//
//  Created by Igor Matyushkin on 17.12.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import UIKit

public class SNTapGestureRecognizer: UITapGestureRecognizer {
    
    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    public init(handlerBlock: SNTapGestureRecognizerHandlerBlock) {
        // Create handler
        
        let handler = SNTapGestureRecognizerHandler(handlerBlock: handlerBlock)
        
        
        // Call super init
        
        super.init(target: handler, action: "runHandlerBlock")
        
        
        // Initialize handler
        
        self.handler = handler
    }
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Variables & properties
    
    private var handler: SNTapGestureRecognizerHandler!
    
    
    // MARK: Public methods
    
    
    // MARK: Private methods
    
    internal func didTap() {
    }
    
    
    // MARK: Protocol methods
    
}
