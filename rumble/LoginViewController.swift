//
//  LoginViewController.swift
//  rumble
//
//  Created by Jacqueline Sloves on 7/24/16.
//  Copyright © 2016 Jacqueline Sloves. All rights reserved.
//

import UIKit
import Stormpath

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        spinner.hidden = true
    }
    
    @IBAction func loginButtonPressed(sender: AnyObject) {
        spinner.startAnimating()
        spinner.hidden = false
        
        Stormpath.sharedSession.login(usernameField.text!, password: passwordField.text!, completionHandler: openRumble)
    }
    
    func openRumble(success: Bool, error: NSError?) {
        spinner.hidden = true
        if let error = error {
            showAlert("Error", message: error.localizedDescription)
        }
        else {
            performSegueWithIdentifier("loginToArticleFeedSegue", sender: self)
        }
    }
    
    @IBAction func resetPasswordButtonPressed(sender: AnyObject) {
        Stormpath.sharedSession.resetPassword(usernameField.text!) { (success, error) -> Void in
            if let error = error {
                self.showAlert("Error", message: error.localizedDescription)
            } else {
                self.showAlert("Success", message: "Password reset email sent!")
            }
        }
    }
    
}

extension UIViewController {
    func showAlert(withTitle: String, message: String) {
        let alertController = UIAlertController(title: withTitle, message: message, preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alertController.addAction(OKAction)
        self.presentViewController(alertController, animated: true, completion: nil)
    }
}