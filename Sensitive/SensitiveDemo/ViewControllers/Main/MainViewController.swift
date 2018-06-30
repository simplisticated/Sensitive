//
//  MainViewController.swift
//  SensitiveDemo
//
//  Created by Igor Matyushkin on 09.11.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import UIKit
import Sensitive

class MainViewController: UIViewController {

    // MARK: Class variables & properties
    
    // MARK: Class methods
    
    // MARK: Initializers
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Outlets
    
    @IBOutlet fileprivate weak var circleView: CircleView!
    
    // MARK: Variables & properties
    
    fileprivate let colors: [UIColor] = [
        .green,
        .yellow,
        .orange,
        .white
    ]
    
    fileprivate var indexOfCurrentColor: Int?
    
    // MARK: Public methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize circle view
        
        self.circleView.onTap
            .handle { (tapGestureRecognizer) in
                if (self.indexOfCurrentColor == nil) || (self.indexOfCurrentColor! >= self.colors.count - 1) {
                    self.indexOfCurrentColor = 0
                } else {
                    self.indexOfCurrentColor = self.indexOfCurrentColor! + 1
                }
                
                let colorForCircleView = self.colors[self.indexOfCurrentColor!]
                self.circleView.backgroundColor = colorForCircleView
            }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden : Bool {
        return true
    }
    
    // MARK: Private methods
    
    // MARK: Actions
    
    // MARK: Protocol methods
    
}
