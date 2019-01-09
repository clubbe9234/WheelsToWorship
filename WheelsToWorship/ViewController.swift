//
//  ViewController.swift
//  WheelsToWorship
//
//  Created by Caroline Lubbe on 11/5/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func whenButtonPressed(_ sender: UIButton) {
        if getUsernameInput().isEmpty == false {
            if getPasswordInput().isEmpty == false {
            performSegue(withIdentifier: "signInSegue", sender: sender)
            } else {
                let passwordAlert = UIAlertController(title: "Please enter your password", message: nil, preferredStyle: .alert)
                let okayActionTwo = UIAlertAction(title: "Okay", style: .default, handler: nil)
                passwordAlert.addAction(okayActionTwo)
                present(passwordAlert, animated: true, completion: nil)
            }
        } else {
            let usernameAlert = UIAlertController(title: "Please enter a username", message: nil, preferredStyle: .alert)
            let okayAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
            usernameAlert.addAction(okayAction)
            present(usernameAlert, animated: true, completion: nil)
        }
    }
    
    @IBAction func whenCreateButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "createAccountSegue", sender: sender)
        usernameTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "signInSegue" {
            let loggedInVC = segue.destination as! LoggedInViewController
            loggedInVC.title = "Hello \(getUsernameInput())"
        } else { }
    }
 
    func getUsernameInput() -> String {
        if let username = usernameTextField.text {
            return username
        } else {
            return ""
        }
    }
    
    func getPasswordInput() -> String {
        if let password = passwordTextField.text {
            return password
        } else {
            return ""
        }
    }
}

