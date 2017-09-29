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
        
        addTarget(self, action: #selector(LongPressGestureRecognizer.runHandlerBlock))
        
        // Initialize handler block
        
        _handlerBlock = handlerBlock
        
        // Initialize number of times handled value
        
        _numberOfTimesHandled = 0
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
    
    fileprivate var _numberOfTimesHandled: Int!
    
    internal var numberOfTimesHandled: Int {
        get {
            return _numberOfTimesHandled
        }
    }
    
    // MARK: Public methods
    
    // MARK: Private methods
    
    @objc
    internal func runHandlerBlock() {
        // Update number of times handled value
        
        _numberOfTimesHandled! += 1
        
        // Run handler block
        
        _handlerBlock?(self)
    }
    
    // MARK: Protocol methods
    
}
