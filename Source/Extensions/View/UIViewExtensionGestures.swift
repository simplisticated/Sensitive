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
    public func onTap(block: SNTapGestureRecognizerHandlerBlock, configureTapGestureRecognizer: SNTapGestureRecognizerConfigurationBlock) -> UIView {
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
        
        configureTapGestureRecognizer(tapGestureRecognizer: tapGestureRecognizer)
        
        
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
    public func onTapOnce(block: SNTapGestureRecognizerHandlerBlock, configureTapGestureRecognizer: SNTapGestureRecognizerConfigurationBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForTapGestureRecognizer: SNTapGestureRecognizerHandlerBlock = { (tapGestureRecognizer) in
            block(tapGestureRecognizer: tapGestureRecognizer)
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
        
        configureTapGestureRecognizer(tapGestureRecognizer: tapGestureRecognizer)
        
        
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
    public func onTap(block: SNTapGestureRecognizerHandlerBlock) -> UIView {
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
    public func onTapOnce(block: SNTapGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForTapGestureRecognizer: SNTapGestureRecognizerHandlerBlock = { (tapGestureRecognizer) in
            block(tapGestureRecognizer: tapGestureRecognizer)
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
    public func onLongPress(block: SNLongPressGestureRecognizerHandlerBlock, configureLongPressGestureRecognizer: SNLongPressGestureRecognizerConfigurationBlock) -> UIView {
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
        
        configureLongPressGestureRecognizer(longPressGestureRecognizer: longPressGestureRecognizer)
        
        
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
    public func onLongPressOnce(block: SNLongPressGestureRecognizerHandlerBlock, configureLongPressGestureRecognizer: SNLongPressGestureRecognizerConfigurationBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForLongPressGestureRecognizer: SNLongPressGestureRecognizerHandlerBlock = { (longPressGestureRecognizer) in
            block(longPressGestureRecognizer: longPressGestureRecognizer)
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
        
        configureLongPressGestureRecognizer(longPressGestureRecognizer: longPressGestureRecognizer)
        
        
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
    public func onLongPress(block: SNLongPressGestureRecognizerHandlerBlock) -> UIView {
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
    public func onLongPressOnce(block: SNLongPressGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForLongPressGestureRecognizer: SNLongPressGestureRecognizerHandlerBlock = { (longPressGestureRecognizer) in
            block(longPressGestureRecognizer: longPressGestureRecognizer)
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
    public func onPan(block: SNPanGestureRecognizerHandlerBlock, configurePanGestureRecognizer: SNPanGestureRecognizerConfigurationBlock) -> UIView {
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
        
        configurePanGestureRecognizer(panGestureRecognizer: panGestureRecognizer)
        
        
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
    public func onPanOnce(block: SNPanGestureRecognizerHandlerBlock, configurePanGestureRecognizer: SNPanGestureRecognizerConfigurationBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForPanGestureRecognizer: SNPanGestureRecognizerHandlerBlock = { (panGestureRecognizer) in
            block(panGestureRecognizer: panGestureRecognizer)
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
        
        configurePanGestureRecognizer(panGestureRecognizer: panGestureRecognizer)
        
        
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
    public func onPan(block: SNPanGestureRecognizerHandlerBlock) -> UIView {
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
    public func onPanOnce(block: SNPanGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForPanGestureRecognizer: SNPanGestureRecognizerHandlerBlock = { (panGestureRecognizer) in
            block(panGestureRecognizer: panGestureRecognizer)
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
    public func onPinch(block: SNPinchGestureRecognizerHandlerBlock, configurePinchGestureRecognizer: SNPinchGestureRecognizerConfigurationBlock) -> UIView {
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
        
        configurePinchGestureRecognizer(pinchGestureRecognizer: pinchGestureRecognizer)
        
        
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
    public func onPinchOnce(block: SNPinchGestureRecognizerHandlerBlock, configurePinchGestureRecognizer: SNPinchGestureRecognizerConfigurationBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForPinchGestureRecognizer: SNPinchGestureRecognizerHandlerBlock = { (pinchGestureRecognizer) in
            block(pinchGestureRecognizer: pinchGestureRecognizer)
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
        
        configurePinchGestureRecognizer(pinchGestureRecognizer: pinchGestureRecognizer)
        
        
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
    public func onPinch(block: SNPinchGestureRecognizerHandlerBlock) -> UIView {
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
    public func onPinchOnce(block: SNPinchGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForPinchGestureRecognizer: SNPinchGestureRecognizerHandlerBlock = { (pinchGestureRecognizer) in
            block(pinchGestureRecognizer: pinchGestureRecognizer)
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
    public func onRotation(block: SNRotationGestureRecognizerHandlerBlock, configureRotationGestureRecognizer: SNRotationGestureRecognizerConfigurationBlock) -> UIView {
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
        
        configureRotationGestureRecognizer(rotationGestureRecognizer: rotationGestureRecognizer)
        
        
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
    public func onRotationOnce(block: SNRotationGestureRecognizerHandlerBlock, configureRotationGestureRecognizer: SNRotationGestureRecognizerConfigurationBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForRotationGestureRecognizer: SNRotationGestureRecognizerHandlerBlock = { (rotationGestureRecognizer) in
            block(rotationGestureRecognizer: rotationGestureRecognizer)
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
        
        configureRotationGestureRecognizer(rotationGestureRecognizer: rotationGestureRecognizer)
        
        
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
    public func onRotation(block: SNRotationGestureRecognizerHandlerBlock) -> UIView {
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
    public func onRotationOnce(block: SNRotationGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForRotationGestureRecognizer: SNRotationGestureRecognizerHandlerBlock = { (rotationGestureRecognizer) in
            block(rotationGestureRecognizer: rotationGestureRecognizer)
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
    public func onSwipe(block: SNSwipeGestureRecognizerHandlerBlock, configureSwipeGestureRecognizer: SNSwipeGestureRecognizerConfigurationBlock) -> UIView {
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
        
        configureSwipeGestureRecognizer(swipeGestureRecognizer: swipeGestureRecognizer)
        
        
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
    public func onSwipeOnce(block: SNSwipeGestureRecognizerHandlerBlock, configureSwipeGestureRecognizer: SNSwipeGestureRecognizerConfigurationBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForSwipeGestureRecognizer: SNSwipeGestureRecognizerHandlerBlock = { (swipeGestureRecognizer) in
            block(swipeGestureRecognizer: swipeGestureRecognizer)
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
        
        configureSwipeGestureRecognizer(swipeGestureRecognizer: swipeGestureRecognizer)
        
        
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
    public func onSwipe(block: SNSwipeGestureRecognizerHandlerBlock) -> UIView {
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
    public func onSwipeOnce(block: SNSwipeGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForSwipeGestureRecognizer: SNSwipeGestureRecognizerHandlerBlock = { (swipeGestureRecognizer) in
            block(swipeGestureRecognizer: swipeGestureRecognizer)
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
    Adds `UISwipeGestureRecognizer` instance to receiver.
    
    Since this method returns receiver instance, it supports chain calls.
    
    - parameters:
        - block: Called when `UISwipeGestureRecognizer` instance changes its state.
    
    - returns:
        Receiver instance for support of chain calls.
    */
    public func onSwipeUp(block: SNSwipeGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Create gesture recognizer instance.
         */
        
        let swipeGestureRecognizer = SNSwipeGestureRecognizer(handlerBlock: block)
        swipeGestureRecognizer.direction = .Up
        
        
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
    public func onSwipeRight(block: SNSwipeGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Create gesture recognizer instance.
         */
        
        let swipeGestureRecognizer = SNSwipeGestureRecognizer(handlerBlock: block)
        swipeGestureRecognizer.direction = .Right
        
        
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
    public func onSwipeDown(block: SNSwipeGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Create gesture recognizer instance.
         */
        
        let swipeGestureRecognizer = SNSwipeGestureRecognizer(handlerBlock: block)
        swipeGestureRecognizer.direction = .Down
        
        
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
    public func onSwipeLeft(block: SNSwipeGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Create gesture recognizer instance.
         */
        
        let swipeGestureRecognizer = SNSwipeGestureRecognizer(handlerBlock: block)
        swipeGestureRecognizer.direction = .Left
        
        
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
    public func onScreenEdgePan(block: SNScreenEdgePanGestureRecognizerHandlerBlock, configureScreenEdgePanGestureRecognizer: SNScreenEdgePanGestureRecognizerConfigurationBlock) -> UIView {
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
        
        configureScreenEdgePanGestureRecognizer(screenEdgePanGestureRecognizer: screenEdgePanGestureRecognizer)
        
        
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
    public func onScreenEdgePanOnce(block: SNScreenEdgePanGestureRecognizerHandlerBlock, configureScreenEdgePanGestureRecognizer: SNScreenEdgePanGestureRecognizerConfigurationBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForScreenEdgePanGestureRecognizer: SNScreenEdgePanGestureRecognizerHandlerBlock = { (screenEdgePanGestureRecognizer) in
            block(screenEdgePanGestureRecognizer: screenEdgePanGestureRecognizer)
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
        
        configureScreenEdgePanGestureRecognizer(screenEdgePanGestureRecognizer: screenEdgePanGestureRecognizer)
        
        
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
    public func onScreenEdgePan(block: SNScreenEdgePanGestureRecognizerHandlerBlock) -> UIView {
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
    public func onScreenEdgePanOnce(block: SNScreenEdgePanGestureRecognizerHandlerBlock) -> UIView {
        /*
         * Obtain handler block for gesture recognizer.
         */
        
        let handlerBlockForScreenEdgePanGestureRecognizer: SNScreenEdgePanGestureRecognizerHandlerBlock = { (screenEdgePanGestureRecognizer) in
            block(screenEdgePanGestureRecognizer: screenEdgePanGestureRecognizer)
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

