//
//  ArrayExtensionViews.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 17.03.17.
//  Copyright © 2017 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

public extension Array where Element: UIView {
    
    // MARK: Public static methods
    
    // MARK: Private static methods
    
    // MARK: Public object methods
    
    /**
    Adds `UITapGestureRecognizer` instance to each view in array.
    
    - parameters:
        - handle: Called when `UITapGestureRecognizer` instance changes its state.
        - configure: Allows to configure `UITapGestureRecognizer` instance.
            This method is called for each gesture recognizer added to view in array.
            It's recommended to change settings of gesture recognizer inside of this block.
    
    - returns:
        Reference to receiver for support of chain calls.
    */
    @discardableResult
    public func onTap(handle: @escaping GestureRecognizerHandlerBlock<UITapGestureRecognizer>, configure: GestureRecognizerConfigurationBlock<UITapGestureRecognizer>?) -> Array {
        /*
         * Add gesture recognizer to each view in array.
         */
        
        for view in self {
            view.onTap(when: .always, handle: { (gestureRecognizer) in
                handle(gestureRecognizer)
            }, configure: { (gestureRecognizer) in
                configure?(gestureRecognizer)
            })
        }
        
        /*
         * Return result.
         */
        
        return self
    }
    
    /**
    Adds `UILongPressGestureRecognizer` instance to each view in array.
    
    - parameters:
        - handle: Called when `UILongPressGestureRecognizer` instance changes its state.
        - configure: Allows to configure `UILongPressGestureRecognizer` instance.
            This method is called for each gesture recognizer added to view in array.
            It's recommended to change settings of gesture recognizer inside of this block.
    
    - returns:
        Reference to receiver for support of chain calls.
    */
    @discardableResult
    public func onLongPress(handle: @escaping GestureRecognizerHandlerBlock<UILongPressGestureRecognizer>, configure: GestureRecognizerConfigurationBlock<UILongPressGestureRecognizer>?) -> Array {
        /*
         * Add gesture recognizer to each view in array.
         */
        
        for view in self {
            view.onLongPress(when: .always, handle: { (gestureRecognizer) in
                handle(gestureRecognizer)
            }, configure: { (gestureRecognizer) in
                configure?(gestureRecognizer)
            })
        }
        
        /*
         * Return result.
         */
        
        return self
    }
    
    /**
    Adds `UIPanGestureRecognizer` instance to each view in array.
    
    - parameters:
        - handle: Called when `UIPanGestureRecognizer` instance changes its state.
        - configure: Allows to configure `UIPanGestureRecognizer` instance.
            This method is called for each gesture recognizer added to view in array.
            It's recommended to change settings of gesture recognizer inside of this block.
    
    - returns:
        Reference to receiver for support of chain calls.
    */
    @discardableResult
    public func onPan(handle: @escaping GestureRecognizerHandlerBlock<UIPanGestureRecognizer>, configure: GestureRecognizerConfigurationBlock<UIPanGestureRecognizer>?) -> Array {
        /*
         * Add gesture recognizer to each view in array.
         */
        
        for view in self {
            view.onPan(when: .always, handle: { (gestureRecognizer) in
                handle(gestureRecognizer)
            }, configure: { (gestureRecognizer) in
                configure?(gestureRecognizer)
            })
        }
        
        /*
         * Return result.
         */
        
        return self
    }
    
    /**
    Adds `UIPinchGestureRecognizer` instance to each view in array.
    
    - parameters:
        - handle: Called when `UIPinchGestureRecognizer` instance changes its state.
        - configure: Allows to configure `UIPinchGestureRecognizer` instance.
            This method is called for each gesture recognizer added to view in array.
            It's recommended to change settings of gesture recognizer inside of this block.
    
    - returns:
        Reference to receiver for support of chain calls.
    */
    @discardableResult
    public func onPinch(handle: @escaping GestureRecognizerHandlerBlock<UIPinchGestureRecognizer>, configure: GestureRecognizerConfigurationBlock<UIPinchGestureRecognizer>?) -> Array {
        /*
         * Add gesture recognizer to each view in array.
         */
        
        for view in self {
            view.onPinch(when: .always, handle: { (gestureRecognizer) in
                handle(gestureRecognizer)
            }, configure: { (gestureRecognizer) in
                configure?(gestureRecognizer)
            })
        }
        
        /*
         * Return result.
         */
        
        return self
    }
    
    /**
    Adds `UIRotationGestureRecognizer` instance to each view in array.
    
    - parameters:
        - handle: Called when `UIRotationGestureRecognizer` instance changes its state.
        - configure: Allows to configure `UIRotationGestureRecognizer` instance.
            This method is called for each gesture recognizer added to view in array.
            It's recommended to change settings of gesture recognizer inside of this block.
    
    - returns:
        Reference to receiver for support of chain calls.
    */
    @discardableResult
    public func onRotation(handle: @escaping GestureRecognizerHandlerBlock<UIRotationGestureRecognizer>, configure: GestureRecognizerConfigurationBlock<UIRotationGestureRecognizer>?) -> Array {
        /*
         * Add gesture recognizer to each view in array.
         */
        
        for view in self {
            view.onRotation(when: .always, handle: { (gestureRecognizer) in
                handle(gestureRecognizer)
            }, configure: { (gestureRecognizer) in
                configure?(gestureRecognizer)
            })
        }
        
        /*
         * Return result.
         */
        
        return self
    }
    
    /**
    Adds `UISwipeGestureRecognizer` instance to each view in array.
    
    - parameters:
        - handle: Called when `UISwipeGestureRecognizer` instance changes its state.
        - configure: Allows to configure `UISwipeGestureRecognizer` instance.
            This method is called for each gesture recognizer added to view in array.
            It's recommended to change settings of gesture recognizer inside of this block.
    
    - returns:
        Reference to receiver for support of chain calls.
    */
    @discardableResult
    public func onSwipe(handle: @escaping GestureRecognizerHandlerBlock<UISwipeGestureRecognizer>, configure: GestureRecognizerConfigurationBlock<UISwipeGestureRecognizer>?) -> Array {
        /*
         * Add gesture recognizer to each view in array.
         */
        
        for view in self {
            view.onSwipe(when: .always, handle: { (gestureRecognizer) in
                handle(gestureRecognizer)
            }, configure: { (gestureRecognizer) in
                configure?(gestureRecognizer)
            })
        }
        
        /*
         * Return result.
         */
        
        return self
    }
    
    /**
    Adds `UIScreenEdgePanGestureRecognizer` instance to each view in array.
    
    - parameters:
        - handle: Called when `UIScreenEdgePanGestureRecognizer` instance changes its state.
        - configure: Allows to configure `UIScreenEdgePanGestureRecognizer` instance.
            This method is called for each gesture recognizer added to view in array.
            It's recommended to change settings of gesture recognizer inside of this block.
    
    - returns:
        Reference to receiver for support of chain calls.
    */
    @discardableResult
    public func onScreenEdgePan(handle: @escaping GestureRecognizerHandlerBlock<UIScreenEdgePanGestureRecognizer>, configure: GestureRecognizerConfigurationBlock<UIScreenEdgePanGestureRecognizer>?) -> Array {
        /*
         * Add gesture recognizer to each view in array.
         */
        
        for view in self {
            view.onScreenEdgePan(when: .always, handle: { (gestureRecognizer) in
                handle(gestureRecognizer)
            }, configure: { (gestureRecognizer) in
                configure?(gestureRecognizer)
            })
        }
        
        /*
         * Return result.
         */
        
        return self
    }
    
    // MARK: Private object methods
    
}
