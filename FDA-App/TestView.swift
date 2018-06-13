//
//  File.swift
//  FDA-App
//
//  Created by Fredrik Fatemi on 6/12/18.
//  Copyright © 2018 Fredrik Fatemi. All rights reserved.
//

import Foundation
import UIKit

class TestView {
    
    var delegate: AppDelegate!
    var viewc: UIViewController!
    var label: UILabel!
    
    
    init(useDelegate: AppDelegate) {
        delegate = useDelegate;
        
        delegate.window = UIWindow(frame: UIScreen.main.bounds)
        viewc = UIViewController()
        viewc.view = UIView();
        viewc.view.backgroundColor = UIColor.red
        
        label = UILabel()
        
        label.textAlignment = NSTextAlignment.center
        label.text = "Food and Drug Administration"
        label.backgroundColor = UIColor.white
        label.translatesAutoresizingMaskIntoConstraints = false
        
        delegate.window!.rootViewController = viewc
        viewc.view.addSubview(label)
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(NSLayoutConstraint(item: self.label, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: viewc.view, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: self.label, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: viewc.view, attribute: NSLayoutAttribute.centerY, multiplier: 1.0, constant: 0.0))
        
        NSLayoutConstraint.activate(constraints)
        
        
    }
    func showView() {
        
        delegate.window!.makeKeyAndVisible()
    }
}
