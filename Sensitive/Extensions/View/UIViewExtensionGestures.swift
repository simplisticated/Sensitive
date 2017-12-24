//
//  UIViewExtensionGestures.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 10.11.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    
    // MARK: Public static methods
    
    // MARK: Private static methods
    
    // MARK: Public object methods
    
    /**
    Adds `UITapGestureRecognizer` instance to view.
    
    - parameters:
        - when: Represents how many times gesture should be handled.
        - handle: Called when `UITapGestureRecognizer` instance changes its state.
        - configure: Allows to configure `UITapGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
    
    - returns:
        Reference to receiver for support of chain calls.
    */
    @discardableResult
    public func onTap(when handlerReuseCount: GestureHandlerReuseCount, handle: @escaping GestureRecognizerHandlerBlock<UITapGestureRecognizer>, configure: GestureRecognizerConfigurationBlock<UITapGestureRecognizer>?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForTapGestureRecognizer = self.stv_applyReuseCount(handlerReuseCount, toHandlerBlock: handle)
        
        /*
         * Create gesture recognizer instance.
         */
        
        let tapGestureRecognizer = TapGestureRecognizer(handlerBlock: handlerBlockForTapGestureRecognizer)
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(tapGestureRecognizer)
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configure?(tapGestureRecognizer)
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UITapGestureRecognizer` instance to view.
    
    - parameters:
        - handle: Called when `UITapGestureRecognizer` instance changes its state.
    
    - returns:
        Reference to receiver for support of chain calls.
    */
    @discardableResult
    public func onTap(handle: @escaping GestureRecognizerHandlerBlock<UITapGestureRecognizer>) -> Self {
        return onTap(when: .always, handle: handle, configure: nil)
    }
    
    /**
    Adds `UILongPressGestureRecognizer` instance to view.
    
    - parameters:
        - when: Represents how many times gesture should be handled.
        - handle: Called when `UILongPressGestureRecognizer` instance changes its state.
        - configure: Allows to configure `UILongPressGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
    
    - returns:
        Reference to receiver for support of chain calls.
    */
    @discardableResult
    public func onLongPress(when handlerReuseCount: GestureHandlerReuseCount, handle: @escaping GestureRecognizerHandlerBlock<UILongPressGestureRecognizer>, configure: GestureRecognizerConfigurationBlock<UILongPressGestureRecognizer>?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForLongPressGestureRecognizer = self.stv_applyReuseCount(handlerReuseCount, toHandlerBlock: handle)
        
        /*
         * Create gesture recognizer instance.
         */
        
        let longPressGestureRecognizer = LongPressGestureRecognizer(handlerBlock: handlerBlockForLongPressGestureRecognizer)
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(longPressGestureRecognizer)
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configure?(longPressGestureRecognizer)
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UITapGestureRecognizer` instance to view.
    
    - parameters:
        - handle: Called when `UILongPressGestureRecognizer` instance changes its state.
    
    - returns:
        Reference to receiver for support of chain calls.
    */
    @discardableResult
    public func onLongPress(handle: @escaping GestureRecognizerHandlerBlock<UILongPressGestureRecognizer>) -> Self {
        return onLongPress(when: .always, handle: handle, configure: nil)
    }
    
    /**
    Adds `UIPanGestureRecognizer` instance to view.
    
    - parameters:
        - when: Represents how many times gesture should be handled.
        - handle: Called when `UIPanGestureRecognizer` instance changes its state.
        - configure: Allows to configure `UIPanGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
    
    - returns:
        Reference to receiver for support of chain calls.
    */
    @discardableResult
    public func onPan(when handlerReuseCount: GestureHandlerReuseCount, handle: @escaping GestureRecognizerHandlerBlock<UIPanGestureRecognizer>, configure: GestureRecognizerConfigurationBlock<UIPanGestureRecognizer>?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForPanGestureRecognizer = self.stv_applyReuseCount(handlerReuseCount, toHandlerBlock: handle)
        
        /*
         * Create gesture recognizer instance.
         */
        
        let panGestureRecognizer = PanGestureRecognizer(handlerBlock: handlerBlockForPanGestureRecognizer)
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(panGestureRecognizer)
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configure?(panGestureRecognizer)
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UIPanGestureRecognizer` instance to view.
    
    - parameters:
        - handle: Called when `UIPanGestureRecognizer` instance changes its state.
    
    - returns:
        Reference to receiver for support of chain calls.
    */
    @discardableResult
    public func onPan(handle: @escaping GestureRecognizerHandlerBlock<UIPanGestureRecognizer>) -> Self {
        return onPan(when: .always, handle: handle, configure: nil)
    }
    
    /**
    Adds `UIPinchGestureRecognizer` instance to view.
    
    - parameters:
        - when: Represents how many times gesture should be handled.
        - handle: Called when `UIPinchGestureRecognizer` instance changes its state.
        - configure: Allows to configure `UIPinchGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
    
    - returns:
        Reference to receiver for support of chain calls.
    */
    @discardableResult
    public func onPinch(when handlerReuseCount: GestureHandlerReuseCount, handle: @escaping GestureRecognizerHandlerBlock<UIPinchGestureRecognizer>, configure: GestureRecognizerConfigurationBlock<UIPinchGestureRecognizer>?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForPinchGestureRecognizer = self.stv_applyReuseCount(handlerReuseCount, toHandlerBlock: handle)
        
        /*
         * Create gesture recognizer instance.
         */
        
        let pinchGestureRecognizer = PinchGestureRecognizer(handlerBlock: handlerBlockForPinchGestureRecognizer)
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(pinchGestureRecognizer)
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configure?(pinchGestureRecognizer)
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UIPinchGestureRecognizer` instance to view.
    
    - parameters:
        - handle: Called when `UIPinchGestureRecognizer` instance changes its state.
    
    - returns:
        Reference to receiver for support of chain calls.
    */
    @discardableResult
    public func onPinch(handle: @escaping GestureRecognizerHandlerBlock<UIPinchGestureRecognizer>) -> Self {
        return onPinch(when: .always, handle: handle, configure: nil)
    }
    
    /**
    Adds `UIRotationGestureRecognizer` instance to view.
    
    - parameters:
        - when: Represents how many times gesture should be handled.
        - handle: Called when `UIRotationGestureRecognizer` instance changes its state.
        - configure: Allows to configure `UIRotationGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
    
    - returns:
        Reference to receiver for support of chain calls.
    */
    @discardableResult
    public func onRotation(when handlerReuseCount: GestureHandlerReuseCount, handle: @escaping GestureRecognizerHandlerBlock<UIRotationGestureRecognizer>, configure: GestureRecognizerConfigurationBlock<UIRotationGestureRecognizer>?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForRotationGestureRecognizer = self.stv_applyReuseCount(handlerReuseCount, toHandlerBlock: handle)
        
        /*
         * Create gesture recognizer instance.
         */
        
        let rotationGestureRecognizer = RotationGestureRecognizer(handlerBlock: handlerBlockForRotationGestureRecognizer)
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(rotationGestureRecognizer)
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configure?(rotationGestureRecognizer)
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UIRotationGestureRecognizer` instance to view.
    
    - parameters:
        - handle: Called when `UIRotationGestureRecognizer` instance changes its state.
    
    - returns:
        Reference to receiver for support of chain calls.
    */
    @discardableResult
    public func onRotation(handle: @escaping GestureRecognizerHandlerBlock<UIRotationGestureRecognizer>) -> Self {
        return onRotation(when: .always, handle: handle, configure: nil)
    }
    
    /**
    Adds `UISwipeGestureRecognizer` instance to view.
    
    - parameters:
        - when: Represents how many times gesture should be handled.
        - handle: Called when `UISwipeGestureRecognizer` instance changes its state.
        - configure: Allows to configure `UISwipeGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
    
    - returns:
        Reference to receiver for support of chain calls.
    */
    @discardableResult
    public func onSwipe(when handlerReuseCount: GestureHandlerReuseCount, handle: @escaping GestureRecognizerHandlerBlock<UISwipeGestureRecognizer>, configure: GestureRecognizerHandlerBlock<UISwipeGestureRecognizer>?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForSwipeGestureRecognizer = self.stv_applyReuseCount(handlerReuseCount, toHandlerBlock: handle)
        
        /*
         * Create gesture recognizer instance.
         */
        
        let swipeGestureRecognizer = SwipeGestureRecognizer(handlerBlock: handlerBlockForSwipeGestureRecognizer)
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(swipeGestureRecognizer)
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configure?(swipeGestureRecognizer)
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UISwipeGestureRecognizer` instance to view.
    
    - parameters:
        - handle: Called when `UISwipeGestureRecognizer` instance changes its state.
    
    - returns:
        Reference to receiver for support of chain calls.
    */
    @discardableResult
    public func onSwipe(handle: @escaping GestureRecognizerHandlerBlock<UISwipeGestureRecognizer>) -> Self {
        return onSwipe(when: .always, handle: handle, configure: nil)
    }
    
    /**
    Adds `UISwipeGestureRecognizer` instance to view.
    
    - parameters:
        - to: Swipe direction.
        - when: Represents how many times gesture should be handled.
        - handle: Called when `UISwipeGestureRecognizer` instance changes its state.
        - configure: Allows to configure `UISwipeGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
    
    - returns:
        Reference to receiver for support of chain calls.
    */
    @discardableResult
    public func onSwipe(to direction: SwipeDirection, when handlerReuseCount: GestureHandlerReuseCount, handle: @escaping GestureRecognizerHandlerBlock<UISwipeGestureRecognizer>, configure: GestureRecognizerHandlerBlock<UISwipeGestureRecognizer>?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForSwipeGestureRecognizer = self.stv_applyReuseCount(handlerReuseCount, toHandlerBlock: handle)
        
        /*
         * Create gesture recognizer instance.
         */
        
        let swipeGestureRecognizer = SwipeGestureRecognizer(handlerBlock: handlerBlockForSwipeGestureRecognizer)
        
        
        /*
         * Update swipe gesture recognizer's direction.
         */
        
        swipeGestureRecognizer.direction = direction.swipeGestureRecognizerDirection
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(swipeGestureRecognizer)
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configure?(swipeGestureRecognizer)
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UISwipeGestureRecognizer` instance to view.
    
    - parameters:
        - to: Swipe direction.
        - handle: Called when `UISwipeGestureRecognizer` instance changes its state.
    
    - returns:
        Reference to receiver for support of chain calls.
    */
    @discardableResult
    public func onSwipe(to direction: SwipeDirection, handle: @escaping GestureRecognizerHandlerBlock<UISwipeGestureRecognizer>) -> Self {
        return onSwipe(to: direction, when: .always, handle: handle, configure: nil)
    }
    
    /**
    Adds `UIScreenEdgePanGestureRecognizer` instance to view.
    
    - parameters:
        - when: Represents how many times gesture should be handled.
        - handle: Called when `UIScreenEdgePanGestureRecognizer` instance changes its state.
        - configure: Allows to configure `UIScreenEdgePanGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
    
    - returns:
        Reference to receiver for support of chain calls.
    */
    @discardableResult
    public func onScreenEdgePan(when handlerReuseCount: GestureHandlerReuseCount, handle: @escaping GestureRecognizerHandlerBlock<UIScreenEdgePanGestureRecognizer>, configure: GestureRecognizerConfigurationBlock<UIScreenEdgePanGestureRecognizer>?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForScreenEdgePanGestureRecognizer = self.stv_applyReuseCount(handlerReuseCount, toHandlerBlock: handle)
        
        /*
         * Create gesture recognizer instance.
         */
        
        let screenEdgePanGestureRecognizer = ScreenEdgePanGestureRecognizer(handlerBlock: handlerBlockForScreenEdgePanGestureRecognizer)
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(screenEdgePanGestureRecognizer)
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configure?(screenEdgePanGestureRecognizer)
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UIScreenEdgePanGestureRecognizer` instance to view.
    
    - parameters:
        - handle: Called when `UIScreenEdgePanGestureRecognizer` instance changes its state.
    
    - returns:
        Reference to receiver for support of chain calls.
    */
    @discardableResult
    public func onScreenEdgePan(handle: @escaping GestureRecognizerHandlerBlock<UIScreenEdgePanGestureRecognizer>) -> Self {
        return onScreenEdgePan(when: .always, handle: handle, configure: nil)
    }
    
    /**
    Adds `TouchGestureRecognizer` instance to view.
    
    - parameters:
        - when: Represents how many times gesture should be handled.
        - handle: Called when `TouchGestureRecognizer` instance changes its state.
        - configure: Allows to configure `TouchRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
    
    - returns:
        Reference to receiver for support of chain calls.
    */
    @discardableResult
    public func onTouch(when handlerReuseCount: GestureHandlerReuseCount, handle: @escaping GestureRecognizerHandlerBlock<TouchGestureRecognizer>, configure: GestureRecognizerConfigurationBlock<TouchGestureRecognizer>?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForTouchRecognizer = self.stv_applyReuseCount(handlerReuseCount, toHandlerBlock: handle)
        
        /*
         * Create gesture recognizer instance.
         */
        
        let screenEdgePanGestureRecognizer = TouchGestureRecognizer(handlerBlock: handlerBlockForTouchRecognizer)
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(screenEdgePanGestureRecognizer)
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configure?(screenEdgePanGestureRecognizer)
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `TouchGestureRecognizer` instance to view.
    
    - parameters:
        - handle: Called when `TouchGestureRecognizer` instance changes its state.
    
    - returns:
        Reference to receiver for support of chain calls.
    */
    @discardableResult
    public func onTouch(handle: @escaping GestureRecognizerHandlerBlock<TouchGestureRecognizer>) -> Self {
        return onTouch(when: .always, handle: handle, configure: nil)
    }
    
    // MARK: Private object methods
    
    fileprivate func stv_numberOfTimesGestureRecognizerIsHandled(gestureRecognizer: UIGestureRecognizer) -> Int? {
        switch gestureRecognizer {
        case is TapGestureRecognizer:
            return (gestureRecognizer as! TapGestureRecognizer).numberOfTimesHandled
        case is LongPressGestureRecognizer:
            return (gestureRecognizer as! LongPressGestureRecognizer).numberOfTimesHandled
        case is PanGestureRecognizer:
            return (gestureRecognizer as! PanGestureRecognizer).numberOfTimesHandled
        case is PinchGestureRecognizer:
            return (gestureRecognizer as! PinchGestureRecognizer).numberOfTimesHandled
        case is RotationGestureRecognizer:
            return (gestureRecognizer as! RotationGestureRecognizer).numberOfTimesHandled
        case is SwipeGestureRecognizer:
            return (gestureRecognizer as! SwipeGestureRecognizer).numberOfTimesHandled
        case is ScreenEdgePanGestureRecognizer:
            return (gestureRecognizer as! ScreenEdgePanGestureRecognizer).numberOfTimesHandled
        default:
            return nil
        }
    }
    
    fileprivate func stv_applyReuseCount<GestureRecognizerType: UIGestureRecognizer>(_ reuseCount: GestureHandlerReuseCount, toHandlerBlock handlerBlock: @escaping GestureRecognizerHandlerBlock<GestureRecognizerType>) -> GestureRecognizerHandlerBlock<GestureRecognizerType> {
        switch reuseCount {
        case .once:
            return { (gestureRecognizer) in
                handlerBlock(gestureRecognizer)
                gestureRecognizer.view?.removeGestureRecognizer(gestureRecognizer)
            }
        case let .times(count):
            return { (gestureRecognizer) in
                handlerBlock(gestureRecognizer)
                
                let numberOfTimesGestureRecognizersIsHandled = self.stv_numberOfTimesGestureRecognizerIsHandled(gestureRecognizer: gestureRecognizer) ?? 0
                
                if numberOfTimesGestureRecognizersIsHandled == count {
                    gestureRecognizer.view?.removeGestureRecognizer(gestureRecognizer)
                }
            }
        case .always:
            return { (gestureRecognizer) in
                handlerBlock(gestureRecognizer)
            }
        }
    }
    
}
