//
//  ArrayExtensionScreenEdgePanGesture.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 08.03.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

public extension Array where Element: UIView {
    
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
    
}
