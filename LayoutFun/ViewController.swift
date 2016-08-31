//
//  ViewController.swift
//  LayoutFun
//
//  Created by James Campagno on 8/31/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let redView = UIView(frame: CGRectZero)
    let orangeView = UIView(frame: CGRectZero)
    let yellowView = UIView(frame: CGRectZero)
    let greenView = UIView(frame: CGRectZero)
    let blueView = UIView(frame: CGRectZero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.grayColor()
        turnOffAutoResizingOnAllViews()
        setupTheConstraints()
        setupColors()
    }
    
}

// MARK: Constraints
extension ViewController {
    
    func setupTheConstraints() {
        // TODO: Create all the constraints (in code) for the various views
        redView.widthAnchor.constraintEqualToAnchor(view.widthAnchor, multiplier: 0.5).active = true
        redView.heightAnchor.constraintEqualToAnchor(redView.widthAnchor).active = true
        redView.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        redView.bottomAnchor.constraintEqualToAnchor(view.bottomAnchor).active = true
        
        orangeView.widthAnchor.constraintEqualToAnchor(redView.widthAnchor, multiplier: 0.75).active = true
        orangeView.heightAnchor.constraintEqualToAnchor(orangeView.widthAnchor).active = true
        orangeView.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        orangeView.bottomAnchor.constraintEqualToAnchor(redView.topAnchor).active = true
        
        yellowView.widthAnchor.constraintEqualToAnchor(orangeView.widthAnchor, multiplier: 0.75).active = true
        yellowView.heightAnchor.constraintEqualToAnchor(yellowView.widthAnchor).active = true
        yellowView.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        yellowView.bottomAnchor.constraintEqualToAnchor(orangeView.topAnchor).active = true
        
        greenView.widthAnchor.constraintEqualToAnchor(yellowView.widthAnchor, multiplier: 0.75).active = true
        greenView.heightAnchor.constraintEqualToAnchor(greenView.widthAnchor).active = true
        greenView.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        greenView.bottomAnchor.constraintEqualToAnchor(yellowView.topAnchor).active = true
        
        blueView.widthAnchor.constraintEqualToAnchor(greenView.widthAnchor, multiplier: 0.75).active = true
        blueView.heightAnchor.constraintEqualToAnchor(blueView.widthAnchor).active = true
        blueView.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        blueView.bottomAnchor.constraintEqualToAnchor(greenView.topAnchor).active = true
    }
    
    func turnOffAutoResizingOnAllViews() {
        [redView, orangeView, yellowView, greenView, blueView].forEach { colorView in
            colorView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(colorView)
        }
    }
    
}


// MARK: Setting up Views
extension ViewController {
    
    func setupColors() {
        redView.backgroundColor = UIColor.redColor()
        orangeView.backgroundColor = UIColor.orangeColor()
        yellowView.backgroundColor = UIColor.yellowColor()
        greenView.backgroundColor = UIColor.greenColor()
        blueView.backgroundColor = UIColor.blueColor()
    }
}