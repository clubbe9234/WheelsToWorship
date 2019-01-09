//
//  DriverViewController.swift
//  WheelsToWorship
//
//  Created by Caroline Lubbe on 11/19/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class DriverViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var makeAndModelTextField: UITextField!
    
    var driver: Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let approvedOrDeniedVC = segue.destination as! ApprovedOrDeniedViewController
        let name = getNameInput()
        approvedOrDeniedVC.name = name
        let makeAndModel = getCarMakeAndModelInput()
        approvedOrDeniedVC.makeAndModel = makeAndModel
        approvedOrDeniedVC.driver = driver
        nameTextField.resignFirstResponder()
        makeAndModelTextField.resignFirstResponder()
        
    }
    
    func getNameInput() -> String {
        if let driverName = nameTextField.text {
            return driverName
        } else {
            return ""
        }
    }
    
    func getCarMakeAndModelInput() -> String {
        if let carMakeAndModel = makeAndModelTextField.text {
            return carMakeAndModel
        } else {
            return ""
        }
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
