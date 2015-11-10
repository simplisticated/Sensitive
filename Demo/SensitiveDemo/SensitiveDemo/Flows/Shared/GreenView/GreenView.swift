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
    
    private var labelTitle: UILabel!
    
    
    // MARK: Public methods
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
        // Update title label
        
        labelTitle.frame = bounds
    }
    
    func attributesForTitle() -> [String : AnyObject] {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .Center
        
        return [
            NSFontAttributeName: UIFont.systemFontOfSize(12.0),
            NSForegroundColorAttributeName: UIColor.blackColor(),
            NSKernAttributeName: 1.0,
            NSParagraphStyleAttributeName: paragraphStyle
        ]
    }
    
    
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
        
        
        // Initialize title label
        
        labelTitle = UILabel()
        labelTitle.numberOfLines = 0
        
        let textForLabelTitle = "Supports pan and pinch gestures"
        let attributedTextForLabelTitle = NSAttributedString(string: textForLabelTitle, attributes: attributesForTitle())
        labelTitle.attributedText = attributedTextForLabelTitle
        
        addSubview(labelTitle)
    }
    
    
    // MARK: Actions
    
    
    // MARK: Protocol methods
    
}
