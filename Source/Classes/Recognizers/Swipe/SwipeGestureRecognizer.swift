//
//  SwipeGestureRecognizer.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 04.01.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

public class SwipeGestureRecognizer: UISwipeGestureRecognizer, UIGestureRecognizerDelegate {
    
    // MARK: Class variables & properties
    
    // MARK: Class methods
    
    // MARK: Initializers
    
    public init(handler: @escaping GestureRecognizerHandler<UISwipeGestureRecognizer>) {
        super.init(target: nil, action: nil)
        self.handler = handler
        self.recognizeSimultaneouslyWithOtherGestures = true
        self.addTarget(self, action: #selector(runHandler))
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Variables & properties
    
    fileprivate var handler: GestureRecognizerHandler<UISwipeGestureRecognizer>?
    
    public var recognizeSimultaneouslyWithOtherGestures: Bool {
        get {
            return self.delegate === self
        }
        set {
            self.delegate = newValue ? self : nil
        }
    }
    
    // MARK: Public methods
    
    // MARK: Private methods
    
    @objc
    internal func runHandler() {
        self.handler?(self)
    }
    
    // MARK: Protocol methods
    
    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
    
}
