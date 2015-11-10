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
    
    public func SN_didRetrieveGestureRecognizer(gestureRecognizer: UIGestureRecognizer) {
    }
    
    public func SN_addTapGestureRecognizerWithConfigurationBlock(configurationBlock: ((tapGestureRecognizer: UITapGestureRecognizer) -> Void)?) -> UITapGestureRecognizer {
        let gestureRecognizer = SN_addGestureRecognizerOfType(UITapGestureRecognizer.self, handleAutomatically: false) { (gestureRecognizer) -> Void in
            let tapGestureRecognizer = gestureRecognizer as! UITapGestureRecognizer
            configurationBlock?(tapGestureRecognizer: tapGestureRecognizer)
        }
        
        let tapGestureRecognizer = gestureRecognizer as! UITapGestureRecognizer
        return tapGestureRecognizer
    }
    
    public func SN_addLongPressGestureRecognizerWithConfigurationBlock(configurationBlock: ((longPressGestureRecognizer: UILongPressGestureRecognizer) -> Void)?) -> UILongPressGestureRecognizer {
        let gestureRecognizer = SN_addGestureRecognizerOfType(UILongPressGestureRecognizer.self, handleAutomatically: false) { (gestureRecognizer) -> Void in
            let longPressGestureRecognizer = gestureRecognizer as! UILongPressGestureRecognizer
            configurationBlock?(longPressGestureRecognizer: longPressGestureRecognizer)
        }
        
        let longPressGestureRecognizer = gestureRecognizer as! UILongPressGestureRecognizer
        return longPressGestureRecognizer
    }
    
    public func SN_addPanGestureRecognizer(handleAutomatically handleAutomatically: Bool, withConfigurationBlock configurationBlock: ((panGestureRecognizer: UIPanGestureRecognizer) -> Void)?) -> UIPanGestureRecognizer {
        let gestureRecognizer = SN_addGestureRecognizerOfType(UIPanGestureRecognizer.self, handleAutomatically: handleAutomatically) { (gestureRecognizer) -> Void in
            let panGestureRecognizer = gestureRecognizer as! UIPanGestureRecognizer
            configurationBlock?(panGestureRecognizer: panGestureRecognizer)
        }
        
        let panGestureRecognizer = gestureRecognizer as! UIPanGestureRecognizer
        return panGestureRecognizer
    }
    
    public func SN_addPinchGestureRecognizer(handleAutomatically handleAutomatically: Bool, withConfigurationBlock configurationBlock: ((pinchGestureRecognizer: UIPinchGestureRecognizer) -> Void)?) -> UIPinchGestureRecognizer {
        let gestureRecognizer = SN_addGestureRecognizerOfType(UIPinchGestureRecognizer.self, handleAutomatically: handleAutomatically) { (gestureRecognizer) -> Void in
            let pinchGestureRecognizer = gestureRecognizer as! UIPinchGestureRecognizer
            configurationBlock?(pinchGestureRecognizer: pinchGestureRecognizer)
        }
        
        let pinchGestureRecognizer = gestureRecognizer as! UIPinchGestureRecognizer
        return pinchGestureRecognizer
    }
    
    public func SN_addRotationGestureRecognizerWithConfigurationBlock(configurationBlock: ((rotationGestureRecognizer: UIRotationGestureRecognizer) -> Void)?) -> UIRotationGestureRecognizer {
        let gestureRecognizer = SN_addGestureRecognizerOfType(UIRotationGestureRecognizer.self, handleAutomatically: false) { (gestureRecognizer) -> Void in
            let rotationGestureRecognizer = gestureRecognizer as! UIRotationGestureRecognizer
            configurationBlock?(rotationGestureRecognizer: rotationGestureRecognizer)
        }
        
        let rotationGestureRecognizer = gestureRecognizer as! UIRotationGestureRecognizer
        return rotationGestureRecognizer
    }
    
    public func SN_addSwipeGestureRecognizerWithConfigurationBlock(configurationBlock: ((swipeGestureRecognizer: UISwipeGestureRecognizer) -> Void)?) -> UISwipeGestureRecognizer {
        let gestureRecognizer = SN_addGestureRecognizerOfType(UISwipeGestureRecognizer.self, handleAutomatically: false) { (gestureRecognizer) -> Void in
            let swipeGestureRecognizer = gestureRecognizer as! UISwipeGestureRecognizer
            configurationBlock?(swipeGestureRecognizer: swipeGestureRecognizer)
        }
        
        let swipeGestureRecognizer = gestureRecognizer as! UISwipeGestureRecognizer
        return swipeGestureRecognizer
    }
    
    
    // MARK: Private object methods
    
    private func SN_addGestureRecognizerOfType(type: UIGestureRecognizer.Type, handleAutomatically: Bool, withConfigurationBlock configurationBlock: ((gestureRecognizer: UIGestureRecognizer) -> Void)?) -> UIGestureRecognizer {
        let selectorForGestureRecognizer = handleAutomatically ? Selector("SN_internalMethod_handleGestureRecognizer:") : Selector("SN_internalMethod_didRetrieveGestureRecognizer:")
        let gestureRecognizer = type.init(target: self, action: selectorForGestureRecognizer)
        configurationBlock?(gestureRecognizer: gestureRecognizer)
        addGestureRecognizer(gestureRecognizer)
        return gestureRecognizer
    }
    
    internal func SN_internalMethod_didRetrieveGestureRecognizer(gestureRecognizer: UIGestureRecognizer) {
        SN_didRetrieveGestureRecognizer(gestureRecognizer)
    }
    
    internal func SN_internalMethod_handleGestureRecognizer(gestureRecognizer: UIGestureRecognizer) {
        if gestureRecognizer is UITapGestureRecognizer {
            let tapGestureRecognizer = gestureRecognizer as! UITapGestureRecognizer
            handleTapGestureRecognizer(tapGestureRecognizer)
        }
        else if gestureRecognizer is UILongPressGestureRecognizer {
            let longPressGestureRecognizer = gestureRecognizer as! UILongPressGestureRecognizer
            handleLongPressGestureRecognizer(longPressGestureRecognizer)
        }
        else if gestureRecognizer is UIPanGestureRecognizer {
            let panGestureRecognizer = gestureRecognizer as! UIPanGestureRecognizer
            handlePanGestureRecognizer(panGestureRecognizer)
        }
        else if gestureRecognizer is UIPinchGestureRecognizer {
            let pinchGestureRecognizer = gestureRecognizer as! UIPinchGestureRecognizer
            handlePinchGestureRecognizer(pinchGestureRecognizer)
        }
        else if gestureRecognizer is UIRotationGestureRecognizer {
            let rotationGestureRecognizer = gestureRecognizer as! UIRotationGestureRecognizer
            handleRotationGestureRecognizer(rotationGestureRecognizer)
        }
        else if gestureRecognizer is UISwipeGestureRecognizer {
            let swipeGestureRecognizer = gestureRecognizer as! UISwipeGestureRecognizer
            handleSwipeGestureRecognizer(swipeGestureRecognizer)
        }
        
        SN_internalMethod_didRetrieveGestureRecognizer(gestureRecognizer)
    }
    
    private func handleTapGestureRecognizer(tapGestureRecognizer: UITapGestureRecognizer) {
    }
    
    private func handleLongPressGestureRecognizer(longPressGestureRecognizer: UILongPressGestureRecognizer) {
    }
    
    private func handlePanGestureRecognizer(panGestureRecognizer: UIPanGestureRecognizer) {
        switch panGestureRecognizer.state {
        case .Possible:
            break
        case .Began:
            let translatedPoint = panGestureRecognizer.translationInView(self)
            self.center = CGPointMake(self.center.x + translatedPoint.x, self.center.y + translatedPoint.y)
            panGestureRecognizer.setTranslation(CGPointZero, inView: self)
            break
        case .Changed:
            let translatedPoint = panGestureRecognizer.translationInView(self)
            self.center = CGPointMake(self.center.x + translatedPoint.x, self.center.y + translatedPoint.y)
            panGestureRecognizer.setTranslation(CGPointZero, inView: self)
            break
        case .Ended:
            let translatedPoint = panGestureRecognizer.translationInView(self)
            self.center = CGPointMake(self.center.x + translatedPoint.x, self.center.y + translatedPoint.y)
            panGestureRecognizer.setTranslation(CGPointZero, inView: self)
            break
        case .Cancelled:
            break
        case .Failed:
            break
        }
    }
    
    private func handlePinchGestureRecognizer(pinchGestureRecognizer: UIPinchGestureRecognizer) {
        switch pinchGestureRecognizer.state {
        case .Possible:
            break
        case .Began:
            let scale = pinchGestureRecognizer.scale
            transform = CGAffineTransformScale(transform, scale, scale)
            pinchGestureRecognizer.scale = 1.0
            break
        case .Changed:
            let scale = pinchGestureRecognizer.scale
            transform = CGAffineTransformScale(transform, scale, scale)
            pinchGestureRecognizer.scale = 1.0
            break
        case .Ended:
            let scale = pinchGestureRecognizer.scale
            transform = CGAffineTransformScale(transform, scale, scale)
            pinchGestureRecognizer.scale = 1.0
            break
        case .Cancelled:
            break
        case .Failed:
            break
        }
    }
    
    private func handleRotationGestureRecognizer(rotationGestureRecognizer: UIRotationGestureRecognizer) {
    }
    
    private func handleSwipeGestureRecognizer(swipeGestureRecognizer: UISwipeGestureRecognizer) {
    }
    
}

