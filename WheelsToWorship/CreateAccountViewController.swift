//
//  CreateAccountViewController.swift
//  WheelsToWorship
//
//  Created by Caroline Lubbe on 12/18/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var usernameTextfield: UITextField!
    @IBOutlet weak var createPasswordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func getUsernameInput() -> String {
        if let newUsername = usernameTextfield.text {
            return newUsername
        } else {
            return ""
        }
    }
    
    func getCreatePasswordInput() -> String {
        if let newPassword = createPasswordTextField.text {
            return newPassword
        } else {
            return ""
        }
    }
    
    func getConfirmPasswordInput() -> String {
        if let confirmedPassword = confirmPasswordTextField.text {
            return confirmedPassword
        } else {
            return ""
        }
    }
    
    func getEmailInput() -> String {
        if let email = emailTextField.text {
            return email
        } else {
            return ""
        }
    }
    
    func isValidEmail(testStr:String) -> Bool {
        let validEmailExample = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let validEmailTest = NSPredicate(format: "SELF MATCHES %@", validEmailExample)
        return validEmailTest.evaluate(with: testStr)
    }
    
    @IBAction func doneButtonPressed(_ sender: UIButton) {
        let emailAddress = getEmailInput()
        if isValidEmail(testStr: emailAddress) == false {
            let emailAlert = UIAlertController(title: nil, message: "Please enter a valid email.", preferredStyle: .alert)
            let okayActionOne = UIAlertAction(title: "Okay", style: .default, handler: nil)
            emailAlert.addAction(okayActionOne)
            present(emailAlert, animated: true, completion: nil)
        } else {
            let newUsername = getUsernameInput()
            if newUsername.isEmpty == true {
                let usernameAlert = UIAlertController(title: nil, message: "Please enter a username.", preferredStyle: .alert)
                let okayActionTwo = UIAlertAction(title: "Okay", style: .default, handler: nil)
                usernameAlert.addAction(okayActionTwo)
                present(usernameAlert, animated: true, completion: nil)
            } else {
                let newPassword = getCreatePasswordInput()
                if newPassword.isEmpty == true {
                    let newPasswordAlert = UIAlertController(title: nil, message: "Please enter a password.", preferredStyle: .alert)
                    let okayActionThree = UIAlertAction(title: "Okay", style: .default, handler: nil)
                    newPasswordAlert.addAction(okayActionThree)
                    present(newPasswordAlert, animated: true, completion: nil)
                } else {
                    let confirmedPassword = getConfirmPasswordInput()
                    if confirmedPassword != newPassword {
                        let matchingPasswordAlert = UIAlertController(title: nil, message: "Your passwords do not match.", preferredStyle: .alert)
                        let okayActionFour = UIAlertAction(title: "Okay", style: .default, handler: nil)
                        matchingPasswordAlert.addAction(okayActionFour)
                        present(matchingPasswordAlert, animated: true, completion: nil)
                    } else {
                        performSegue(withIdentifier: "accountCreatedSegue", sender: sender)
                    }
                }
            }
    }
        emailTextField.resignFirstResponder()
        usernameTextfield.resignFirstResponder()
        createPasswordTextField.resignFirstResponder()
        confirmPasswordTextField.resignFirstResponder()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
