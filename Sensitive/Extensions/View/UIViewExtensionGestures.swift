//
//  UIViewExtensionGestures.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 10.11.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

internal extension UIView {
    
    internal func stv_numberOfTimesGestureRecognizerIsHandled(gestureRecognizer: UIGestureRecognizer) -> Int? {
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
    
    internal func stv_applyReuseCount<GestureRecognizerType: UIGestureRecognizer>(_ reuseCount: GestureHandlerReuseCount, toHandlerBlock handlerBlock: @escaping GestureRecognizerHandlerBlock<GestureRecognizerType>) -> GestureRecognizerHandlerBlock<GestureRecognizerType> {
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
