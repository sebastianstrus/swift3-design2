//
//  ViewController.swift
//  Design2
//
//  Created by Sebastian Strus on 2017-03-25.
//  Copyright © 2017 Sebastian Strus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var trailingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var loadingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var mainView: UIView!
    
    var menuShowing = false
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.borderWidth = 1
        imageView.layer.cornerRadius = 10
        
        mainView.layer.shadowOpacity = 1
        mainView.layer.shadowRadius = 10
        // Do any additional setup after loading the view, typically from a nib.
    }


    
    @IBAction func showMenu(_ sender: Any) {
        
        
        if menuShowing {
            loadingConstraint.constant = 0
            trailingConstraint.constant = 0
        }
        else {
            loadingConstraint.constant = 150
            trailingConstraint.constant = -150
        }
        UIView.animate(withDuration: 0.3, animations: {
            self.view.layoutIfNeeded()
        })
        menuShowing = !menuShowing
    }


}

