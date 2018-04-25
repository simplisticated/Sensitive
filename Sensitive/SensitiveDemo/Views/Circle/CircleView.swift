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
    
    fileprivate var _instructionLabel: UILabel!
    
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
    
    func attributesForInstructionLabelText() -> [NSAttributedStringKey : Any] {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        
        return [
            NSAttributedStringKey.font: UIFont.systemFont(ofSize: 15.0),
            NSAttributedStringKey.foregroundColor: UIColor.black,
            NSAttributedStringKey.kern: 0.5 as AnyObject,
            NSAttributedStringKey.paragraphStyle: paragraphStyle
        ]
    }
    

    // MARK: Private methods
    
    fileprivate func customInitialization() {
        // Initialize view
        
        backgroundColor = .white
        layer.masksToBounds = true
        updateBounds()
        
        
        // Initialize instruction label
        
        _instructionLabel = UILabel()
        
        let attributedTextForInstructionLabel = NSAttributedString(string: textForInstructionLabel(), attributes: attributesForInstructionLabelText())
        instructionLabel.attributedText = attributedTextForInstructionLabel
        
        instructionLabel.minimumScaleFactor = 0.5
        
        addSubview(instructionLabel)
    }
    
    fileprivate func updateBounds() {
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 1.0
        layer.cornerRadius = bounds.size.width / 2.0
        layer.masksToBounds = true
    }
    
    
    // MARK: Actions
    
    
    // MARK: Protocol methods
    
}
