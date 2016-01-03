//
//  CircleView.swift
//  SensitiveDemo
//
//  Created by Igor Matyushkin on 04.01.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

class CircleView: UIView {
    
    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        customInitialization()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        customInitialization()
    }
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Outlets
    
    
    // MARK: Variables & properties
    
    private var _instructionLabel: UILabel!
    
    var instructionLabel: UILabel {
        get {
            return _instructionLabel
        }
    }
    
    
    // MARK: Public methods
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
        // Update view
        
        updateBounds()
        
        
        // Update instruction label
        
        instructionLabel.frame = bounds
    }
    
    func textForInstructionLabel() -> String {
        return "Tap this circle"
    }
    
    func attributesForInstructionLabelText() -> [String : AnyObject] {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .Center
        
        return [
            NSFontAttributeName: UIFont.systemFontOfSize(15.0),
            NSForegroundColorAttributeName: UIColor.blackColor(),
            NSKernAttributeName: 0.5,
            NSParagraphStyleAttributeName: paragraphStyle
        ]
    }
    
    
    // MARK: Private methods
    
    private func customInitialization() {
        // Initialize view
        
        backgroundColor = .whiteColor()
        layer.masksToBounds = true
        updateBounds()
        
        
        // Initialize instruction label
        
        _instructionLabel = UILabel()
        
        let attributedTextForInstructionLabel = NSAttributedString(string: textForInstructionLabel(), attributes: attributesForInstructionLabelText())
        instructionLabel.attributedText = attributedTextForInstructionLabel
        
        instructionLabel.minimumScaleFactor = 0.5
        
        addSubview(instructionLabel)
    }
    
    private func updateBounds() {
        layer.borderColor = UIColor.blackColor().CGColor
        layer.borderWidth = 1.0
        layer.cornerRadius = bounds.size.width / 2.0
        layer.masksToBounds = true
    }
    
    
    // MARK: Actions
    
    
    // MARK: Protocol methods
    
}
