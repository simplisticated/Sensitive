//
//  GestureHandlerReuseCount.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 13.03.17.
//  Copyright © 2017 Igor Matyushkin. All rights reserved.
//

import Foundation

public enum GestureHandlerReuseCount {
    case once
    case times(count: Int)
    case always
}
