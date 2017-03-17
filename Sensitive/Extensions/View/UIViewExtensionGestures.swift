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
    public func onTap(when handlerReuseCount: GestureHandlerReuseCount = .always, handle: @escaping GestureRecognizerHandlerBlock<UITapGestureRecognizer>, configure: GestureRecognizerConfigurationBlock<UITapGestureRecognizer>?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        var handlerBlockForTapGestureRecognizer: GestureRecognizerHandlerBlock<UITapGestureRecognizer>!
        
        switch handlerReuseCount {
        case .once:
            handlerBlockForTapGestureRecognizer = { (tapGestureRecognizer) in
                handle(tapGestureRecognizer)
                self.removeGestureRecognizer(tapGestureRecognizer)
            }
            break
        case .always:
            handlerBlockForTapGestureRecognizer = { (tapGestureRecognizer) in
                handle(tapGestureRecognizer)
            }
            break
        }
        
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
    public func onLongPress(when handlerReuseCount: GestureHandlerReuseCount = .always, handle: @escaping GestureRecognizerHandlerBlock<UILongPressGestureRecognizer>, configure: GestureRecognizerConfigurationBlock<UILongPressGestureRecognizer>?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        var handlerBlockForLongPressGestureRecognizer: GestureRecognizerHandlerBlock<UILongPressGestureRecognizer>!
        
        switch handlerReuseCount {
        case .once:
            handlerBlockForLongPressGestureRecognizer = { (longPressGestureRecognizer) in
                handle(longPressGestureRecognizer)
                self.removeGestureRecognizer(longPressGestureRecognizer)
            }
            break
        case .always:
            handlerBlockForLongPressGestureRecognizer = { (longPressGestureRecognizer) in
                handle(longPressGestureRecognizer)
            }
            break
        }
        
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
    public func onPan(when handlerReuseCount: GestureHandlerReuseCount = .always, handle: @escaping GestureRecognizerHandlerBlock<UIPanGestureRecognizer>, configure: GestureRecognizerConfigurationBlock<UIPanGestureRecognizer>?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        var handlerBlockForPanGestureRecognizer: GestureRecognizerHandlerBlock<UIPanGestureRecognizer>!
        
        switch handlerReuseCount {
        case .once:
            handlerBlockForPanGestureRecognizer = { (panGestureRecognizer) in
                handle(panGestureRecognizer)
                self.removeGestureRecognizer(panGestureRecognizer)
            }
            break
        case .always:
            handlerBlockForPanGestureRecognizer = { (panGestureRecognizer) in
                handle(panGestureRecognizer)
            }
            break
        }
        
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
    public func onPinch(when handlerReuseCount: GestureHandlerReuseCount = .always, handle: @escaping GestureRecognizerHandlerBlock<UIPinchGestureRecognizer>, configure: GestureRecognizerConfigurationBlock<UIPinchGestureRecognizer>?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        var handlerBlockForPinchGestureRecognizer: GestureRecognizerHandlerBlock<UIPinchGestureRecognizer>!
        
        switch handlerReuseCount {
        case .once:
            handlerBlockForPinchGestureRecognizer = { (pinchGestureRecognizer) in
                handle(pinchGestureRecognizer)
                self.removeGestureRecognizer(pinchGestureRecognizer)
            }
            break
        case .always:
            handlerBlockForPinchGestureRecognizer = { (pinchGestureRecognizer) in
                handle(pinchGestureRecognizer)
            }
            break
        }
        
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
    public func onRotation(when handlerReuseCount: GestureHandlerReuseCount = .always, handle: @escaping GestureRecognizerHandlerBlock<UIRotationGestureRecognizer>, configure: GestureRecognizerConfigurationBlock<UIRotationGestureRecognizer>?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        var handlerBlockForRotationGestureRecognizer: GestureRecognizerHandlerBlock<UIRotationGestureRecognizer>!
        
        switch handlerReuseCount {
        case .once:
            handlerBlockForRotationGestureRecognizer = { (rotationGestureRecognizer) in
                handle(rotationGestureRecognizer)
                self.removeGestureRecognizer(rotationGestureRecognizer)
            }
            break
        case .always:
            handlerBlockForRotationGestureRecognizer = { (rotationGestureRecognizer) in
                handle(rotationGestureRecognizer)
            }
            break
        }
        
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
    public func onSwipe(when handlerReuseCount: GestureHandlerReuseCount = .always, handle: @escaping GestureRecognizerHandlerBlock<UISwipeGestureRecognizer>, configure: GestureRecognizerHandlerBlock<UISwipeGestureRecognizer>?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        var handlerBlockForSwipeGestureRecognizer: GestureRecognizerHandlerBlock<UISwipeGestureRecognizer>!
        
        switch handlerReuseCount {
        case .once:
            handlerBlockForSwipeGestureRecognizer = { (swipeGestureRecognizer) in
                handle(swipeGestureRecognizer)
                self.removeGestureRecognizer(swipeGestureRecognizer)
            }
            break
        case .always:
            handlerBlockForSwipeGestureRecognizer = { (swipeGestureRecognizer) in
                handle(swipeGestureRecognizer)
            }
            break
        }
        
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
        - to: Swipe direction.
        - when: Represents how many times gesture should be handled.
        - handle: Called when `UISwipeGestureRecognizer` instance changes its state.
        - configure: Allows to configure `UISwipeGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
    
    - returns:
        Reference to receiver for support of chain calls.
    */
    @discardableResult
    public func onSwipe(to direction: SwipeDirection, when handlerReuseCount: GestureHandlerReuseCount = .always, handle: @escaping GestureRecognizerHandlerBlock<UISwipeGestureRecognizer>, configure: GestureRecognizerHandlerBlock<UISwipeGestureRecognizer>?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        var handlerBlockForSwipeGestureRecognizer: GestureRecognizerHandlerBlock<UISwipeGestureRecognizer>!
        
        switch handlerReuseCount {
        case .once:
            handlerBlockForSwipeGestureRecognizer = { (swipeGestureRecognizer) in
                handle(swipeGestureRecognizer)
                self.removeGestureRecognizer(swipeGestureRecognizer)
            }
            break
        case .always:
            handlerBlockForSwipeGestureRecognizer = { (swipeGestureRecognizer) in
                handle(swipeGestureRecognizer)
            }
            break
        }
        
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
    public func onScreenEdgePan(when handlerReuseCount: GestureHandlerReuseCount = .always, handle: @escaping GestureRecognizerHandlerBlock<UIScreenEdgePanGestureRecognizer>, configure: GestureRecognizerConfigurationBlock<UIScreenEdgePanGestureRecognizer>?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        var handlerBlockForScreenEdgePanGestureRecognizer: GestureRecognizerHandlerBlock<UIScreenEdgePanGestureRecognizer>!
        
        switch handlerReuseCount {
        case .once:
            handlerBlockForScreenEdgePanGestureRecognizer = { (screenEdgePanGestureRecognizer) in
                handle(screenEdgePanGestureRecognizer)
                self.removeGestureRecognizer(screenEdgePanGestureRecognizer)
            }
            break
        case .always:
            handlerBlockForScreenEdgePanGestureRecognizer = { (screenEdgePanGestureRecognizer) in
                handle(screenEdgePanGestureRecognizer)
            }
            break
        }
        
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
    
    // MARK: Private object methods
    
}
