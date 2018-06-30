//
//  GestureRetainer.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 30.06.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import UIKit

internal class GestureRetainer {
    
    // MARK: Class variables & properties
    
    public static var shared = {
        return GestureRetainer()
    }()
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    fileprivate init() {
        self.gestures = []
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    fileprivate var gestures: [NSObject]!
    
    // MARK: Public object methods
    
    public func retain(_ gesture: NSObject) {
        self.gestures.append(gesture)
    }
    
    public func free(_ gesture: NSObject) {
        guard let gestureIndex = self.gestures.index(of: gesture) else {
            return
        }
        
        self.gestures.remove(at: gestureIndex)
    }
    
    // MARK: Private object methods
    
    // MARK: Protocol implementation
    
}
