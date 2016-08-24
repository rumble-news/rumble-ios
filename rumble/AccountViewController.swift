//
//  AccountViewController.swift
//  rumble
//
//  Created by Jacqueline Sloves on 7/24/16.
//  Copyright © 2016 Jacqueline Sloves. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {
    
    let screenSize = UIScreen.mainScreen().bounds
    
    @IBOutlet weak var halfWidthContainerView: NSLayoutConstraint!
    
    @IBOutlet weak var headerUnderline: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewLayout()
        self.setupRumbleHeader()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupViewLayout(){
        let screenWidth = self.screenSize.width
        halfWidthContainerView.constant = screenWidth * 0.5
        
    
    }
    
}