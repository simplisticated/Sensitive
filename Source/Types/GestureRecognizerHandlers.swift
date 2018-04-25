//
//  GestureRecognizerHandlers.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 14.03.17.
//  Copyright © 2017 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

public typealias GestureRecognizerHandler<GestureRecognizer: UIGestureRecognizer> = (_ gestureRecognizer: GestureRecognizer) -> Void

public typealias GestureRecognizerSimplifiedHandler = () -> Void
