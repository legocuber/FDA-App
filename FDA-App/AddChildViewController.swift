//
//  AddChildViewController.swift
//  FDA-App
//
//  Created by Fredrik Fatemi on 6/13/18.
//  Copyright © 2018 Fredrik Fatemi. All rights reserved.
//

import Foundation
import UIKit

class AddChildViewController: UIViewController {
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let background: UIView = {
        let bg = UIView()
        bg.backgroundColor = UIColor(red: 125.0 / 255.0, green: 193.0 / 255.0, blue: 66.0 / 255.0, alpha: 1.0)
        return bg
    }()
    
    let topLabel: UILabel = {
        let label = UILabel()
        label.text = "ADD CHILD"
        label.textColor = UIColor.white
        label.font = UIFont(name: "Montserrat-Bold", size: 28.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let scrollView: UIScrollView = {
        let screensize = UIScreen.main.bounds
        let scrollView = UIScrollView()
        scrollView.backgroundColor = UIColor(red: 81.0 / 255.0, green: 100.0 / 255.0, blue: 192.0 / 255.0, alpha: 1.0)
        // Divide by 255 to convert from a 0-255 scale to a 0-1 scale
        scrollView.contentSize = CGSize(width: screensize.width - 40, height: 1100)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view = background
        self.view.addSubview(scrollView)
        
        var constraints = [NSLayoutConstraint]()
        
        // Scroll View Constraints
        constraints.append(NSLayoutConstraint(item: scrollView, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leadingMargin, multiplier: 1.0, constant: 0))
        constraints.append(NSLayoutConstraint(item: scrollView, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .topMargin, multiplier: 1.0, constant: 0))
        constraints.append(NSLayoutConstraint(item: scrollView, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailingMargin, multiplier: 1.0, constant: 0))
        constraints.append(NSLayoutConstraint(item: scrollView, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottomMargin, multiplier: 1.0, constant: -20))
        
        // Label Constraints
        constraints.append(NSLayoutConstraint(item: topLabel, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0))
        
        scrollView.addSubview(topLabel)
        
        NSLayoutConstraint.activate(constraints)
        
        
    }
    
}
