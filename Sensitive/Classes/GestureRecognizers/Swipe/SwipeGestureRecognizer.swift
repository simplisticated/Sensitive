//
//  SwipeGestureRecognizer.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 04.01.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

public class SwipeGestureRecognizer: UISwipeGestureRecognizer {
    
    // MARK: Class variables & properties
    
    // MARK: Class methods
    
    // MARK: Initializers
    
    public init(handlerBlock: @escaping GestureRecognizerHandlerBlock<UISwipeGestureRecognizer>) {
        super.init(target: nil, action: nil)
        
        // Add target
        
        addTarget(self, action: #selector(SwipeGestureRecognizer.runHandlerBlock))
        
        // Initialize handler block
        
        _handlerBlock = handlerBlock
        
        // Initialize number of times handled value
        
        _numberOfTimesHandled = 0
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Variables & properties
    
    fileprivate var _handlerBlock: GestureRecognizerHandlerBlock<UISwipeGestureRecognizer>!
    
    fileprivate var handlerBlock: GestureRecognizerHandlerBlock<UISwipeGestureRecognizer> {
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
