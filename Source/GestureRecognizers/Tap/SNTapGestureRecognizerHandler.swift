//
//  SNTapGestureRecognizerHandler.swift
//  SensitiveDemo
//
//  Created by Igor Matyushkin on 17.12.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import UIKit

public class SNTapGestureRecognizerHandler: NSObject {
    
    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    public init(handlerBlock: SNTapGestureRecognizerHandlerBlock) {
        super.init()
        
        
        // Initialize handler block
        
        self.handlerBlock = handlerBlock
    }
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Variables & properties
    
    private var handlerBlock: SNTapGestureRecognizerHandlerBlock!
    
    
    // MARK: Public methods
    
    
    // MARK: Private methods
    
    internal func runHandlerBlock() {
        handlerBlock()
    }
    
    
    // MARK: Protocol methods
    
}
