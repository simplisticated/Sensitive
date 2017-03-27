//
//  TouchCount.swift
//  SensitiveDemo
//
//  Created by Igor Matyushkin on 27.03.17.
//  Copyright © 2017 Igor Matyushkin. All rights reserved.
//

import Foundation

public enum TouchCount {
    case equalTo(count: Int)
    case predicate(block: (_ count: Int) -> Bool)
    case any
}
