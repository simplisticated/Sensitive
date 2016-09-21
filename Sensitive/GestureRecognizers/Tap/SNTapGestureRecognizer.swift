//
//  SNTapGestureRecognizer.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 17.12.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import UIKit

open class SNTapGestureRecognizer: UITapGestureRecognizer {
    
    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    public init(handlerBlock: @escaping SNTapGestureRecognizerHandlerBlock) {
        // Create handler
        
        let handler = SNTapGestureRecognizerHandler(handlerBlock: handlerBlock)
        
        
        // Call super init
        
        super.init(target: handler, action: #selector(SNTapGestureRecognizerHandler.runHandlerBlock))
        
        
        // Update handler
        
        handler.tapGestureRecognizer = self
        
        
        // Update private handler variable
        
        _handler = handler
    }
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Variables & properties
    
    fileprivate var _handler: SNTapGestureRecognizerHandler!
    
    fileprivate var handler: SNTapGestureRecognizerHandler {
        get {
            return _handler
        }
    }
    
    
    // MARK: Public methods
    
    
    // MARK: Private methods
    
    
    // MARK: Protocol methods
    
}
