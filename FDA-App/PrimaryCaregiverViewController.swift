//
//  PrimaryCaregiverViewController.swift
//  FDA-App
//
//  Created by Kevin Chung on 6/12/18.
//  Copyright © 2018 Fredrik Fatemi. All rights reserved.
//

import UIKit

class PrimaryCaregiverViewController: UIViewController {
    
    let background: UIView = {
        let bg = UIView()
        bg.backgroundColor = UIColor(red: 125.0 / 255.0, green: 193.0 / 255.0, blue: 66.0 / 255.0, alpha: 1.0)
        return bg
    }()
    
    let topLabel: UILabel = {
        let label = UILabel()
        label.text = "PRIMARY CAREGIVER"
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
        scrollView.addSubview(topLabel)
        // Top Label Constraints
        topLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16.0).isActive = true
        topLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 16.0).isActive = true
        /*
        constraints.append(NSLayoutConstraint(item: topLabel, attribute: .leading, relatedBy: .equal, toItem: scrollView, attribute: .leadingMargin, multiplier: 1.0, constant: 8))
        constraints.append(NSLayoutConstraint(item: topLabel, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1.0, constant: 8))
        constraints.append(NSLayoutConstraint(item: topLabel, attribute: .trailing, relatedBy: .equal, toItem: scrollView, attribute: .trailingMargin, multiplier: 1.0, constant: -8))
        constraints.append(NSLayoutConstraint(item: topLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 48))
        */
        NSLayoutConstraint.activate(constraints)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
