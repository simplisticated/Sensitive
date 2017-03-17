//
//  LongPressGestureRecognizer.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 17.12.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import UIKit

public class LongPressGestureRecognizer: UILongPressGestureRecognizer {
    
    // MARK: Class variables & properties
    
    // MARK: Class methods
    
    // MARK: Initializers
    
    public init(handlerBlock: @escaping GestureRecognizerHandlerBlock<UILongPressGestureRecognizer>) {
        super.init(target: nil, action: nil)
        
        // Add target
        
        addTarget(self, action: #selector(TapGestureRecognizer.runHandlerBlock))
        
        // Initialize handler block
        
        _handlerBlock = handlerBlock
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Variables & properties
    
    fileprivate var _handlerBlock: GestureRecognizerHandlerBlock<UILongPressGestureRecognizer>!
    
    fileprivate var handlerBlock: GestureRecognizerHandlerBlock<UILongPressGestureRecognizer> {
        get {
            return _handlerBlock
        }
    }
    
    // MARK: Public methods
    
    // MARK: Private methods
    
    internal func runHandlerBlock() {
        _handlerBlock?(self)
    }
    
    // MARK: Protocol methods
    
}
