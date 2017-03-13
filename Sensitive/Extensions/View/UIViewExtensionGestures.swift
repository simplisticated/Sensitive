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
        GestureManager instance for support of chain calls.
    */
    @discardableResult
    public func onTap(when handlerReuseCount: GestureHandlerReuseCount = .always, handle: @escaping SNTapGestureRecognizerHandlerBlock, configure: SNTapGestureRecognizerConfigurationBlock?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        var handlerBlockForTapGestureRecognizer: SNTapGestureRecognizerHandlerBlock!
        
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
        
        let tapGestureRecognizer = SNTapGestureRecognizer(handlerBlock: handlerBlockForTapGestureRecognizer)
        
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
    Adds `UITapGestureRecognizer` instance to receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    - parameters:
        - block: Called when `UITapGestureRecognizer` instance changes its state.
        - configureTapGestureRecognizer: Allows to configure UITapGestureRecognizer instance.
            It's recommended to change settings of gesture recognizer inside of this block.
     
            For example, you can save `UITapGestureRecognizer`'s reference somewhere to control it later.
            But it's not necessary since `block` (the first parameter) gives you a full control of the gesture.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onTap(when:_, handle:_, configure:_) instead.")
    @discardableResult
    public func onTap(_ block: @escaping SNTapGestureRecognizerHandlerBlock, configureTapGestureRecognizer: SNTapGestureRecognizerConfigurationBlock) -> UIView {
        /*
         * Create gesture recognizer instance.
         */
        
        let tapGestureRecognizer = SNTapGestureRecognizer(handlerBlock: block)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(tapGestureRecognizer)
        
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configureTapGestureRecognizer(tapGestureRecognizer)
        
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UITapGestureRecognizer` instance to receiver.
    Block will be called the first time only. After that, gesture recognizer will be removed from receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    **Note**: After first recognition, gesture recognizer will be removed from view.
    
    - parameters:
        - block: Called when `UITapGestureRecognizer` instance changes its state.
        - configureTapGestureRecognizer: Allows to configure UITapGestureRecognizer instance.
            It's recommended to change settings of gesture recognizer inside of this block.
    
            For example, you can save `UITapGestureRecognizer`'s reference somewhere to control it later.
            But it's not necessary since `block` (the first parameter) gives you a full control of the gesture.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onTap(when:_, handle:_, configure:_) instead.")
    public func onTapOnce(_ block: @escaping SNTapGestureRecognizerHandlerBlock, configureTapGestureRecognizer: SNTapGestureRecognizerConfigurationBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForTapGestureRecognizer: SNTapGestureRecognizerHandlerBlock = { (tapGestureRecognizer) in
            block(tapGestureRecognizer)
            self.removeGestureRecognizer(tapGestureRecognizer)
        }
        
        
        /*
         * Create gesture recognizer instance.
         */
        
        let tapGestureRecognizer = SNTapGestureRecognizer(handlerBlock: handlerBlockForTapGestureRecognizer)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(tapGestureRecognizer)
        
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configureTapGestureRecognizer(tapGestureRecognizer)
        
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UITapGestureRecognizer` instance to receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    - parameters:
        - block: Called when `UITapGestureRecognizer` instance changes its state.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onTap(when:_, handle:_, configure:_) instead.")
    public func onTap(_ block: @escaping SNTapGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Create gesture recognizer instance.
         */
        
        let tapGestureRecognizer = SNTapGestureRecognizer(handlerBlock: block)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(tapGestureRecognizer)
        
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UITapGestureRecognizer` instance to receiver.
    Block will be called the first time only. After that, gesture recognizer will be removed from receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    **Note**: After first recognition, gesture recognizer will be removed from view.
    
    - parameters:
        - block: Called when `UITapGestureRecognizer` instance changes its state.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onTap(when:_, handle:_, configure:_) instead.")
    public func onTapOnce(_ block: @escaping SNTapGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForTapGestureRecognizer: SNTapGestureRecognizerHandlerBlock = { (tapGestureRecognizer) in
            block(tapGestureRecognizer)
            self.removeGestureRecognizer(tapGestureRecognizer)
        }
        
        
        /*
         * Create gesture recognizer instance.
         */
        
        let tapGestureRecognizer = SNTapGestureRecognizer(handlerBlock: handlerBlockForTapGestureRecognizer)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(tapGestureRecognizer)
        
        
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
        GestureManager instance for support of chain calls.
    */
    @discardableResult
    public func onLongPress(when handlerReuseCount: GestureHandlerReuseCount = .always, handle: @escaping SNLongPressGestureRecognizerHandlerBlock, configure: SNLongPressGestureRecognizerConfigurationBlock?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        var handlerBlockForLongPressGestureRecognizer: SNLongPressGestureRecognizerHandlerBlock!
        
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
        
        let longPressGestureRecognizer = SNLongPressGestureRecognizer(handlerBlock: handlerBlockForLongPressGestureRecognizer)
        
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
    Adds `UILongPressGestureRecognizer` instance to receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    - parameters:
        - block: Called when `UILongPressGestureRecognizer` instance changes its state.
        - configureLongPressGestureRecognizer: Allows to configure `UILongPressGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
     
            For example, you can save `UILongPressGestureRecognizer`'s reference somewhere to control it later.
            But it's not necessary since `block` (the first parameter) gives you a full control of the gesture.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onLongPress(when:_, handle:_, configure:_) instead.")
    public func onLongPress(_ block: @escaping SNLongPressGestureRecognizerHandlerBlock, configureLongPressGestureRecognizer: SNLongPressGestureRecognizerConfigurationBlock) -> UIView {
        /*
         * Create gesture recognizer instance.
         */
        
        let longPressGestureRecognizer = SNLongPressGestureRecognizer(handlerBlock: block)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(longPressGestureRecognizer)
        
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configureLongPressGestureRecognizer(longPressGestureRecognizer)
        
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UILongPressGestureRecognizer` instance to receiver.
    Block will be called the first time only. After that, gesture recognizer will be removed from receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    **Note**: After first recognition, gesture recognizer will be removed from view.
    
    - parameters:
        - block: Called when `UILongPressGestureRecognizer` instance changes its state.
        - configureLongPressGestureRecognizer: Allows to configure `UILongPressGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
    
            For example, you can save `UILongPressGestureRecognizer`'s reference somewhere to control it later.
            But it's not necessary since `block` (the first parameter) gives you a full control of the gesture.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onLongPress(when:_, handle:_, configure:_) instead.")
    public func onLongPressOnce(_ block: @escaping SNLongPressGestureRecognizerHandlerBlock, configureLongPressGestureRecognizer: SNLongPressGestureRecognizerConfigurationBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForLongPressGestureRecognizer: SNLongPressGestureRecognizerHandlerBlock = { (longPressGestureRecognizer) in
            block(longPressGestureRecognizer)
            self.removeGestureRecognizer(longPressGestureRecognizer)
        }
        
        
        /*
         * Create gesture recognizer instance.
         */
        
        let longPressGestureRecognizer = SNLongPressGestureRecognizer(handlerBlock: handlerBlockForLongPressGestureRecognizer)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(longPressGestureRecognizer)
        
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configureLongPressGestureRecognizer(longPressGestureRecognizer)
        
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UILongPressGestureRecognizer` instance to receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    - parameters:
        - block: Called when `UILongPressGestureRecognizer` instance changes its state.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onLongPress(when:_, handle:_, configure:_) instead.")
    public func onLongPress(_ block: @escaping SNLongPressGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Create gesture recognizer instance.
         */
        
        let longPressGestureRecognizer = SNLongPressGestureRecognizer(handlerBlock: block)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(longPressGestureRecognizer)
        
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UILongPressGestureRecognizer` instance to receiver.
    Block will be called the first time only. After that, gesture recognizer will be removed from receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    **Note**: After first recognition, gesture recognizer will be removed from view.
    
    - parameters:
        - block: Called when `UILongPressGestureRecognizer` instance changes its state.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onLongPress(when:_, handle:_, configure:_) instead.")
    public func onLongPressOnce(_ block: @escaping SNLongPressGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForLongPressGestureRecognizer: SNLongPressGestureRecognizerHandlerBlock = { (longPressGestureRecognizer) in
            block(longPressGestureRecognizer)
            self.removeGestureRecognizer(longPressGestureRecognizer)
        }
        
        
        /*
         * Create gesture recognizer instance.
         */
        
        let longPressGestureRecognizer = SNLongPressGestureRecognizer(handlerBlock: handlerBlockForLongPressGestureRecognizer)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(longPressGestureRecognizer)
        
        
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
        GestureManager instance for support of chain calls.
    */
    @discardableResult
    public func onPan(when handlerReuseCount: GestureHandlerReuseCount = .always, handle: @escaping SNPanGestureRecognizerHandlerBlock, configure: SNPanGestureRecognizerConfigurationBlock?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        var handlerBlockForPanGestureRecognizer: SNPanGestureRecognizerHandlerBlock!
        
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
        
        let panGestureRecognizer = SNPanGestureRecognizer(handlerBlock: handlerBlockForPanGestureRecognizer)
        
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
    Adds `UIPanGestureRecognizer` instance to receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    - parameters:
        - block: Called when `UIPanGestureRecognizer` instance changes its state.
        - configurePanGestureRecognizer: Allows to configure `UIPanGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
     
            For example, you can save `UIPanGestureRecognizer`'s reference somewhere to control it later.
            But it's not necessary since `block` (the first parameter) gives you a full control of the gesture.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onPan(when:_, handle:_, configure:_) instead.")
    public func onPan(_ block: @escaping SNPanGestureRecognizerHandlerBlock, configurePanGestureRecognizer: SNPanGestureRecognizerConfigurationBlock) -> UIView {
        /*
         * Create gesture recognizer instance.
         */
        
        let panGestureRecognizer = SNPanGestureRecognizer(handlerBlock: block)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(panGestureRecognizer)
        
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configurePanGestureRecognizer(panGestureRecognizer)
        
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UIPanGestureRecognizer` instance to receiver.
    Block will be called the first time only. After that, gesture recognizer will be removed from receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    **Note**: After first recognition, gesture recognizer will be removed from view.
    
    - parameters:
        - block: Called when `UIPanGestureRecognizer` instance changes its state.
        - configurePanGestureRecognizer: Allows to configure `UIPanGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
     
            For example, you can save `UIPanGestureRecognizer`'s reference somewhere to control it later.
            But it's not necessary since `block` (the first parameter) gives you a full control of the gesture.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onPan(when:_, handle:_, configure:_) instead.")
    public func onPanOnce(_ block: @escaping SNPanGestureRecognizerHandlerBlock, configurePanGestureRecognizer: SNPanGestureRecognizerConfigurationBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForPanGestureRecognizer: SNPanGestureRecognizerHandlerBlock = { (panGestureRecognizer) in
            block(panGestureRecognizer)
            self.removeGestureRecognizer(panGestureRecognizer)
        }
        
        
        /*
         * Create gesture recognizer instance.
         */
        
        let panGestureRecognizer = SNPanGestureRecognizer(handlerBlock: handlerBlockForPanGestureRecognizer)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(panGestureRecognizer)
        
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configurePanGestureRecognizer(panGestureRecognizer)
        
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UIPanGestureRecognizer` instance to receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    - parameters:
        - block: Called when `UIPanGestureRecognizer` instance changes its state.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onPan(when:_, handle:_, configure:_) instead.")
    public func onPan(_ block: @escaping SNPanGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Create gesture recognizer instance.
         */
        
        let panGestureRecognizer = SNPanGestureRecognizer(handlerBlock: block)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(panGestureRecognizer)
        
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UIPanGestureRecognizer` instance to receiver.
    Block will be called the first time only. After that, gesture recognizer will be removed from receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    **Note**: After first recognition, gesture recognizer will be removed from view.
    
    - parameters:
        - block: Called when `UIPanGestureRecognizer` instance changes its state.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onPan(when:_, handle:_, configure:_) instead.")
    public func onPanOnce(_ block: @escaping SNPanGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForPanGestureRecognizer: SNPanGestureRecognizerHandlerBlock = { (panGestureRecognizer) in
            block(panGestureRecognizer)
            self.removeGestureRecognizer(panGestureRecognizer)
        }
        
        
        /*
         * Create gesture recognizer instance.
         */
        
        let panGestureRecognizer = SNPanGestureRecognizer(handlerBlock: handlerBlockForPanGestureRecognizer)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(panGestureRecognizer)
        
        
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
        GestureManager instance for support of chain calls.
    */
    @discardableResult
    public func onPinch(when handlerReuseCount: GestureHandlerReuseCount = .always, handle: @escaping SNPinchGestureRecognizerHandlerBlock, configure: SNPinchGestureRecognizerConfigurationBlock?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        var handlerBlockForPinchGestureRecognizer: SNPinchGestureRecognizerHandlerBlock!
        
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
        
        let pinchGestureRecognizer = SNPinchGestureRecognizer(handlerBlock: handlerBlockForPinchGestureRecognizer)
        
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
    Adds `UIPinchGestureRecognizer` instance to receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    - parameters:
        - block: Called when `UIPinchGestureRecognizer` instance changes its state.
        - configurePinchGestureRecognizer: Allows to configure `UIPinchGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
     
            For example, you can save `UIPinchGestureRecognizer`'s reference somewhere to control it later.
            But it's not necessary since `block` (the first parameter) gives you a full control of the gesture.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onPinch(when:_, handle:_, configure:_) instead.")
    public func onPinch(_ block: @escaping SNPinchGestureRecognizerHandlerBlock, configurePinchGestureRecognizer: SNPinchGestureRecognizerConfigurationBlock) -> UIView {
        /*
         * Create gesture recognizer instance.
         */
        
        let pinchGestureRecognizer = SNPinchGestureRecognizer(handlerBlock: block)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(pinchGestureRecognizer)
        
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configurePinchGestureRecognizer(pinchGestureRecognizer)
        
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UIPinchGestureRecognizer` instance to receiver.
    Block will be called the first time only. After that, gesture recognizer will be removed from receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    **Note**: After first recognition, gesture recognizer will be removed from view.
    
    - parameters:
        - block: Called when `UIPinchGestureRecognizer` instance changes its state.
        - configurePinchGestureRecognizer: Allows to configure `UIPinchGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
     
            For example, you can save `UIPinchGestureRecognizer`'s reference somewhere to control it later.
            But it's not necessary since `block` (the first parameter) gives you a full control of the gesture.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onPinch(when:_, handle:_, configure:_) instead.")
    public func onPinchOnce(_ block: @escaping SNPinchGestureRecognizerHandlerBlock, configurePinchGestureRecognizer: SNPinchGestureRecognizerConfigurationBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForPinchGestureRecognizer: SNPinchGestureRecognizerHandlerBlock = { (pinchGestureRecognizer) in
            block(pinchGestureRecognizer)
            self.removeGestureRecognizer(pinchGestureRecognizer)
        }
        
        
        /*
         * Create gesture recognizer instance.
         */
        
        let pinchGestureRecognizer = SNPinchGestureRecognizer(handlerBlock: handlerBlockForPinchGestureRecognizer)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(pinchGestureRecognizer)
        
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configurePinchGestureRecognizer(pinchGestureRecognizer)
        
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UIPinchGestureRecognizer` instance to receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    - parameters:
        - block: Called when `UIPinchGestureRecognizer` instance changes its state.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onPinch(when:_, handle:_, configure:_) instead.")
    public func onPinch(_ block: @escaping SNPinchGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Create gesture recognizer instance.
         */
        
        let pinchGestureRecognizer = SNPinchGestureRecognizer(handlerBlock: block)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(pinchGestureRecognizer)
        
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UIPinchGestureRecognizer` instance to receiver.
    Block will be called the first time only. After that, gesture recognizer will be removed from receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    **Note**: After first recognition, gesture recognizer will be removed from view.
    
    - parameters:
        - block: Called when `UIPinchGestureRecognizer` instance changes its state.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onPinch(when:_, handle:_, configure:_) instead.")
    public func onPinchOnce(_ block: @escaping SNPinchGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForPinchGestureRecognizer: SNPinchGestureRecognizerHandlerBlock = { (pinchGestureRecognizer) in
            block(pinchGestureRecognizer)
            self.removeGestureRecognizer(pinchGestureRecognizer)
        }
        
        
        /*
         * Create gesture recognizer instance.
         */
        
        let pinchGestureRecognizer = SNPinchGestureRecognizer(handlerBlock: handlerBlockForPinchGestureRecognizer)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(pinchGestureRecognizer)
        
        
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
        GestureManager instance for support of chain calls.
    */
    @discardableResult
    public func onRotation(when handlerReuseCount: GestureHandlerReuseCount = .always, handle: @escaping SNRotationGestureRecognizerHandlerBlock, configure: SNRotationGestureRecognizerConfigurationBlock?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        var handlerBlockForRotationGestureRecognizer: SNRotationGestureRecognizerHandlerBlock!
        
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
        
        let rotationGestureRecognizer = SNRotationGestureRecognizer(handlerBlock: handlerBlockForRotationGestureRecognizer)
        
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
    Adds `UIRotationGestureRecognizer` instance to receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    - parameters:
        - block: Called when `UIRotationGestureRecognizer` instance changes its state.
        - configureRotationGestureRecognizer: Allows to configure `UIRotationGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
     
            For example, you can save `UIRotationGestureRecognizer`'s reference somewhere to control it later.
            But it's not necessary since `block` (the first parameter) gives you a full control of the gesture.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onRotation(when:_, handle:_, configure:_) instead.")
    public func onRotation(_ block: @escaping SNRotationGestureRecognizerHandlerBlock, configureRotationGestureRecognizer: SNRotationGestureRecognizerConfigurationBlock) -> UIView {
        /*
         * Create gesture recognizer instance.
         */
        
        let rotationGestureRecognizer = SNRotationGestureRecognizer(handlerBlock: block)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(rotationGestureRecognizer)
        
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configureRotationGestureRecognizer(rotationGestureRecognizer)
        
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UIRotationGestureRecognizer` instance to receiver.
    Block will be called the first time only. After that, gesture recognizer will be removed from receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    **Note**: After first recognition, gesture recognizer will be removed from view.
    
    - parameters:
        - block: Called when `UIRotationGestureRecognizer` instance changes its state.
        - configureRotationGestureRecognizer: Allows to configure `UIRotationGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
     
            For example, you can save `UIRotationGestureRecognizer`'s reference somewhere to control it later.
            But it's not necessary since `block` (the first parameter) gives you a full control of the gesture.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onRotation(when:_, handle:_, configure:_) instead.")
    public func onRotationOnce(_ block: @escaping SNRotationGestureRecognizerHandlerBlock, configureRotationGestureRecognizer: SNRotationGestureRecognizerConfigurationBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForRotationGestureRecognizer: SNRotationGestureRecognizerHandlerBlock = { (rotationGestureRecognizer) in
            block(rotationGestureRecognizer)
            self.removeGestureRecognizer(rotationGestureRecognizer)
        }
        
        
        /*
         * Create gesture recognizer instance.
         */
        
        let rotationGestureRecognizer = SNRotationGestureRecognizer(handlerBlock: handlerBlockForRotationGestureRecognizer)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(rotationGestureRecognizer)
        
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configureRotationGestureRecognizer(rotationGestureRecognizer)
        
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UIRotationGestureRecognizer` instance to receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    - parameters:
        - block: Called when `UIRotationGestureRecognizer` instance changes its state.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onRotation(when:_, handle:_, configure:_) instead.")
    public func onRotation(_ block: @escaping SNRotationGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Create gesture recognizer instance.
         */
        
        let rotationGestureRecognizer = SNRotationGestureRecognizer(handlerBlock: block)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(rotationGestureRecognizer)
        
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UIRotationGestureRecognizer` instance to receiver.
    Block will be called the first time only. After that, gesture recognizer will be removed from receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    **Note**: After first recognition, gesture recognizer will be removed from view.
    
    - parameters:
        - block: Called when `UIRotationGestureRecognizer` instance changes its state.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onRotation(when:_, handle:_, configure:_) instead.")
    public func onRotationOnce(_ block: @escaping SNRotationGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForRotationGestureRecognizer: SNRotationGestureRecognizerHandlerBlock = { (rotationGestureRecognizer) in
            block(rotationGestureRecognizer)
            self.removeGestureRecognizer(rotationGestureRecognizer)
        }
        
        
        /*
         * Create gesture recognizer instance.
         */
        
        let rotationGestureRecognizer = SNRotationGestureRecognizer(handlerBlock: handlerBlockForRotationGestureRecognizer)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(rotationGestureRecognizer)
        
        
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
        GestureManager instance for support of chain calls.
    */
    @discardableResult
    public func onSwipe(when handlerReuseCount: GestureHandlerReuseCount = .always, handle: @escaping SNSwipeGestureRecognizerHandlerBlock, configure: SNSwipeGestureRecognizerConfigurationBlock?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        var handlerBlockForSwipeGestureRecognizer: SNSwipeGestureRecognizerHandlerBlock!
        
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
        
        let swipeGestureRecognizer = SNSwipeGestureRecognizer(handlerBlock: handlerBlockForSwipeGestureRecognizer)
        
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
    Adds `UISwipeGestureRecognizer` instance to receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    - parameters:
        - block: Called when `UISwipeGestureRecognizer` instance changes its state.
        - configureSwipeGestureRecognizer: Allows to configure `UISwipeGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
     
            For example, you can save `UISwipeGestureRecognizer`'s reference somewhere to control it later.
            But it's not necessary since `block` (the first parameter) gives you a full control of the gesture.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onSwipe(when:_, handle:_, configure:_) instead.")
    public func onSwipe(_ block: @escaping SNSwipeGestureRecognizerHandlerBlock, configureSwipeGestureRecognizer: SNSwipeGestureRecognizerConfigurationBlock) -> UIView {
        /*
         * Create gesture recognizer instance.
         */
        
        let swipeGestureRecognizer = SNSwipeGestureRecognizer(handlerBlock: block)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(swipeGestureRecognizer)
        
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configureSwipeGestureRecognizer(swipeGestureRecognizer)
        
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UISwipeGestureRecognizer` instance to receiver.
    Block will be called the first time only. After that, gesture recognizer will be removed from receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    **Note**: After first recognition, gesture recognizer will be removed from view.
    
    - parameters:
        - block: Called when `UISwipeGestureRecognizer` instance changes its state.
        - configureSwipeGestureRecognizer: Allows to configure `UISwipeGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
     
            For example, you can save `UISwipeGestureRecognizer`'s reference somewhere to control it later.
            But it's not necessary since `block` (the first parameter) gives you a full control of the gesture.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onSwipe(when:_, handle:_, configure:_) instead.")
    public func onSwipeOnce(_ block: @escaping SNSwipeGestureRecognizerHandlerBlock, configureSwipeGestureRecognizer: SNSwipeGestureRecognizerConfigurationBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForSwipeGestureRecognizer: SNSwipeGestureRecognizerHandlerBlock = { (swipeGestureRecognizer) in
            block(swipeGestureRecognizer)
            self.removeGestureRecognizer(swipeGestureRecognizer)
        }
        
        
        /*
         * Create gesture recognizer instance.
         */
        
        let swipeGestureRecognizer = SNSwipeGestureRecognizer(handlerBlock: handlerBlockForSwipeGestureRecognizer)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(swipeGestureRecognizer)
        
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configureSwipeGestureRecognizer(swipeGestureRecognizer)
        
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UISwipeGestureRecognizer` instance to receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    - parameters:
        - block: Called when `UISwipeGestureRecognizer` instance changes its state.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onSwipe(when:_, handle:_, configure:_) instead.")
    public func onSwipe(_ block: @escaping SNSwipeGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Create gesture recognizer instance.
         */
        
        let swipeGestureRecognizer = SNSwipeGestureRecognizer(handlerBlock: block)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(swipeGestureRecognizer)
        
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UISwipeGestureRecognizer` instance to receiver.
    Block will be called the first time only. After that, gesture recognizer will be removed from receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    **Note**: After first recognition, gesture recognizer will be removed from view.
    
    - parameters:
        - block: Called when `UISwipeGestureRecognizer` instance changes its state.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onSwipe(when:_, handle:_, configure:_) instead.")
    public func onSwipeOnce(_ block: @escaping SNSwipeGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForSwipeGestureRecognizer: SNSwipeGestureRecognizerHandlerBlock = { (swipeGestureRecognizer) in
            block(swipeGestureRecognizer)
            self.removeGestureRecognizer(swipeGestureRecognizer)
        }
        
        
        /*
         * Create gesture recognizer instance.
         */
        
        let swipeGestureRecognizer = SNSwipeGestureRecognizer(handlerBlock: handlerBlockForSwipeGestureRecognizer)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(swipeGestureRecognizer)
        
        
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
        GestureManager instance for support of chain calls.
    */
    @discardableResult
    public func onSwipe(to direction: SwipeDirection, when handlerReuseCount: GestureHandlerReuseCount = .always, handle: @escaping SNSwipeGestureRecognizerHandlerBlock, configure: SNSwipeGestureRecognizerConfigurationBlock?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        var handlerBlockForSwipeGestureRecognizer: SNSwipeGestureRecognizerHandlerBlock!
        
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
        
        let swipeGestureRecognizer = SNSwipeGestureRecognizer(handlerBlock: handlerBlockForSwipeGestureRecognizer)
        
        switch direction {
        case .up:
            swipeGestureRecognizer.direction = .up
            break
        case .right:
            swipeGestureRecognizer.direction = .right
            break
        case .down:
            swipeGestureRecognizer.direction = .down
            break
        case .left:
            swipeGestureRecognizer.direction = .left
            break
        }
        
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
    Adds `UISwipeGestureRecognizer` instance to receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    - parameters:
        - block: Called when `UISwipeGestureRecognizer` instance changes its state.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onSwipe(to:when:_, handle:_, configure:_) instead.")
    public func onSwipeUp(_ block: @escaping SNSwipeGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Create gesture recognizer instance.
         */
        
        let swipeGestureRecognizer = SNSwipeGestureRecognizer(handlerBlock: block)
        swipeGestureRecognizer.direction = .up
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(swipeGestureRecognizer)
        
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UISwipeGestureRecognizer` instance to receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    - parameters:
        - block: Called when `UISwipeGestureRecognizer` instance changes its state.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onSwipe(to:when:_, handle:_, configure:_) instead.")
    public func onSwipeRight(_ block: @escaping SNSwipeGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Create gesture recognizer instance.
         */
        
        let swipeGestureRecognizer = SNSwipeGestureRecognizer(handlerBlock: block)
        swipeGestureRecognizer.direction = .right
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(swipeGestureRecognizer)
        
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UISwipeGestureRecognizer` instance to receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    - parameters:
        - block: Called when `UISwipeGestureRecognizer` instance changes its state.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onSwipe(to:when:_, handle:_, configure:_) instead.")
    public func onSwipeDown(_ block: @escaping SNSwipeGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Create gesture recognizer instance.
         */
        
        let swipeGestureRecognizer = SNSwipeGestureRecognizer(handlerBlock: block)
        swipeGestureRecognizer.direction = .down
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(swipeGestureRecognizer)
        
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UISwipeGestureRecognizer` instance to receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    - parameters:
        - block: Called when `UISwipeGestureRecognizer` instance changes its state.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onSwipe(to:when:_, handle:_, configure:_) instead.")
    public func onSwipeLeft(_ block: @escaping SNSwipeGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Create gesture recognizer instance.
         */
        
        let swipeGestureRecognizer = SNSwipeGestureRecognizer(handlerBlock: block)
        swipeGestureRecognizer.direction = .left
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(swipeGestureRecognizer)
        
        
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
        GestureManager instance for support of chain calls.
    */
    @discardableResult
    public func onScreenEdgePan(when handlerReuseCount: GestureHandlerReuseCount = .always, handle: @escaping SNScreenEdgePanGestureRecognizerHandlerBlock, configure: SNScreenEdgePanGestureRecognizerConfigurationBlock?) -> Self {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        var handlerBlockForScreenEdgePanGestureRecognizer: SNScreenEdgePanGestureRecognizerHandlerBlock!
        
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
        
        let screenEdgePanGestureRecognizer = SNScreenEdgePanGestureRecognizer(handlerBlock: handlerBlockForScreenEdgePanGestureRecognizer)
        
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
    Adds `UIScreenEdgePanGestureRecognizer` instance to receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    - parameters:
        - block: Called when `UIScreenEdgePanGestureRecognizer` instance changes its state.
        - configureScreenEdgePanGestureRecognizer: Allows to configure `UIScreenEdgePanGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
     
            For example, you can save `UIScreenEdgePanGestureRecognizer`'s reference somewhere to control it later.
            But it's not necessary since `block` (the first parameter) gives you a full control of the gesture.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onScreenEdgePan(when:_, handle:_, configure:_) instead.")
    public func onScreenEdgePan(_ block: @escaping SNScreenEdgePanGestureRecognizerHandlerBlock, configureScreenEdgePanGestureRecognizer: SNScreenEdgePanGestureRecognizerConfigurationBlock) -> UIView {
        /*
         * Create gesture recognizer instance.
         */
        
        let screenEdgePanGestureRecognizer = SNScreenEdgePanGestureRecognizer(handlerBlock: block)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(screenEdgePanGestureRecognizer)
        
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configureScreenEdgePanGestureRecognizer(screenEdgePanGestureRecognizer)
        
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UIScreenEdgePanGestureRecognizer` instance to receiver.
    Block will be called the first time only. After that, gesture recognizer will be removed from receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    **Note**: After first recognition, gesture recognizer will be removed from view.
    
    - parameters:
        - block: Called when `UIScreenEdgePanGestureRecognizer` instance changes its state.
        - configureScreenEdgePanGestureRecognizer: Allows to configure `UIScreenEdgePanGestureRecognizer` instance.
            It's recommended to change settings of gesture recognizer inside of this block.
     
            For example, you can save `UIScreenEdgePanGestureRecognizer`'s reference somewhere to control it later.
            But it's not necessary since `block` (the first parameter) gives you a full control of the gesture.
     
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onScreenEdgePan(when:_, handle:_, configure:_) instead.")
    public func onScreenEdgePanOnce(_ block: @escaping SNScreenEdgePanGestureRecognizerHandlerBlock, configureScreenEdgePanGestureRecognizer: SNScreenEdgePanGestureRecognizerConfigurationBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForScreenEdgePanGestureRecognizer: SNScreenEdgePanGestureRecognizerHandlerBlock = { (screenEdgePanGestureRecognizer) in
            block(screenEdgePanGestureRecognizer)
            self.removeGestureRecognizer(screenEdgePanGestureRecognizer)
        }
        
        
        /*
         * Create gesture recognizer instance.
         */
        
        let screenEdgePanGestureRecognizer = SNScreenEdgePanGestureRecognizer(handlerBlock: handlerBlockForScreenEdgePanGestureRecognizer)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(screenEdgePanGestureRecognizer)
        
        
        /*
         * Call configuration block for gesture recognizer.
         */
        
        configureScreenEdgePanGestureRecognizer(screenEdgePanGestureRecognizer)
        
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UIScreenEdgePanGestureRecognizer` instance to receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    - parameters:
        - block: Called when `UIScreenEdgePanGestureRecognizer` instance changes its state.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onScreenEdgePan(when:_, handle:_, configure:_) instead.")
    public func onScreenEdgePan(_ block: @escaping SNScreenEdgePanGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Create gesture recognizer instance.
         */
        
        let screenEdgePanGestureRecognizer = SNScreenEdgePanGestureRecognizer(handlerBlock: block)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(screenEdgePanGestureRecognizer)
        
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    /**
    Adds `UIScreenEdgePanGestureRecognizer` instance to receiver.
    Block will be called the first time only. After that, gesture recognizer will be removed from receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    **Note**: After first recognition, gesture recognizer will be removed from view.
    
    - parameters:
        - block: Called when `UIScreenEdgePanGestureRecognizer` instance changes its state.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    @discardableResult
    @available(iOS, deprecated, message: "This method will be removed in closest update. Use onScreenEdgePan(when:_, handle:_, configure:_) instead.")
    public func onScreenEdgePanOnce(_ block: @escaping SNScreenEdgePanGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForScreenEdgePanGestureRecognizer: SNScreenEdgePanGestureRecognizerHandlerBlock = { (screenEdgePanGestureRecognizer) in
            block(screenEdgePanGestureRecognizer)
            self.removeGestureRecognizer(screenEdgePanGestureRecognizer)
        }
        
        
        /*
         * Create gesture recognizer instance.
         */
        
        let screenEdgePanGestureRecognizer = SNScreenEdgePanGestureRecognizer(handlerBlock: handlerBlockForScreenEdgePanGestureRecognizer)
        
        
        /*
         * Add gesture recognizer to receiver.
         */
        
        addGestureRecognizer(screenEdgePanGestureRecognizer)
        
        
        /*
         * Return receiver's instance for support of chain calls.
         */
        
        return self
    }
    
    // MARK: Private object methods
    
}

