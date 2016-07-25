//
//  RegistrationViewController.swift
//  rumble
//
//  Created by Jacqueline Sloves on 7/24/16.
//  Copyright © 2016 Jacqueline Sloves. All rights reserved.
//

import UIKit
import Stormpath

class RegistrationViewController: UIViewController {
    
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        spinner.hidden = true
    }
    
    @IBAction func registrationButtonPressed(sender: AnyObject) {
        spinner.startAnimating()
        spinner.hidden = false
        
        //TODO Authenticate User
        let newUser = RegistrationModel(email: usernameField.text!, password: passwordField.text!)
        newUser.givenName = firstNameField.text!
        newUser.surname = lastNameField.text!
        
        Stormpath.sharedSession.register(newUser) { (account, error) -> Void in
            if let error = error {
                self.spinner.hidden = true
                self.showAlert("Error", message: error.localizedDescription)
            } else {
                self.performSegueWithIdentifier("registrationToArticleFeedSegue", sender: nil)
            }
        }
    }
    
}