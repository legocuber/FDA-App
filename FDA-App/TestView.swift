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
        viewc = PrimaryCaregiverViewController()

        delegate.window!.rootViewController = viewc
<<<<<<< HEAD

=======
        viewc.view.addSubview(label)
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(NSLayoutConstraint(item: self.label, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: viewc.view, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: self.label, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: viewc.view, attribute: NSLayoutAttribute.centerY, multiplier: 1.0, constant: 0.0))
        
        NSLayoutConstraint.activate(constraints)
        
>>>>>>> b708e8a7ccfafec7e7197776d28d025242b0ae66
        
    }
    func showView() {
        
        delegate.window!.makeKeyAndVisible()
    }
}
