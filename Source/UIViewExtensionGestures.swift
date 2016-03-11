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
    
    public func onTap(block: SNTapGestureRecognizerHandlerBlock, configureTapGestureRecognizer: SNTapGestureRecognizerConfigurationBlock) -> UIView {
        let tapGestureRecognizer = SNTapGestureRecognizer(handlerBlock: block)
        addGestureRecognizer(tapGestureRecognizer)
        
        configureTapGestureRecognizer(tapGestureRecognizer: tapGestureRecognizer)
        
        return self
    }
    
    public func onTap(block: SNTapGestureRecognizerHandlerBlock) -> UIView {
        let view = onTap(block) { (tapGestureRecognizer) -> Void in
        }
        
        return view
    }
    
    public func onLongPress(block: SNLongPressGestureRecognizerHandlerBlock, configureLongPressGestureRecognizer: SNLongPressGestureRecognizerConfigurationBlock) -> UIView {
        let longPressGestureRecognizer = SNLongPressGestureRecognizer(handlerBlock: block)
        addGestureRecognizer(longPressGestureRecognizer)
        
        configureLongPressGestureRecognizer(longPressGestureRecognizer: longPressGestureRecognizer)
        
        return self
    }
    
    public func onLongPress(block: SNLongPressGestureRecognizerHandlerBlock) -> UIView {
        let view = onLongPress(block) { (longPressGestureRecognizer) -> Void in
        }
        
        return view
    }
    
    public func onPan(block: SNPanGestureRecognizerHandlerBlock, configurePanGestureRecognizer: SNPanGestureRecognizerConfigurationBlock) -> UIView {
        let panGestureRecognizer = SNPanGestureRecognizer(handlerBlock: block)
        addGestureRecognizer(panGestureRecognizer)
        
        configurePanGestureRecognizer(panGestureRecognizer: panGestureRecognizer)
        
        return self
    }
    
    public func onPan(block: SNPanGestureRecognizerHandlerBlock) -> UIView {
        let view = onPan(block) { (panGestureRecognizer) -> Void in
        }
        
        return view
    }
    
    public func onPinch(block: SNPinchGestureRecognizerHandlerBlock, configurePinchGestureRecognizer: SNPinchGestureRecognizerConfigurationBlock) -> UIView {
        let pinchGestureRecognizer = SNPinchGestureRecognizer(handlerBlock: block)
        addGestureRecognizer(pinchGestureRecognizer)
        
        configurePinchGestureRecognizer(pinchGestureRecognizer: pinchGestureRecognizer)
        
        return self
    }
    
    public func onPinch(block: SNPinchGestureRecognizerHandlerBlock) -> UIView {
        let view = onPinch(block) { (pinchGestureRecognizer) -> Void in
        }
        
        return view
    }
    
    public func onRotation(block: SNRotationGestureRecognizerHandlerBlock, configureRotationGestureRecognizer: SNRotationGestureRecognizerConfigurationBlock) -> UIView {
        let rotationGestureRecognizer = SNRotationGestureRecognizer(handlerBlock: block)
        addGestureRecognizer(rotationGestureRecognizer)
        
        configureRotationGestureRecognizer(rotationGestureRecognizer: rotationGestureRecognizer)
        
        return self
    }
    
    public func onRotation(block: SNRotationGestureRecognizerHandlerBlock) -> UIView {
        let view = onRotation(block) { (rotationGestureRecognizer) -> Void in
        }
        
        return view
    }
    
    public func onSwipe(block: SNSwipeGestureRecognizerHandlerBlock, configureSwipeGestureRecognizer: SNSwipeGestureRecognizerConfigurationBlock) -> UIView {
        let swipeGestureRecognizer = SNSwipeGestureRecognizer(handlerBlock: block)
        addGestureRecognizer(swipeGestureRecognizer)
        
        configureSwipeGestureRecognizer(swipeGestureRecognizer: swipeGestureRecognizer)
        
        return self
    }
    
    public func onSwipe(block: SNSwipeGestureRecognizerHandlerBlock) -> UIView {
        let view = onSwipe(block) { (swipeGestureRecognizer) -> Void in
        }
        
        return view
    }
    
    
    // MARK: Private object methods
    
}

