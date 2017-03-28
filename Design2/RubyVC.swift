//
//  RubyVC.swift
//  Design2
//
//  Created by Sebastian Strus on 2017-03-25.
//  Copyright © 2017 Sebastian Strus. All rights reserved.
//

import UIKit

class RubyVC: UIViewController {
    
    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UIImageView!
    
    @IBOutlet weak var startButton: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        bgImage.alpha = 0
        titleLabel.alpha = 0
        descLabel.alpha = 0
        startButton.alpha = 0
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1, animations: {
            self.bgImage.alpha = 0.6
        }) { (true) in
            self.showTitle()
        }
    }
    
    func showTitle(){
        UIView.animate(withDuration: 1, animations: {
            self.titleLabel.alpha = 1
        }, completion: { (true) in
            self.showLogo()
        })
        
    }
    
    func showLogo() {
        UIView.animate(withDuration: 1, animations: {
            self.descLabel.alpha = 1
        }) { (true) in
            self.showStartButton()
        }
    }
    
    func showStartButton() {
        UIView.animate(withDuration: 1) {
            self.startButton.alpha = 1
        }
    }



    
    



}
