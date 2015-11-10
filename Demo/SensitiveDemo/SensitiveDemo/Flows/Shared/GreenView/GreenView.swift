//
//  GreenView.swift
//  SensitiveDemo
//
//  Created by Igor Matyushkin on 10.11.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import UIKit

class GreenView: UIView {
    
    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        customInitialization()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        customInitialization()
    }
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Outlets
    
    
    // MARK: Variables & properties
    
    
    // MARK: Public methods
    
    
    // MARK: Private methods
    
    private func customInitialization() {
        // Initialize view
        
        backgroundColor = .greenColor()
        
        let sideForView: CGFloat = 200.0
        
        let frameForView = CGRect(x: 0.0, y: 0.0, width: sideForView, height: sideForView)
        frame = frameForView
        
        layer.borderColor = UIColor.blackColor().CGColor
        layer.borderWidth = 1.0
        layer.cornerRadius = sideForView / 2.0
    }
    
    
    // MARK: Actions
    
    
    // MARK: Protocol methods
    
}
