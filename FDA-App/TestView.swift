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

        
    }
    func showView() {
        
        delegate.window!.makeKeyAndVisible()
    }
}
