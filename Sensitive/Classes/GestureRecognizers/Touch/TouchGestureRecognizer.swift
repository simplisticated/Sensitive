//
//  TouchRecognizer.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 27.03.17.
//  Copyright © 2017 Igor Matyushkin. All rights reserved.
//

import UIKit
import UIKit.UIGestureRecognizerSubclass

public class TouchGestureRecognizer: UIGestureRecognizer {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    public init(handlerBlock: @escaping GestureRecognizerHandlerBlock<TouchGestureRecognizer>) {
        super.init(target: nil, action: nil)
        
        // Add target
        
        addTarget(self, action: #selector(TouchGestureRecognizer.runHandlerBlock))
        
        // Initialize handler block
        
        _handlerBlock = handlerBlock
        
        // Initialize number of times handled value
        
        _numberOfTimesHandled = 0
        
        // Initialize number of touches required value
        
        _numberOfTouchesRequired = .any
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    fileprivate var _handlerBlock: GestureRecognizerHandlerBlock<TouchGestureRecognizer>!
    
    fileprivate var handlerBlock: GestureRecognizerHandlerBlock<TouchGestureRecognizer> {
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
    
    fileprivate var _numberOfTouchesRequired: TouchCount!
    
    public var numberOfTouchesRequired: TouchCount {
        get {
            return _numberOfTouchesRequired
        }
        set {
            // Update private variable
            
            _numberOfTouchesRequired = newValue
        }
    }
    
    // MARK: Public object methods
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent) {
        super.touchesBegan(touches, with: event)
        
        // Update state
        
        guard isNumberOfTouchesAcceptable(numberOfTouches: touches.count) else {
            state = .failed
            return
        }
        
        state = .began
    }
    
    public override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent) {
        super.touchesMoved(touches, with: event)
        
        // Check state is not failed
        
        guard state != .failed else {
            return
        }
        
        // Update state
        
        guard isNumberOfTouchesAcceptable(numberOfTouches: touches.count) else {
            state = .failed
            return
        }
        
        state = .changed
    }
    
    public override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent) {
        super.touchesEnded(touches, with: event)
        
        // Check state is not failed
        
        guard state != .failed else {
            return
        }
        
        // Update state
        
        state = .ended
    }
    
    public override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent) {
        super.touchesCancelled(touches, with: event)
        
        // Check state is not failed
        
        guard state != .failed else {
            return
        }
        
        // Update state
        
        state = .cancelled
    }
    
    // MARK: Private object methods
    
    internal func runHandlerBlock() {
        // Update number of times handled value
        
        _numberOfTimesHandled! += 1
        
        // Run handler block
        
        _handlerBlock?(self)
    }
    
    fileprivate func isNumberOfTouchesAcceptable(numberOfTouches: Int) -> Bool {
        switch numberOfTouchesRequired {
        case let .equalTo(count):
            return numberOfTouches == count
        case let .predicate(block):
            return block(numberOfTouches)
        case .any:
            return true
        }
    }
    
    // MARK: Protocol methods
    
}
