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
        let scrollView = UIScrollView(frame: screensize)
        scrollView.backgroundColor = UIColor(red: 81.0 / 255.0, green: 100.0 / 255.0, blue: 192.0 / 255.0, alpha: 1.0)
        // Divide by 255 to convert from a 0-255 scale to a 0-1 scale
        scrollView.contentSize = CGSize(width: screensize.width - 40, height: 1100)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    let firstnameLabel: UILabel = {
        let label = UILabel()
        label.text = "First name: "
        label.textColor = UIColor.white
        label.font = UIFont(name: "Montserrat-Bold", size: 28.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view = background
        
        self.view.addSubview(scrollView)
        scrollView.addSubview(topLabel)
        scrollView.addSubview(firstnameLabel)
        
        var constraints = [NSLayoutConstraint]()
        // Scroll View Constraints
        constraints.append(NSLayoutConstraint(item: scrollView, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leadingMargin, multiplier: 1.0, constant: 0))
        constraints.append(NSLayoutConstraint(item: scrollView, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .topMargin, multiplier: 1.0, constant: 0))
        constraints.append(NSLayoutConstraint(item: scrollView, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailingMargin, multiplier: 1.0, constant: 0))
        constraints.append(NSLayoutConstraint(item: scrollView, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottomMargin, multiplier: 1.0, constant: -20))
        
        // Testing making label locations relative to other labels
        constraints.append(NSLayoutConstraint(item: firstnameLabel, attribute: .leading, relatedBy: .equal, toItem: self.scrollView, attribute: .leadingMargin, multiplier: 1.0, constant: 0))
        constraints.append(NSLayoutConstraint(item: firstnameLabel, attribute: .topMargin, relatedBy: .equal, toItem: self.topLabel, attribute: .topMarginœœœ, multiplier: 1.0, constant: 0))
        
        
        
        // Top Label Constraints
        topLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 0).isActive = true
        topLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 16.0).isActive = true
        
        

        
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
