//
//  MainViewController.swift
//  SensitiveDemo
//
//  Created by Igor Matyushkin on 09.11.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Outlets
    
    
    // MARK: Variables & properties
    
    private var greenView: GreenView!
    
    
    // MARK: Public methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Initialize view
        
        let frameForView = UIScreen.mainScreen().bounds
        view.frame = frameForView
        
        
        // Initialize green view
        
        greenView = GreenView()
        
        var frameForGreenView = greenView.frame
        frameForGreenView.origin.x = (view.bounds.size.width - frameForGreenView.size.width) / 2.0
        frameForGreenView.origin.y = (view.bounds.size.height - frameForGreenView.size.height) / 2.0
        greenView.frame = frameForGreenView
        
        view.addSubview(greenView)
        
        greenView.SN_addPanGestureRecognizer(handleAutomatically: true) { (panGestureRecognizer) -> Void in
        }
        
        greenView.SN_addPinchGestureRecognizer(handleAutomatically: true) { (pinchGestureRecognizer) -> Void in
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    
    // MARK: Private methods
    
    
    // MARK: Actions
    
    
    // MARK: Protocol methods
    
}
