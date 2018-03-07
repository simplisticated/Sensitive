//
//  ArrayExtensionPanGesture.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 08.03.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

public extension Array where Element: UIView {
    
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
    
}
