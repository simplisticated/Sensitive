//
//  Gesture.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 30.06.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import UIKit

public final class Gesture<Recognizer: UIGestureRecognizer>: NSObject, UIGestureRecognizerDelegate {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    public init(withRecognizerOfType recognizerType: Recognizer.Type) {
        super.init()
        
        self.recognizer = Recognizer(target: nil, action: nil)
        self.recognizer.addTarget(self, action: #selector(handleGesture))
        self.recognizer.delegate = self
        
        self.recognizer.addObserver(self, forKeyPath: "view", options: .new, context: nil)
        
        self.shouldRecognizeSimultaneouslyWithOtherGestures = false
    }
    
    // MARK: Deinitializer
    
    deinit {
        self.view = nil
        self.recognizer = nil
        self.handler = nil
        self.shouldRecognizeSimultaneouslyWithOtherGestures = nil
    }
    
    // MARK: Object variables & properties
    
    fileprivate var view: UIView?
    
    fileprivate var recognizer: Recognizer!
    
    fileprivate var handler: Handler?
    
    fileprivate var shouldRecognizeSimultaneouslyWithOtherGestures: Bool!
    
    // MARK: Public object methods
    
    public override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if let gestureRecognizer = object as? UIGestureRecognizer {
            if gestureRecognizer.view == nil {
                GestureRetainer.shared.free(self)
            }
        }
    }
    
    @discardableResult
    public func handle(with closure: @escaping Handler) -> Self {
        self.handler = closure
        return self
    }
    
    @discardableResult
    public func configure(with closure: Configurator) -> Self {
        closure(self.recognizer)
        return self
    }
    
    @discardableResult
    public func recognizeSimultaneously(_ simultaneous: Bool) -> Self {
        self.shouldRecognizeSimultaneouslyWithOtherGestures = simultaneous
        return self
    }
    
    @discardableResult
    public func remove() -> Self {
        if let currentView = self.view {
            self.remove(fromView: currentView)
        }
        
        return self
    }
    
    // MARK: Private object methods
    
    @objc
    internal func handleGesture() {
        self.handler?(self.recognizer)
    }
    
    @discardableResult
    internal func add(toView view: UIView) -> Self {
        view.addGestureRecognizer(self.recognizer)
        self.view = view
        GestureRetainer.shared.retain(self)
        return self
    }
    
    @discardableResult
    internal func remove(fromView view: UIView) -> Self {
        view.removeGestureRecognizer(self.recognizer)
        self.view = nil
        return self
    }
    
    // MARK: Protocol implementation
    
    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return self.shouldRecognizeSimultaneouslyWithOtherGestures
    }
    
}

public extension Gesture {
    
    public typealias Handler = (_ recognizer: Recognizer) -> Void
    
    public typealias Configurator = (_ recognizer: Recognizer) -> Void
    
}
