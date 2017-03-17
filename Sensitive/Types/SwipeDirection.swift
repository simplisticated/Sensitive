//
//  SwipeDirection.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 13.03.17.
//  Copyright © 2017 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

public enum SwipeDirection {
    case up
    case right
    case down
    case left
    
    var swipeGestureRecognizerDirection: UISwipeGestureRecognizerDirection {
        get {
            switch self {
            case .up:
                return .up
            case .right:
                return .right
            case .down:
                return .down
            case .left:
                return .left
            }
        }
    }
}
